package androidx.profileinstaller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import kotlin.UByte;
/* loaded from: classes.dex */
class Encoding {
    static final int SIZEOF_BYTE = 8;
    static final int UINT_16_SIZE = 2;
    static final int UINT_32_SIZE = 4;
    static final int UINT_8_SIZE = 1;

    private Encoding() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int utf8Length(String s) {
        return s.getBytes(StandardCharsets.UTF_8).length;
    }

    static void writeUInt(OutputStream os, long value, int numberOfBytes) throws IOException {
        byte[] bArr = new byte[numberOfBytes];
        for (int i = 0; i < numberOfBytes; i++) {
            bArr[i] = (byte) ((value >> (i * 8)) & 255);
        }
        os.write(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUInt8(OutputStream os, int value) throws IOException {
        writeUInt(os, value, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUInt16(OutputStream os, int value) throws IOException {
        writeUInt(os, value, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUInt32(OutputStream os, long value) throws IOException {
        writeUInt(os, value, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeString(OutputStream os, String s) throws IOException {
        os.write(s.getBytes(StandardCharsets.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int bitsToBytes(int numberOfBits) {
        return (((numberOfBits + 8) - 1) & (-8)) / 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] read(InputStream is, int length) throws IOException {
        byte[] bArr = new byte[length];
        int i = 0;
        while (i < length) {
            int read = is.read(bArr, i, length - i);
            if (read < 0) {
                throw error("Not enough bytes to read: " + length);
            }
            i += read;
        }
        return bArr;
    }

    static long readUInt(InputStream is, int numberOfBytes) throws IOException {
        byte[] read = read(is, numberOfBytes);
        long j = 0;
        for (int i = 0; i < numberOfBytes; i++) {
            j += (read[i] & UByte.MAX_VALUE) << (i * 8);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readUInt8(InputStream is) throws IOException {
        return (int) readUInt(is, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readUInt16(InputStream is) throws IOException {
        return (int) readUInt(is, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long readUInt32(InputStream is) throws IOException {
        return readUInt(is, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String readString(InputStream is, int size) throws IOException {
        return new String(read(is, size), StandardCharsets.UTF_8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
        if (r0.finished() == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005a, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
        throw error("Inflater did not finish");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] readCompressed(java.io.InputStream r8, int r9, int r10) throws java.io.IOException {
        /*
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r0.<init>()
            byte[] r1 = new byte[r10]
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]
            r3 = 0
            r4 = r3
            r5 = r4
        Le:
            boolean r6 = r0.finished()
            if (r6 != 0) goto L52
            boolean r6 = r0.needsDictionary()
            if (r6 != 0) goto L52
            if (r4 >= r9) goto L52
            int r6 = r8.read(r2)
            if (r6 < 0) goto L38
            r0.setInput(r2, r3, r6)
            int r7 = r10 - r5
            int r7 = r0.inflate(r1, r5, r7)     // Catch: java.util.zip.DataFormatException -> L2e
            int r5 = r5 + r7
            int r4 = r4 + r6
            goto Le
        L2e:
            r8 = move-exception
            java.lang.String r8 = r8.getMessage()
            java.lang.RuntimeException r8 = error(r8)
            throw r8
        L38:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r10 = "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "
            r8.<init>(r10)
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r9 = " bytes"
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            java.lang.RuntimeException r8 = error(r8)
            throw r8
        L52:
            if (r4 != r9) goto L62
            boolean r8 = r0.finished()
            if (r8 == 0) goto L5b
            return r1
        L5b:
            java.lang.String r8 = "Inflater did not finish"
            java.lang.RuntimeException r8 = error(r8)
            throw r8
        L62:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r10 = "Didn't read enough bytes during decompression. expected="
            r8.<init>(r10)
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r9 = " actual="
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.StringBuilder r8 = r8.append(r4)
            java.lang.String r8 = r8.toString()
            java.lang.RuntimeException r8 = error(r8)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.Encoding.readCompressed(java.io.InputStream, int, int):byte[]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeAll(InputStream is, OutputStream os) throws IOException {
        byte[] bArr = new byte[512];
        while (true) {
            int read = is.read(bArr);
            if (read <= 0) {
                return;
            }
            os.write(bArr, 0, read);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException error(String message) {
        return new IllegalStateException(message);
    }
}
