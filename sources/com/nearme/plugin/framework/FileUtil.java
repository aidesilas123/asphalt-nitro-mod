package com.nearme.plugin.framework;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public class FileUtil {
    public static boolean copyFile(InputStream inputStream, String str) throws Throwable {
        Exception e2;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        FileOutputStream fileOutputStream2 = null;
        try {
            File file = new File(str);
            file.getParentFile().mkdirs();
            file.createNewFile();
            fileOutputStream = new FileOutputStream(file);
            try {
                try {
                    bArr = new byte[49152];
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream2 = fileOutputStream;
            }
        } catch (Exception e6) {
            e2 = e6;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                break;
            }
            fileOutputStream.write(bArr, 0, i);
            th = th;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            if (inputStream == null) {
                throw th;
            }
            try {
                inputStream.close();
                throw th;
            } catch (IOException e8) {
                e8.printStackTrace();
                throw th;
            }
        }
        fileOutputStream.flush();
        try {
            fileOutputStream.close();
        } catch (IOException e9) {
            e9.printStackTrace();
        }
        try {
            inputStream.close();
            return true;
        } catch (IOException e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public static boolean copyFile(String str, String str2) {
        try {
            return copyFile(new FileInputStream(new File(str)), str2);
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void safelyDeleteFile(File file) {
        if (file.exists()) {
            file.delete();
        }
    }

    public static void safelyDeleteFile(String str) {
        safelyDeleteFile(new File(str));
    }
}
