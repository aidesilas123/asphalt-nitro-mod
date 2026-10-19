package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.IronSourceConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class h0 {
    private NetworkSettings a;
    private JSONObject b;
    private IronSource.AD_UNIT c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6127e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6128f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6129g;

    public h0(NetworkSettings networkSettings, JSONObject jSONObject, IronSource.AD_UNIT ad_unit) {
        this.a = networkSettings;
        this.b = jSONObject;
        int iOptInt = jSONObject.optInt("instanceType");
        this.f6128f = iOptInt;
        this.f6126d = iOptInt == 2;
        this.f6127e = jSONObject.optBoolean(IronSourceConstants.EARLY_INIT_FIELD);
        this.f6129g = jSONObject.optInt("maxAdsPerSession", 99);
        this.c = ad_unit;
    }

    public String a() {
        return this.a.getAdSourceNameForEvents();
    }

    public IronSource.AD_UNIT b() {
        return this.c;
    }

    public JSONObject c() {
        return this.b;
    }

    public int d() {
        return this.f6128f;
    }

    public int e() {
        return this.f6129g;
    }

    public String f() {
        return this.a.getProviderName();
    }

    public String g() {
        return this.a.getProviderTypeForReflection();
    }

    public NetworkSettings h() {
        return this.a;
    }

    public String i() {
        return this.a.getSubProviderId();
    }

    public boolean j() {
        return this.f6126d;
    }

    public boolean k() {
        return this.f6127e;
    }
}
