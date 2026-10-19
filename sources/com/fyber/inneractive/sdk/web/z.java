package com.fyber.inneractive.sdk.web;

import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class z {
    public static final byte[] b = new byte[0];
    public static final z c = new z();
    public final x<b0> a = new x<>(1048576);

    @RequiresApi(api = 21)
    public static a0 a(HttpURLConnection httpURLConnection, ByteBuffer byteBuffer) throws IOException {
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        String str;
        String strTrim;
        httpURLConnection.connect();
        for (int i = 0; i < 20; i++) {
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 300 || responseCode >= 400) {
                try {
                    inputStream = httpURLConnection.getInputStream();
                } catch (Throwable unused) {
                    inputStream = null;
                }
                try {
                    byte[] bArrArray = byteBuffer.array();
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        try {
                            int i2 = inputStream.read(bArrArray);
                            if (i2 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArrArray, 0, i2);
                        } catch (Throwable unused2) {
                        }
                    }
                } catch (Throwable unused3) {
                    byteArrayOutputStream = null;
                }
                com.fyber.inneractive.sdk.util.q.b(inputStream);
                httpURLConnection.disconnect();
                String contentType = httpURLConnection.getContentType();
                if (TextUtils.isEmpty(contentType)) {
                    str = "";
                    strTrim = str;
                } else {
                    String[] strArrSplit = contentType.split(";");
                    String strTrim2 = strArrSplit.length > 0 ? strArrSplit[0].trim() : "";
                    if (strArrSplit.length > 1) {
                        strTrim = strArrSplit[1].trim();
                        str = strTrim2;
                    } else {
                        str = strTrim2;
                        strTrim = "";
                    }
                }
                HashMap map = new HashMap();
                Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                if (headerFields != null) {
                    for (String str2 : headerFields.keySet()) {
                        List<String> list = headerFields.get(str2);
                        if (list != null && list.size() > 0) {
                            map.put(str2, list.get(0));
                        }
                    }
                }
                String responseMessage = httpURLConnection.getResponseMessage();
                if (TextUtils.isEmpty(responseMessage)) {
                    return null;
                }
                return new a0(byteArrayOutputStream == null ? b : byteArrayOutputStream.toByteArray(), map, str, strTrim, responseCode, responseMessage);
            }
            String headerField = httpURLConnection.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                return null;
            }
            httpURLConnection.disconnect();
            httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
            httpURLConnection.connect();
        }
        return null;
    }

    @RequiresApi(api = 21)
    public static void a(WebResourceRequest webResourceRequest, HttpURLConnection httpURLConnection) {
        if (webResourceRequest.getRequestHeaders() == null || webResourceRequest.getRequestHeaders().size() <= 0) {
            return;
        }
        for (String str : webResourceRequest.getRequestHeaders().keySet()) {
            if (str != null && webResourceRequest.getRequestHeaders().get(str) != null) {
                httpURLConnection.setRequestProperty(str, webResourceRequest.getRequestHeaders().get(str));
            }
        }
    }
}
