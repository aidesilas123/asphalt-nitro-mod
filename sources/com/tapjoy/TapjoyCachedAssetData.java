package com.tapjoy;

import com.vungle.ads.internal.model.AdPayload;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyCachedAssetData implements Serializable {
    public final long a;
    public long b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f7827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f7829f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f7830g;
    public String h;

    public TapjoyCachedAssetData(String str, String str2, long j) {
        this(str, str2, j, System.currentTimeMillis() / 1000);
    }

    public TapjoyCachedAssetData(String str, String str2, long j, long j2) {
        k(str);
        m(str2);
        this.b = j;
        this.a = j2;
        this.f7829f = j2 + j;
    }

    public static TapjoyCachedAssetData fromJSONObject(JSONObject jSONObject) {
        TapjoyCachedAssetData tapjoyCachedAssetData;
        try {
            tapjoyCachedAssetData = new TapjoyCachedAssetData(jSONObject.getString("assetURL"), jSONObject.getString("localFilePath"), jSONObject.getLong("timeToLive"), jSONObject.getLong("timestamp"));
        } catch (JSONException unused) {
            tapjoyCachedAssetData = null;
        }
        try {
            tapjoyCachedAssetData.n(jSONObject.optString("offerID"));
        } catch (JSONException unused2) {
            TapjoyLog.i("TapjoyCachedAssetData", "Can not build TapjoyVideoObject -- not enough data.");
        }
        return tapjoyCachedAssetData;
    }

    public static TapjoyCachedAssetData fromRawJSONString(String str) {
        try {
            return fromJSONObject(new JSONObject(str));
        } catch (JSONException unused) {
            TapjoyLog.i("TapjoyCachedAssetData", "Can not build TapjoyVideoObject -- error reading json string");
            return null;
        }
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.f7827d;
    }

    public String e() {
        return this.f7830g;
    }

    public String f() {
        return this.h;
    }

    public long g() {
        return this.f7829f;
    }

    public long h() {
        return this.b;
    }

    public long i() {
        return this.a;
    }

    public void j(long j) {
        this.b = j;
        this.f7829f = (System.currentTimeMillis() / 1000) + j;
    }

    public void k(String str) {
        this.c = str;
        this.f7830g = TapjoyUtil.determineMimeType(str);
    }

    public void m(String str) {
        this.f7827d = str;
        this.f7828e = AdPayload.FILE_SCHEME + str;
    }

    public void n(String str) {
        this.h = str;
    }

    public JSONObject p() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timestamp", i());
            jSONObject.put("timeToLive", h());
            jSONObject.put("assetURL", c());
            jSONObject.put("localFilePath", d());
            jSONObject.put("offerID", f());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public String q() {
        return p().toString();
    }

    public String toString() {
        return "\nURL=" + this.f7828e + "\nAssetURL=" + this.c + "\nMimeType=" + this.f7830g + "\nTimestamp=" + i() + "\nTimeOfDeath=" + this.f7829f + "\nTimeToLive=" + this.b + "\n";
    }
}
