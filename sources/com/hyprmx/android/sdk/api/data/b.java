package com.hyprmx.android.sdk.api.data;

import android.util.Base64;
import com.hyprmx.android.sdk.model.vast.a;
import com.hyprmx.android.sdk.preload.Serializable;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Serializable {
    public String a;
    public final com.hyprmx.android.sdk.preload.n b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f4473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4474g;
    public int h;

    public b(String adId, com.hyprmx.android.sdk.preload.n cacheManager) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(cacheManager, "cacheManager");
        this.a = adId;
        this.b = cacheManager;
    }

    public final com.hyprmx.android.sdk.model.vast.a a() {
        String str = this.f4472e;
        if (str == null) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 0);
        Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(vastJSONData, Base64.DEFAULT)");
        Charset charsetForName = Charset.forName(C.UTF8_NAME);
        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(\"UTF-8\")");
        String jsonString = new String(bArrDecode, charsetForName);
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        try {
            return a.C0291a.a(new JSONObject(jsonString));
        } catch (Exception e2) {
            HyprMXLog.e("Exception parsing JSON vast ad " + e2);
            return null;
        }
    }

    public final String b() {
        return this.f4473f;
    }

    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectPut = jSONObject.put("identifier", this.a).put("parsed", this.f4472e != null).putOpt("last_parse_date", this.f4471d).put("tag_parse_failures", this.h).put("tag_download_failures", this.f4474g).put("url", this.c);
        com.hyprmx.android.sdk.model.vast.a aVarA = a();
        JSONObject jSONObject2 = null;
        JSONObject jSONObjectPutOpt = jSONObjectPut.putOpt("dynamic_duration", aVarA != null ? Boxing.boxLong(aVarA.b.a / ((long) 1000)) : null);
        com.hyprmx.android.sdk.model.vast.a aVarA2 = a();
        JSONObject jSONObjectPutOpt2 = jSONObjectPutOpt.putOpt("dynamic_skip_seconds", aVarA2 != null ? Boxing.boxLong(aVarA2.b.b / ((long) 1000)) : null);
        com.hyprmx.android.sdk.model.vast.a aVarA3 = a();
        jSONObjectPutOpt2.putOpt("vast_click_through", aVarA3 != null ? aVarA3.a() : null);
        com.hyprmx.android.sdk.model.vast.a aVarA4 = a();
        ArrayList arrayListB = aVarA4 != null ? aVarA4.b() : null;
        if (arrayListB != null && (!arrayListB.isEmpty())) {
            jSONObject.put("vast_click_tracking", new JSONArray((Collection) arrayListB));
        }
        if (this.b.f(this.a) != null) {
            c cVarF = this.b.f(this.a);
            if (cVarF != null) {
                jSONObject2 = new JSONObject();
                jSONObject2.putOpt("last_cache_date", cVarF.f4475d).put("asset_complete", cVarF.f4476e).putOpt("asset_size", Long.valueOf(cVarF.b)).putOpt("asset_caching_failures", Integer.valueOf(cVarF.c));
            }
            Intrinsics.checkNotNullParameter(jSONObject, "<this>");
            if (jSONObject2 != null && jSONObject2.length() > 0) {
                Iterator<String> itKeys = jSONObject2.keys();
                Intrinsics.checkNotNullExpressionValue(itKeys, "jsonToAdd.keys()");
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject.put(next, jSONObject2.get(next));
                }
            }
        }
        return jSONObject;
    }

    public final String d() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("url", this.c).put("identifier", this.a).put("last_parse_date", this.f4471d).put("tag_parse_failures", this.h).put("tag_download_failures", this.f4474g).put("vastJSONString", this.f4472e).putOpt("mediaAssetURL", this.f4473f);
        c cVarF = this.b.f(this.a);
        if (cVarF != null) {
            jSONObject.put("media_download_failures", cVarF.c);
            jSONObject.put("mediaAssetURL", cVarF.a);
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "json.toString()");
        return string;
    }

    @Override // com.hyprmx.android.sdk.preload.Serializable
    public final JSONObject serialize() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("url", this.c).put("identifier", this.a).put("last_parse_date", this.f4471d).put("tag_parse_failures", this.h).put("tag_download_failures", this.f4474g).put("vastJSONString", this.f4472e).putOpt("mediaAssetURL", this.f4473f);
        return jSONObject;
    }
}
