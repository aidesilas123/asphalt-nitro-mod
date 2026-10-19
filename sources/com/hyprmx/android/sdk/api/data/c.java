package com.hyprmx.android.sdk.api.data;

import com.hyprmx.android.sdk.preload.Deserializable;
import com.hyprmx.android.sdk.preload.Serializable;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Serializable {
    public String a;
    public long b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f4477f;

    public static final class a implements Deserializable<c> {
        public static JSONObject a(c asset) throws JSONException {
            Intrinsics.checkNotNullParameter(asset, "asset");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Length", asset.b);
            jSONObject.put("media_download_failures", asset.c);
            jSONObject.put("LastCacheDate", asset.f4475d);
            jSONObject.put("CacheComplete", asset.f4476e);
            jSONObject.put("mediaAssetURL", asset.a);
            jSONObject.put("PreloadedOffers", JSONObject.wrap(asset.f4477f));
            return jSONObject;
        }
    }

    public c(String assetUrl) {
        Intrinsics.checkNotNullParameter(assetUrl, "assetUrl");
        this.a = assetUrl;
        this.f4477f = new HashSet(3);
    }

    @Override // com.hyprmx.android.sdk.preload.Serializable
    public final JSONObject serialize() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Length", this.b);
        jSONObject.put("media_download_failures", this.c);
        jSONObject.put("LastCacheDate", this.f4475d);
        jSONObject.put("CacheComplete", this.f4476e);
        jSONObject.put("mediaAssetURL", this.a);
        jSONObject.put("PreloadedOffers", JSONObject.wrap(this.f4477f));
        return jSONObject;
    }
}
