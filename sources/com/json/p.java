package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.model.NetworkSettings;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class p {
    private IronSource.AD_UNIT a;
    private String b;
    private NetworkSettings c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JSONObject f6501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6502g;
    private int h;
    private String i;

    public p(IronSource.AD_UNIT ad_unit, String str, int i, JSONObject jSONObject, String str2, int i2, String str3, NetworkSettings networkSettings, int i3) {
        this.a = ad_unit;
        this.b = str;
        this.f6500e = i;
        this.f6501f = jSONObject;
        this.f6502g = str2;
        this.h = i2;
        this.i = str3;
        this.c = networkSettings;
        this.f6499d = i3;
    }

    public IronSource.AD_UNIT a() {
        return this.a;
    }

    public String b() {
        return this.i;
    }

    public String c() {
        return this.f6502g;
    }

    public int d() {
        return this.h;
    }

    public JSONObject e() {
        return this.f6501f;
    }

    public int f() {
        return this.f6499d;
    }

    public NetworkSettings g() {
        return this.c;
    }

    public int h() {
        return this.f6500e;
    }

    public String i() {
        return this.b;
    }
}
