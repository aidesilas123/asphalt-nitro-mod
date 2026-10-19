package com.gameloft.android2d.iap.utils;

import android.os.Bundle;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class IABRequestHandler {
    private static IABRequestHandler a;
    private int b = 10000;
    private String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2875d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2876e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2877f = 2;

    class a extends IABAsyncTask {
        d c;

        public a(d dVar) {
            this.c = null;
            this.c = dVar;
        }

        @Override // com.gameloft.android2d.iap.utils.IABAsyncTask
        protected Integer a(Bundle bundle) {
            Bundle bundleA = IABRequestHandler.this.a(bundle);
            d dVar = this.c;
            if (dVar != null) {
                dVar.a(bundleA);
            }
            return new Integer(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle a(Bundle bundle) {
        try {
            String string = bundle.getString("a1");
            String string2 = bundle.getString("a2");
            String string3 = bundle.getString("a7");
            int i = bundle.getInt("a3");
            if (string2 == null) {
                string2 = "";
            }
            HttpURLConnection httpURLConnectionH = h((i == 1 || i == 2 || TextUtils.isEmpty(string2)) ? new URL(string) : new URL(string + (string.contains("?") ? o2.i.c : "?") + string2), i);
            if (!TextUtils.isEmpty(string3)) {
                try {
                    JSONObject jSONObject = new JSONObject(string3);
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String string4 = itKeys.next().toString();
                        String string5 = jSONObject.getString(string4);
                        if (!TextUtils.isEmpty(string5)) {
                            httpURLConnectionH.setRequestProperty(string4, string5);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
            if ((i == 1 || i == 2) && !TextUtils.isEmpty(string2)) {
                httpURLConnectionH.setFixedLengthStreamingMode(string2.length());
                OutputStream outputStream = httpURLConnectionH.getOutputStream();
                outputStream.write(string2.getBytes(), 0, string2.length());
                outputStream.flush();
            }
            int responseCode = httpURLConnectionH.getResponseCode();
            bundle.clear();
            JSONObject jSONObject2 = new JSONObject();
            Map<String, List<String>> headerFields = httpURLConnectionH.getHeaderFields();
            if (headerFields != null) {
                for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
                    try {
                        if (entry.getKey() != null) {
                            Iterator<String> it = entry.getValue().iterator();
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append((Object) it.next());
                            while (it.hasNext()) {
                                stringBuffer.append(" ");
                                stringBuffer.append((Object) it.next());
                            }
                            jSONObject2.put(entry.getKey().toString(), stringBuffer.toString());
                        }
                    } catch (JSONException unused2) {
                    }
                }
            }
            bundle.putInt("a6", responseCode);
            bundle.putInt("a5", 2);
            if (responseCode == 200 || responseCode == 201) {
                String strConvertInputStreamToString = SUtils.convertInputStreamToString(httpURLConnectionH.getInputStream());
                bundle.putInt("a5", 1);
                bundle.putString("a4", TextUtils.isEmpty(strConvertInputStreamToString) ? "" : strConvertInputStreamToString);
            } else {
                String strConvertInputStreamToString2 = SUtils.convertInputStreamToString(httpURLConnectionH.getErrorStream());
                bundle.putString("a4", TextUtils.isEmpty(strConvertInputStreamToString2) ? "" : strConvertInputStreamToString2);
            }
            bundle.putString("a7", jSONObject2.toString());
        } catch (Exception e2) {
            bundle.clear();
            bundle.putInt("a5", -1);
            bundle.putString("a4", e2.getMessage());
        }
        return bundle;
    }

    public static IABRequestHandler getInstance() {
        if (a == null) {
            a = new IABRequestHandler();
        }
        return a;
    }

    private HttpURLConnection h(URL url, int i) {
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = i(url.toString()) ? (HttpsURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(g());
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            HttpURLConnection.setFollowRedirects(true);
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            if (i == 1) {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod("POST");
            } else if (i == 0) {
                httpURLConnection.setRequestMethod("GET");
            } else if (i == 2) {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod("PUT");
            }
        } catch (Exception unused) {
        }
        return httpURLConnection;
    }

    private boolean i(String str) {
        return str.indexOf("https") != -1;
    }

    public void b(String str, String str2, d dVar) {
        d(str, str2, null, dVar);
    }

    public void c(String str, String str2, String str3, int i, d dVar) {
        k(i);
        Bundle bundle = new Bundle();
        bundle.putString("a1", str);
        bundle.putString("a2", str2);
        bundle.putString("a7", str3);
        bundle.putInt("a3", 0);
        new a(dVar).b(bundle, null);
    }

    public void d(String str, String str2, String str3, d dVar) {
        c(str, str2, str3, 10000, dVar);
    }

    public String e(String str) {
        try {
            return URLEncoder.encode(str, C.UTF8_NAME);
        } catch (Exception unused) {
            return "";
        }
    }

    public String f() {
        return this.c;
    }

    int g() {
        return this.b;
    }

    public void j(String str) {
        this.c = str;
    }

    void k(int i) {
        this.b = i;
    }
}
