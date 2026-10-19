package com.bytedance.sdk.openadsdk.core.g;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: ViewabilityVendor.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    private final String a;
    private final URL b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1538d;

    private j(String str, String str2, String str3, String str4) throws MalformedURLException {
        this.a = str2;
        this.b = new URL(str);
        this.c = str3;
        this.f1538d = str4;
    }

    public static j a(String str, String str2, String str3, String str4, String str5) {
        if (CampaignEx.KEY_OMID.equalsIgnoreCase(str) && !TextUtils.isEmpty(str2)) {
            try {
                return new j(str2, str3, str4, str5);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static j a(JSONObject jSONObject) {
        try {
            String strOptString = jSONObject.optString("apiFramework");
            String strOptString2 = jSONObject.optString("javascriptResourceUrl");
            if (CampaignEx.KEY_OMID.equalsIgnoreCase(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                return new j(strOptString2, jSONObject.optString("vendorKey"), jSONObject.optString("verificationParameters"), jSONObject.optString("verificationNotExecuted"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static Set<j> a(JSONArray jSONArray) {
        HashSet hashSet = new HashSet();
        if (jSONArray == null) {
            return hashSet;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                hashSet.add(a(jSONArray.getJSONObject(i)));
            } catch (Throwable unused) {
            }
        }
        return hashSet;
    }

    private boolean a(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.c;
    }

    public URL c() {
        return this.b;
    }

    public JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apiFramework", CampaignEx.KEY_OMID);
            jSONObject.put("javascriptResourceUrl", this.b.toString());
            if (!TextUtils.isEmpty(this.a)) {
                jSONObject.put("vendorKey", this.a);
            }
            if (!TextUtils.isEmpty(this.c)) {
                jSONObject.put("verificationParameters", this.c);
            }
            if (!TextUtils.isEmpty(this.f1538d)) {
                jSONObject.put("verificationNotExecuted", this.f1538d);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (a(this.a, jVar.a) && a(this.b, jVar.b) && a(this.c, jVar.c)) {
            return a(this.f1538d, jVar.f1538d);
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (((str != null ? str.hashCode() : 0) * 31) + this.b.hashCode()) * 31;
        String str2 = this.c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1538d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }
}
