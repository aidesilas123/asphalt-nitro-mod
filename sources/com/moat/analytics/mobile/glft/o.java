package com.moat.analytics.mobile.glft;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
class o {
    o() {
    }

    static com.moat.analytics.mobile.glft.a.b.a<String> a(String str) {
        InputStream inputStream = null;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() >= 400) {
                    return com.moat.analytics.mobile.glft.a.b.a.a();
                }
                InputStream inputStream2 = httpURLConnection.getInputStream();
                com.moat.analytics.mobile.glft.a.b.a<String> aVarA = com.moat.analytics.mobile.glft.a.b.a.a(a(inputStream2));
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException unused) {
                    }
                }
                return aVarA;
            } catch (IOException unused2) {
                com.moat.analytics.mobile.glft.a.b.a<String> aVarA2 = com.moat.analytics.mobile.glft.a.b.a.a();
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                return aVarA2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    private static String a(InputStream inputStream) throws IOException {
        char[] cArr = new char[256];
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, C.UTF8_NAME);
        int i = 0;
        do {
            int i2 = inputStreamReader.read(cArr, 0, 256);
            if (i2 <= 0) {
                break;
            }
            i += i2;
            sb.append(cArr, 0, i2);
        } while (i < 1024);
        return sb.toString();
    }
}
