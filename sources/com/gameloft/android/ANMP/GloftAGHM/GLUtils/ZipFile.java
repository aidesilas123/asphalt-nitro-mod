package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ZipFile {
    public static void extract(String str, String str2) {
        try {
            byte[] bArr = new byte[1024];
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(str));
            for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                String name = nextEntry.getName();
                File file = new File(name);
                if (file.getParent() == null && file.isDirectory()) {
                    break;
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str2 + "/" + name);
                while (true) {
                    int i = zipInputStream.read(bArr, 0, 1024);
                    if (i > -1) {
                        fileOutputStream.write(bArr, 0, i);
                    }
                }
                fileOutputStream.close();
                zipInputStream.closeEntry();
            }
            zipInputStream.close();
        } catch (Exception unused) {
        }
    }
}
