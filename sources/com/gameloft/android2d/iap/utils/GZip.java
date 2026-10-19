package com.gameloft.android2d.iap.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class GZip {
    public static String Decompress(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 8192);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[8192];
        int i = 0;
        while (i != -1) {
            i = gZIPInputStream.read(bArr2, 0, 8192);
            if (i != -1) {
                byteArrayOutputStream.write(bArr2, 0, i);
            }
        }
        gZIPInputStream.close();
        byteArrayInputStream.close();
        return byteArrayOutputStream.toString();
    }
}
