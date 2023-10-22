package com.hack.utils;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes2.dex */
public class FileUtils {
    private static final boolean DEBUG = false;
    private static final int FILE_BYTE_BUFFER = 4096;
    private static final String TAG = "FileUtils";

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return i;
            }
            i += read;
            outputStream.write(bArr, 0, read);
        }
    }

    public static int copyAndClose(InputStream inputStream, OutputStream outputStream) throws IOException {
        try {
            byte[] bArr = new byte[4096];
            int i = 0;
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return i;
                }
                i += read;
                outputStream.write(bArr, 0, read);
            }
        } finally {
            closeQuietly(inputStream);
            closeQuietly(outputStream);
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void extractAsset(Context context, String str, File file) throws IOException {
        file.getParentFile().mkdirs();
        copyAndClose(context.getAssets().open(str), new FileOutputStream(file));
    }

    public static void extractFile(File file, String str, File file2) throws IOException {
        ZipFile zipFile = null;
        try {
            ZipFile zipFile2 = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                String canonicalPath = file2.getCanonicalPath();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    if (nextElement.getName().startsWith(str) && !nextElement.isDirectory()) {
                        File file3 = new File(file2, nextElement.getName());
                        if (!file3.getCanonicalPath().startsWith(canonicalPath)) {
                            throw new IOException("security path " + nextElement.getName());
                        }
                        file3.getParentFile().mkdirs();
                        copyAndClose(zipFile2.getInputStream(nextElement), new FileOutputStream(file3));
                    }
                }
                try {
                    zipFile2.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th = th;
                zipFile = zipFile2;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean deleteQuietly(File file) {
        File[] listFiles;
        try {
            if (!file.isFile() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    deleteQuietly(file2);
                }
            }
            return file.delete();
        } catch (Exception unused) {
            return false;
        }
    }

    public static String readString(File file) {
        return readString(file, StandardCharsets.UTF_8);
    }

    public static String readString(File file, Charset charset) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            String readString = readString(fileInputStream, charset);
            fileInputStream.close();
            return readString;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String readString(InputStream inputStream, Charset charset) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            copy(inputStream, byteArrayOutputStream);
            if (charset != null) {
                return new String(byteArrayOutputStream.toByteArray(), charset);
            }
            return byteArrayOutputStream.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void writeString(File file, String str) throws IOException {
        FileOutputStream fileOutputStream = null;
        try {
            file.getParentFile().mkdirs();
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(str.getBytes());
                closeQuietly(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
