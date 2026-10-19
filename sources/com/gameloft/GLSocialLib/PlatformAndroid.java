package com.gameloft.GLSocialLib;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class PlatformAndroid {

    class a implements Callable<byte[]> {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] call() {
            try {
                ConsoleAndroidGLSocialLib.Log_Debug("PlatformAndroid: Downloading data from url: " + this.a);
                URLConnection uRLConnectionOpenConnection = new URL(this.a).openConnection();
                if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                    ConsoleAndroidGLSocialLib.Log_Major_Error("PlatformAndroid: Unable to open connection");
                    return null;
                }
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    int i = 0;
                    httpURLConnection.setAllowUserInteraction(false);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.connect();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != 200) {
                        ConsoleAndroidGLSocialLib.Log_Debug("PlatformAndroidL: response code diff than ok: " + responseCode);
                        throw new Exception();
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    int contentLength = httpURLConnection.getContentLength();
                    if (contentLength >= 0) {
                        byte[] bArr = new byte[contentLength];
                        do {
                            int i2 = inputStream.read(bArr, i, contentLength - i);
                            if (i2 <= 0) {
                                break;
                            }
                            i += i2;
                        } while (i < contentLength);
                        return bArr;
                    }
                    byte[] bArr2 = new byte[4096];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int i3 = inputStream.read(bArr2);
                        if (i3 <= 0) {
                            return byteArrayOutputStream.toByteArray();
                        }
                        byteArrayOutputStream.write(bArr2, 0, i3);
                    }
                } catch (Exception e2) {
                    ConsoleAndroidGLSocialLib.Log_Major_Error("PlatformAndroid: Unable to get input stream from URL. Exception: " + e2.toString());
                }
            } catch (Exception unused) {
            }
            return null;
        }
    }

    public static byte[] GetDataFromURL(String str) {
        a aVar = new a(str);
        try {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            byte[] bArr = (byte[]) executorServiceNewSingleThreadExecutor.submit(aVar).get();
            executorServiceNewSingleThreadExecutor.shutdown();
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static native void nativeInit();
}
