package com.kidoz.sdk.api.server_connect;

import com.kidoz.sdk.api.server_connect.BaseAPIManager;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class StreamToStringConverter {
    protected static final int IO_BUFFER_SIZE = 4096;

    public static String readStream(BufferedInputStream bufferedInputStream, BaseAPIManager.RequestAsyncTask requestAsyncTask, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        boolean z2;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            bArr = new byte[4096];
            byteArrayOutputStream = new ByteArrayOutputStream(bufferedInputStream.available());
        } catch (IOException unused) {
            byteArrayOutputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            int i = bufferedInputStream.read(bArr);
            while (true) {
                z2 = false;
                if (i > 0) {
                    if (z && (requestAsyncTask == null || requestAsyncTask.isCancelled())) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                    i = bufferedInputStream.read(bArr);
                } else {
                    break;
                }
            }
            z2 = true;
            if (z2) {
                try {
                    bufferedInputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException unused2) {
                }
                return null;
            }
            String string = byteArrayOutputStream.toString();
            try {
                bufferedInputStream.close();
                byteArrayOutputStream.close();
            } catch (IOException unused3) {
            }
            return string;
        } catch (IOException unused4) {
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (IOException unused5) {
                    return null;
                }
            }
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (IOException unused6) {
                    throw th;
                }
            }
            if (byteArrayOutputStream2 != null) {
                byteArrayOutputStream2.close();
            }
            throw th;
        }
    }
}
