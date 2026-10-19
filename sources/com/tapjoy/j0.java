package com.tapjoy;

import androidx.browser.trusted.sharing.ShareTarget;
import com.json.b4;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class j0 {
    public h0 a(String str, String str2, int i) {
        return b(str, str2, i, false, null, null, null);
    }

    public h0 b(String str, String str2, int i, boolean z, Map<String, String> map, String str3, String str4) {
        h0 h0Var = new h0();
        HttpURLConnection httpURLConnection = null;
        try {
            String str5 = str + str2;
            StringBuilder sb = new StringBuilder("http ");
            sb.append(i == 0 ? "get" : "post");
            sb.append(": ");
            sb.append(str5);
            TapjoyLog.i("TapjoyURLConnection", sb.toString());
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str5).openConnection();
            if (z) {
                try {
                    httpURLConnection2.setInstanceFollowRedirects(false);
                } catch (Exception e2) {
                    httpURLConnection = httpURLConnection2;
                    e = e2;
                    TapjoyLog.e("TapjoyURLConnection", "Exception: " + e.toString());
                    h0Var.a = 0;
                    if (httpURLConnection != null) {
                        try {
                            if (h0Var.f7843d == null) {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
                                StringBuilder sb2 = new StringBuilder();
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    sb2.append(line + '\n');
                                }
                                h0Var.f7843d = sb2.toString();
                            }
                        } catch (Exception e3) {
                            TapjoyLog.e("TapjoyURLConnection", "Exception trying to get error code/content: " + e3.toString());
                        }
                    }
                }
            }
            httpURLConnection2.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection2.setReadTimeout(30000);
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            if (i == 1) {
                httpURLConnection2.setRequestMethod("POST");
                if (str4 != null) {
                    TapjoyLog.i("TapjoyURLConnection", "Content-Type: " + str3);
                    TapjoyLog.i("TapjoyURLConnection", "Content:");
                    TapjoyLog.i("TapjoyURLConnection", str4);
                    httpURLConnection2.setRequestProperty(b4.I, str3);
                    httpURLConnection2.setRequestProperty("Connection", "close");
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setFixedLengthStreamingMode(str4.length());
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection2.getOutputStream());
                    outputStreamWriter.write(str4);
                    outputStreamWriter.close();
                }
            }
            httpURLConnection2.connect();
            h0Var.a = httpURLConnection2.getResponseCode();
            h0Var.c = httpURLConnection2.getHeaderFields();
            h0Var.f7845f = httpURLConnection2.getDate();
            h0Var.f7846g = httpURLConnection2.getExpiration();
            BufferedReader bufferedReader2 = z ? null : new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
            if (!z) {
                StringBuilder sb3 = new StringBuilder();
                while (true) {
                    String line2 = bufferedReader2.readLine();
                    if (line2 == null) {
                        break;
                    }
                    sb3.append(line2 + '\n');
                }
                h0Var.f7843d = sb3.toString();
            }
            if (h0Var.a == 302) {
                h0Var.f7844e = httpURLConnection2.getHeaderField("Location");
            }
            String headerField = httpURLConnection2.getHeaderField("content-length");
            if (headerField != null) {
                try {
                    h0Var.b = Integer.valueOf(headerField).intValue();
                } catch (Exception e4) {
                    TapjoyLog.e("TapjoyURLConnection", "Exception: " + e4.toString());
                }
            }
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
        } catch (Exception e5) {
            e = e5;
        }
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        TapjoyLog.i("TapjoyURLConnection", "response status: " + h0Var.a);
        StringBuilder sb4 = new StringBuilder("response size: ");
        String str6 = h0Var.f7843d;
        sb4.append(str6 != null ? str6.length() : 0);
        TapjoyLog.i("TapjoyURLConnection", sb4.toString());
        String str7 = h0Var.f7844e;
        if (str7 != null && str7.length() > 0) {
            TapjoyLog.i("TapjoyURLConnection", "redirectURL: " + h0Var.f7844e);
        }
        TapjoyLog.i("TapjoyURLConnection", "--------------------");
        return h0Var;
    }

    public h0 c(String str, Map<String, String> map) {
        return a(str, TapjoyUtil.convertURLParams(map, false), 0);
    }

    public h0 d(String str, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        return b(str, map != null ? TapjoyUtil.convertURLParams(map, false) : "", 1, false, map2, ShareTarget.ENCODING_TYPE_URL_ENCODED, TapjoyUtil.convertURLParams(map3, false));
    }
}
