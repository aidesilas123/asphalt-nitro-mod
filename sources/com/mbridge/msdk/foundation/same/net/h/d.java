package com.mbridge.msdk.foundation.same.net.h;

import android.text.TextUtils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: CommonRequestParams.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d {
    public static String a = "a";
    public static String b = "d";
    public static String c = "e";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f7151d = "f";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f7152e = "g";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f7153f = "h";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f7154g = "i";
    public static String h = "coppa";
    private static final String i = "d";
    private Map<String, String> j = new LinkedHashMap();
    private Map<String, com.mbridge.msdk.foundation.same.net.d.a> k = new LinkedHashMap();

    public final String a() {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : this.j.entrySet()) {
                if (sb.length() > 0) {
                    sb.append('&');
                }
                sb.append(URLEncoder.encode(entry.getKey(), C.UTF8_NAME));
                sb.append(o2.i.b);
                sb.append(URLEncoder.encode(entry.getValue(), C.UTF8_NAME));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return sb.toString();
    }

    public final void a(String str) {
        this.j.remove(str);
        this.k.remove(str);
    }

    public final void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || str2 == null) {
            return;
        }
        this.j.put(str, str2);
    }

    public final JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, String> entry : this.j.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry.getKey(), C.UTF8_NAME), URLEncoder.encode(entry.getValue(), C.UTF8_NAME));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.d.a> entry2 : this.k.entrySet()) {
                jSONObject.put(URLEncoder.encode(entry2.getKey(), C.UTF8_NAME), URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), C.UTF8_NAME));
            }
        } catch (UnsupportedEncodingException unused) {
        } catch (JSONException e2) {
            aa.d(i, e2.getMessage());
        }
        return jSONObject;
    }

    public final Map<String, String> c() {
        return this.j;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(28);
        try {
            for (Map.Entry<String, String> entry : this.j.entrySet()) {
                if (sb.length() > 0) {
                    sb.append('&');
                }
                sb.append(URLEncoder.encode(entry.getKey(), C.UTF8_NAME));
                sb.append(b4.R);
                sb.append(URLEncoder.encode(entry.getValue(), C.UTF8_NAME));
            }
            for (Map.Entry<String, com.mbridge.msdk.foundation.same.net.d.a> entry2 : this.k.entrySet()) {
                if (sb.length() > 0) {
                    sb.append('&');
                }
                sb.append(URLEncoder.encode(entry2.getKey(), C.UTF8_NAME));
                sb.append(b4.R);
                sb.append(URLEncoder.encode("FILE_NAME_" + entry2.getValue().a().getName(), C.UTF8_NAME));
            }
        } catch (UnsupportedEncodingException e2) {
            aa.d(i, e2.getMessage());
        }
        return sb.toString();
    }
}
