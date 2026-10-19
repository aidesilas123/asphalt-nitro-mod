package com.json;

import com.json.mediationsdk.utils.d;

/* JADX INFO: loaded from: classes2.dex */
public class j0 {
    private q0 a;
    private nb b;
    private d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l0 f6160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ApplicationGeneralSettings f6161f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ApplicationExternalSettings f6162g;
    private PixelSettings h;
    private ApplicationAuctionSettings i;
    private String j;

    public j0() {
        this.a = new q0();
    }

    public j0(q0 q0Var, nb nbVar, d dVar, boolean z, l0 l0Var, ApplicationGeneralSettings applicationGeneralSettings, ApplicationExternalSettings applicationExternalSettings, PixelSettings pixelSettings, ApplicationAuctionSettings applicationAuctionSettings, String str) {
        this.a = q0Var;
        this.b = nbVar;
        this.c = dVar;
        this.f6159d = z;
        this.f6160e = l0Var;
        this.f6161f = applicationGeneralSettings;
        this.f6162g = applicationExternalSettings;
        this.h = pixelSettings;
        this.i = applicationAuctionSettings;
        this.j = str;
    }

    public String a() {
        return this.j;
    }

    public ApplicationAuctionSettings b() {
        return this.i;
    }

    public l0 c() {
        return this.f6160e;
    }

    public ApplicationExternalSettings d() {
        return this.f6162g;
    }

    public ApplicationGeneralSettings e() {
        return this.f6161f;
    }

    public boolean f() {
        return this.f6159d;
    }

    public q0 g() {
        return this.a;
    }

    public PixelSettings h() {
        return this.h;
    }

    public nb i() {
        return this.b;
    }

    public d j() {
        return this.c;
    }
}
