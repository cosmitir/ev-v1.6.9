package com.easyvictory.cheto.utils;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.system.Os;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.UByte;
/* loaded from: classes.dex */
public class FileUtils {

    /* loaded from: classes.dex */
    public interface FileMode {
        public static final int MODE_755 = 493;
        public static final int MODE_IRGRP = 32;
        public static final int MODE_IROTH = 4;
        public static final int MODE_IRUSR = 256;
        public static final int MODE_ISGID = 1024;
        public static final int MODE_ISUID = 2048;
        public static final int MODE_ISVTX = 512;
        public static final int MODE_IWGRP = 16;
        public static final int MODE_IWOTH = 2;
        public static final int MODE_IWUSR = 128;
        public static final int MODE_IXGRP = 8;
        public static final int MODE_IXOTH = 1;
        public static final int MODE_IXUSR = 64;
    }

    private static boolean isValidExtFilenameChar(char c) {
        return (c == 0 || c == '/') ? false : true;
    }

    public static int count(File file) {
        String[] list;
        if (file.exists()) {
            if (file.isFile()) {
                return 1;
            }
            if (!file.isDirectory() || (list = file.list()) == null) {
                return 0;
            }
            return list.length;
        }
        return -1;
    }

    public static String getFilenameExt(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? "" : str.substring(lastIndexOf + 1);
    }

    public static File changeExt(File file, String str) {
        int lastIndexOf;
        String str2;
        String absolutePath = file.getAbsolutePath();
        if (getFilenameExt(absolutePath).equals(str)) {
            return file;
        }
        if (absolutePath.lastIndexOf(".") > 0) {
            str2 = absolutePath.substring(0, lastIndexOf + 1) + str;
        } else {
            str2 = absolutePath + "." + str;
        }
        return new File(str2);
    }

    public static boolean renameTo(File file, File file2) {
        return file.renameTo(file2);
    }

    public static String readToString(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = fileInputStream.read();
            if (read != -1) {
                byteArrayOutputStream.write(read);
            } else {
                return byteArrayOutputStream.toString();
            }
        }
    }

    public static Parcel readToParcel(File file) throws IOException {
        Parcel obtain = Parcel.obtain();
        byte[] byteArray = toByteArray(file);
        obtain.unmarshall(byteArray, 0, byteArray.length);
        obtain.setDataPosition(0);
        return obtain;
    }

    public static void chmod(String str, int i) throws Exception {
        try {
            Os.chmod(str, i);
        } catch (Exception unused) {
            Runtime.getRuntime().exec((new File(str).isDirectory() ? "chmod  -R " : "chmod ") + String.format("%o", Integer.valueOf(i)) + " " + str).waitFor();
        }
    }

    public static void createSymlink(String str, String str2) throws Exception {
        try {
            Os.link(str, str2);
        } catch (Throwable unused) {
            Runtime.getRuntime().exec("ln -s " + str + " " + str2).waitFor();
        }
    }

    public static boolean isSymlink(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static void writeParcelToFile(Parcel parcel, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(parcel.marshall());
        fileOutputStream.close();
    }

    public static void writeParcelToOutput(Parcel parcel, FileOutputStream fileOutputStream) throws IOException {
        fileOutputStream.write(parcel.marshall());
    }

    public static byte[] toByteArray(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return toByteArray(fileInputStream);
        } finally {
            closeQuietly(fileInputStream);
        }
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[100];
        while (true) {
            int read = inputStream.read(bArr, 0, 100);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static int deleteDir(File file) {
        boolean z;
        int i = 0;
        if (file.isDirectory()) {
            try {
                z = isSymlink(file);
            } catch (Exception unused) {
                z = false;
            }
            if (!z) {
                String[] list = file.list();
                int length = list.length;
                int i2 = 0;
                while (i < length) {
                    i2 += deleteDir(new File(file, list[i]));
                    i++;
                }
                i = i2;
            }
        }
        return file.delete() ? i + 1 : i;
    }

    public static int deleteDir(String str) {
        return deleteDir(new File(str));
    }

    public static void writeToFile(InputStream inputStream, File file) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr, 0, 1024);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.close();
                return;
            }
        }
    }

    public static void writeToFile(byte[] bArr, File file) throws IOException {
        FileChannel fileChannel;
        ReadableByteChannel readableByteChannel;
        FileOutputStream fileOutputStream = null;
        FileChannel fileChannel2 = null;
        fileOutputStream = null;
        try {
            readableByteChannel = Channels.newChannel(new ByteArrayInputStream(bArr));
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileChannel2 = fileOutputStream2.getChannel();
                    fileChannel2.transferFrom(readableByteChannel, 0L, bArr.length);
                    fileOutputStream2.close();
                    if (readableByteChannel != null) {
                        readableByteChannel.close();
                    }
                    if (fileChannel2 != null) {
                        fileChannel2.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    fileChannel = fileChannel2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (readableByteChannel != null) {
                        readableByteChannel.close();
                    }
                    if (fileChannel != null) {
                        fileChannel.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileChannel = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileChannel = null;
            readableByteChannel = null;
        }
    }

    public static void copyFile(InputStream inputStream, File file) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream2.write(bArr, 0, read);
                    } else {
                        fileOutputStream2.flush();
                        closeQuietly(inputStream);
                        closeQuietly(fileOutputStream2);
                        return;
                    }
                }
            } catch (Throwable unused) {
                fileOutputStream = fileOutputStream2;
                closeQuietly(inputStream);
                closeQuietly(fileOutputStream);
            }
        } catch (Throwable unused2) {
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    FileChannel channel = fileInputStream2.getChannel();
                    FileChannel channel2 = fileOutputStream.getChannel();
                    ByteBuffer allocate = ByteBuffer.allocate(1024);
                    while (true) {
                        allocate.clear();
                        if (channel.read(allocate) != -1) {
                            allocate.limit(allocate.position());
                            allocate.position(0);
                            channel2.write(allocate);
                        } else {
                            closeQuietly(fileInputStream2);
                            closeQuietly(fileOutputStream);
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    closeQuietly(fileInputStream);
                    closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static int peekInt(byte[] bArr, int i, ByteOrder byteOrder) {
        int i2;
        int i3;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            int i4 = i + 1;
            int i5 = i4 + 1;
            i2 = ((bArr[i] & UByte.MAX_VALUE) << 24) | ((bArr[i4] & UByte.MAX_VALUE) << 16) | ((bArr[i5] & UByte.MAX_VALUE) << 8);
            i3 = bArr[i5 + 1] & UByte.MAX_VALUE;
        } else {
            int i6 = i + 1;
            int i7 = i6 + 1;
            i2 = (bArr[i] & UByte.MAX_VALUE) | ((bArr[i6] & UByte.MAX_VALUE) << 8) | ((bArr[i7] & UByte.MAX_VALUE) << 16);
            i3 = (bArr[i7 + 1] & UByte.MAX_VALUE) << 24;
        }
        return i3 | i2;
    }

    public static boolean isValidExtFilename(String str) {
        return str != null && str.equals(buildValidExtFilename(str));
    }

    public static String buildValidExtFilename(String str) {
        if (TextUtils.isEmpty(str) || ".".equals(str) || "..".equals(str)) {
            return "(invalid)";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (isValidExtFilenameChar(charAt)) {
                sb.append(charAt);
            } else {
                sb.append('_');
            }
        }
        return sb.toString();
    }

    public static void mkdirs(File file) {
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static void mkdirs(String str) {
        mkdirs(new File(str));
    }

    public static boolean isExist(String str) {
        return new File(str).exists();
    }

    public static boolean canRead(String str) {
        return new File(str).canRead();
    }

    /* loaded from: classes.dex */
    public static class FileLock {
        private static FileLock singleton;
        private Map<String, FileLockCount> mRefCountMap = new ConcurrentHashMap();

        public static FileLock getInstance() {
            if (singleton == null) {
                singleton = new FileLock();
            }
            return singleton;
        }

        private int RefCntInc(String str, java.nio.channels.FileLock fileLock, RandomAccessFile randomAccessFile, FileChannel fileChannel) {
            if (this.mRefCountMap.containsKey(str)) {
                FileLockCount fileLockCount = this.mRefCountMap.get(str);
                int i = fileLockCount.mRefCount;
                fileLockCount.mRefCount = i + 1;
                return i;
            }
            this.mRefCountMap.put(str, new FileLockCount(fileLock, 1, randomAccessFile, fileChannel));
            return 1;
        }

        private int RefCntDec(String str) {
            if (this.mRefCountMap.containsKey(str)) {
                FileLockCount fileLockCount = this.mRefCountMap.get(str);
                int i = fileLockCount.mRefCount - 1;
                fileLockCount.mRefCount = i;
                if (i <= 0) {
                    this.mRefCountMap.remove(str);
                    return i;
                }
                return i;
            }
            return 0;
        }

        public boolean LockExclusive(File file) {
            if (file == null) {
                return false;
            }
            try {
                File file2 = new File(file.getParentFile().getAbsolutePath().concat("/lock"));
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2.getAbsolutePath(), "rw");
                FileChannel channel = randomAccessFile.getChannel();
                java.nio.channels.FileLock lock = channel.lock();
                if (lock.isValid()) {
                    RefCntInc(file2.getAbsolutePath(), lock, randomAccessFile, channel);
                    return true;
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }

        public void unLock(File file) {
            FileLockCount fileLockCount;
            File file2 = new File(file.getParentFile().getAbsolutePath().concat("/lock"));
            if (file2.exists() && this.mRefCountMap.containsKey(file2.getAbsolutePath()) && (fileLockCount = this.mRefCountMap.get(file2.getAbsolutePath())) != null) {
                java.nio.channels.FileLock fileLock = fileLockCount.mFileLock;
                RandomAccessFile randomAccessFile = fileLockCount.fOs;
                FileChannel fileChannel = fileLockCount.fChannel;
                try {
                    if (RefCntDec(file2.getAbsolutePath()) <= 0) {
                        if (fileLock != null && fileLock.isValid()) {
                            fileLock.release();
                        }
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        if (fileChannel != null) {
                            fileChannel.close();
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class FileLockCount {
            FileChannel fChannel;
            RandomAccessFile fOs;
            java.nio.channels.FileLock mFileLock;
            int mRefCount;

            FileLockCount(java.nio.channels.FileLock fileLock, int i, RandomAccessFile randomAccessFile, FileChannel fileChannel) {
                this.mFileLock = fileLock;
                this.mRefCount = i;
                this.fOs = randomAccessFile;
                this.fChannel = fileChannel;
            }
        }
    }

    private static String getDataColumn(Context context, Uri uri, String str, String[] strArr) {
        Cursor cursor = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_data"));
                        if (query != null) {
                            query.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    private static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    private static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
