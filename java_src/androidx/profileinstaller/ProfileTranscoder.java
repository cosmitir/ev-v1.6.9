package androidx.profileinstaller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
/* loaded from: classes.dex */
class ProfileTranscoder {
    private static final int HOT = 1;
    private static final int INLINE_CACHE_MEGAMORPHIC_ENCODING = 7;
    private static final int INLINE_CACHE_MISSING_TYPES_ENCODING = 6;
    static final byte[] MAGIC = {112, 114, 111, 0};
    private static final int POST_STARTUP = 4;
    private static final int STARTUP = 2;

    private ProfileTranscoder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] readHeader(InputStream is) throws IOException {
        byte[] bArr = MAGIC;
        if (!Arrays.equals(bArr, Encoding.read(is, bArr.length))) {
            throw Encoding.error("Invalid magic");
        }
        return Encoding.read(is, ProfileVersion.V010_P.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeHeader(OutputStream os, byte[] version) throws IOException {
        os.write(MAGIC);
        os.write(version);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean transcodeAndWriteBody(OutputStream os, byte[] desiredVersion, Map<String, DexProfileData> data) throws IOException {
        if (Arrays.equals(desiredVersion, ProfileVersion.V005_O)) {
            writeProfileForO(os, data);
            return true;
        } else if (Arrays.equals(desiredVersion, ProfileVersion.V001_N)) {
            writeProfileForN(os, data);
            return true;
        } else {
            return false;
        }
    }

    private static void writeProfileForN(OutputStream os, Map<String, DexProfileData> lines) throws IOException {
        Encoding.writeUInt16(os, lines.size());
        for (Map.Entry<String, DexProfileData> entry : lines.entrySet()) {
            String key = entry.getKey();
            DexProfileData value = entry.getValue();
            Encoding.writeUInt16(os, Encoding.utf8Length(key));
            Encoding.writeUInt16(os, value.methods.size());
            Encoding.writeUInt16(os, value.classes.size());
            Encoding.writeUInt32(os, value.dexChecksum);
            Encoding.writeString(os, key);
            for (Integer num : value.methods.keySet()) {
                Encoding.writeUInt16(os, num.intValue());
            }
            Iterator<Integer> it = value.classes.iterator();
            while (it.hasNext()) {
                Encoding.writeUInt16(os, it.next().intValue());
            }
        }
    }

    private static void writeProfileForO(OutputStream os, Map<String, DexProfileData> lines) throws IOException {
        Encoding.writeUInt8(os, lines.size());
        for (Map.Entry<String, DexProfileData> entry : lines.entrySet()) {
            String key = entry.getKey();
            DexProfileData value = entry.getValue();
            Encoding.writeUInt16(os, Encoding.utf8Length(key));
            Encoding.writeUInt16(os, value.classes.size());
            Encoding.writeUInt32(os, value.methods.size() * 4);
            Encoding.writeUInt32(os, value.dexChecksum);
            Encoding.writeString(os, key);
            for (Integer num : value.methods.keySet()) {
                Encoding.writeUInt16(os, num.intValue());
                Encoding.writeUInt16(os, 0);
            }
            Iterator<Integer> it = value.classes.iterator();
            while (it.hasNext()) {
                Encoding.writeUInt16(os, it.next().intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, DexProfileData> readProfile(InputStream is, byte[] version) throws IOException {
        if (!Arrays.equals(version, ProfileVersion.V010_P)) {
            throw Encoding.error("Unsupported version");
        }
        int readUInt8 = Encoding.readUInt8(is);
        byte[] readCompressed = Encoding.readCompressed(is, (int) Encoding.readUInt32(is), (int) Encoding.readUInt32(is));
        if (is.read() > 0) {
            throw Encoding.error("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(readCompressed);
        try {
            Map<String, DexProfileData> readUncompressedBody = readUncompressedBody(byteArrayInputStream, readUInt8);
            byteArrayInputStream.close();
            return readUncompressedBody;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static Map<String, DexProfileData> readUncompressedBody(InputStream is, int numberOfDexFiles) throws IOException {
        if (is.available() == 0) {
            return new HashMap();
        }
        DexProfileData[] dexProfileDataArr = new DexProfileData[numberOfDexFiles];
        for (int i = 0; i < numberOfDexFiles; i++) {
            int readUInt16 = Encoding.readUInt16(is);
            dexProfileDataArr[i] = new DexProfileData(Encoding.readString(is, readUInt16), Encoding.readUInt32(is), Encoding.readUInt16(is), (int) Encoding.readUInt32(is), (int) Encoding.readUInt32(is), new LinkedHashSet(), new LinkedHashMap());
        }
        HashMap hashMap = new HashMap(numberOfDexFiles);
        for (int i2 = 0; i2 < numberOfDexFiles; i2++) {
            DexProfileData dexProfileData = dexProfileDataArr[i2];
            readHotMethodRegion(is, dexProfileData);
            readClasses(is, dexProfileData);
            readMethodBitmap(is, dexProfileData);
            hashMap.put(dexProfileData.key, dexProfileData);
        }
        return hashMap;
    }

    private static void readHotMethodRegion(InputStream is, DexProfileData data) throws IOException {
        int available = is.available() - data.hotMethodRegionSize;
        int i = 0;
        while (is.available() > available) {
            i += Encoding.readUInt16(is);
            data.methods.put(Integer.valueOf(i), 1);
            for (int readUInt16 = Encoding.readUInt16(is); readUInt16 > 0; readUInt16--) {
                skipInlineCache(is);
            }
        }
        if (is.available() != available) {
            throw Encoding.error("Read too much data during profile line parse");
        }
    }

    private static void skipInlineCache(InputStream is) throws IOException {
        Encoding.readUInt16(is);
        int readUInt8 = Encoding.readUInt8(is);
        if (readUInt8 == 6 || readUInt8 == 7) {
            return;
        }
        while (readUInt8 > 0) {
            Encoding.readUInt8(is);
            for (int readUInt82 = Encoding.readUInt8(is); readUInt82 > 0; readUInt82--) {
                Encoding.readUInt16(is);
            }
            readUInt8--;
        }
    }

    private static void readClasses(InputStream is, DexProfileData data) throws IOException {
        int i = 0;
        for (int i2 = 0; i2 < data.classSetSize; i2++) {
            i += Encoding.readUInt16(is);
            data.classes.add(Integer.valueOf(i));
        }
    }

    private static void readMethodBitmap(InputStream is, DexProfileData data) throws IOException {
        BitSet valueOf = BitSet.valueOf(Encoding.read(is, Encoding.bitsToBytes(data.numMethodIds * 2)));
        for (int i = 0; i < data.numMethodIds; i++) {
            int readFlagsFromBitmap = readFlagsFromBitmap(valueOf, i, data.numMethodIds);
            if (readFlagsFromBitmap != 0) {
                Integer num = data.methods.get(Integer.valueOf(i));
                if (num == null) {
                    num = 0;
                }
                data.methods.put(Integer.valueOf(i), Integer.valueOf(readFlagsFromBitmap | num.intValue()));
            }
        }
    }

    private static int readFlagsFromBitmap(BitSet bs, int methodIndex, int numMethodIds) {
        int i = bs.get(methodFlagBitmapIndex(2, methodIndex, numMethodIds)) ? 2 : 0;
        return bs.get(methodFlagBitmapIndex(4, methodIndex, numMethodIds)) ? i | 4 : i;
    }

    private static int methodFlagBitmapIndex(int flag, int methodIndex, int numMethodIds) {
        if (flag != 1) {
            if (flag != 2) {
                if (flag == 4) {
                    return methodIndex + numMethodIds;
                }
                throw Encoding.error("Unexpected flag: " + flag);
            }
            return methodIndex;
        }
        throw Encoding.error("HOT methods are not stored in the bitmap");
    }
}
