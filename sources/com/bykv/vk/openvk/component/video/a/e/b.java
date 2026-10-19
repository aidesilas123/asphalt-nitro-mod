package com.bykv.vk.openvk.component.video.a.e;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: compiled from: VideoFilesUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    public static long a(String str, String str2) {
        File fileC = c(str, str2);
        if (fileC.exists()) {
            return fileC.length();
        }
        File fileB = b(str, str2);
        if (fileB.exists()) {
            return fileB.length();
        }
        return 0L;
    }

    public static void a(RandomAccessFile randomAccessFile, byte[] bArr, int i, int i2, String str) throws IOException {
        try {
            randomAccessFile.seek(i);
            randomAccessFile.write(bArr, 0, i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static File b(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2 + ".temp");
    }

    public static File c(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }
}
