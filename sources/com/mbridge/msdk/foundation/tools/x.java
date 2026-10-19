package com.mbridge.msdk.foundation.tools;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.File;
import java.io.FileInputStream;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: SameFileMD5.java */
/* JADX INFO: loaded from: classes4.dex */
public class x {
    protected static char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    protected static MessageDigest b = null;
    private static String c = "SameFileMD5";

    static {
        b = null;
        try {
            b = MessageDigest.getInstance(SameMD5.TAG);
        } catch (NoSuchAlgorithmException e2) {
            System.err.println(x.class.getName() + "初始化失败，MessageDigest不支持MD5Util.");
            e2.printStackTrace();
        }
    }

    public static String a(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            b.update(fileInputStream.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, file.length()));
            byte[] bArrDigest = b.digest();
            String strA = a(bArrDigest, 0, bArrDigest.length);
            fileInputStream.close();
            return strA;
        } catch (Exception e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            aa.b(c, "FILE EXCEPTION", e);
            if (fileInputStream2 == null) {
                return "";
            }
            fileInputStream2.close();
            return "";
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
    }

    private static String a(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer(i2 * 2);
        int i3 = i2 + i;
        while (i < i3) {
            byte b2 = bArr[i];
            char[] cArr = a;
            char c2 = cArr[(b2 & 240) >> 4];
            char c3 = cArr[b2 & Ascii.SI];
            stringBuffer.append(c2);
            stringBuffer.append(c3);
            i++;
        }
        return stringBuffer.toString();
    }
}
