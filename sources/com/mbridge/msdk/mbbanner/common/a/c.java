package com.mbridge.msdk.mbbanner.common.a;

/* JADX INFO: compiled from: BannerUnitData.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private String a;
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7268d;

    public c(String str, String str2, int i, int i2) {
        this.a = "";
        this.b = "";
        this.c = 0;
        this.f7268d = 1;
        this.a = str;
        this.b = str2;
        this.c = i;
        this.f7268d = i2;
    }

    public final String a() {
        return this.b;
    }

    public final void a(int i) {
        this.c = i;
    }

    public final void a(String str) {
        this.b = str;
    }

    public final int b() {
        return this.c;
    }

    public final int c() {
        return this.f7268d;
    }
}
