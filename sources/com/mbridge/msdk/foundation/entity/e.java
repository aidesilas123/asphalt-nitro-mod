package com.mbridge.msdk.foundation.entity;

import java.util.Map;

/* JADX INFO: compiled from: DescExceptionData.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e {
    private String a;
    private int b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7066d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7068f;
    private Map<String, String> h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7067e = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7069g = false;

    public e(int i, String str) {
        this.b = 0;
        this.b = i;
        this.c = str;
        h();
    }

    public e(int i, String str, Map<String, String> map) {
        this.b = 0;
        this.b = i;
        this.c = str;
        this.h = map;
        h();
    }

    public e(int i, String str, boolean z) {
        this.b = 0;
        if (z) {
            if (i == 200) {
                this.b = 4;
            } else if (i == 201) {
                this.b = 7;
            } else if (i == 203) {
                this.b = 6;
            } else if (i == 205) {
                this.b = 5;
            }
        }
        this.c = str;
        h();
    }

    private void h() {
        try {
            switch (this.b) {
                case 0:
                    this.a = "v3 params invalid";
                    break;
                case 1:
                    this.a = "v3 request error";
                    break;
                case 2:
                    this.a = "v3 time out";
                    break;
                case 3:
                    this.a = "v3 response error";
                    break;
                case 4:
                    this.a = "video download error";
                    break;
                case 5:
                    this.a = "big template download error";
                    break;
                case 6:
                    this.a = "template download error";
                    break;
                case 7:
                    this.a = "endcard template download error";
                    break;
                case 8:
                    this.a = "big template render error";
                    break;
                case 9:
                    this.a = "template render error";
                    break;
                case 10:
                    this.a = " load time out error";
                    break;
                case 11:
                    this.a = " no fill";
                    break;
                case 15:
                    this.a = " isready false error";
                    break;
                case 16:
                    this.a = "current unit is loading";
                    break;
                case 17:
                    this.a = "adn no offer fill";
                    break;
                case 18:
                    this.a = "app already install";
                    break;
                case 19:
                    this.a = "ad over cap ";
                    break;
                case 20:
                    this.a = "load exception";
                    break;
                case 21:
                    this.a = "candidate failed";
                    break;
            }
        } catch (Exception unused) {
            this.a = " unknown error";
        }
    }

    public final void a(int i) {
        this.f7067e = i;
    }

    public final void a(String str) {
        this.f7068f = str;
    }

    public final void a(boolean z) {
        this.f7069g = z;
    }

    public final boolean a() {
        return this.f7069g;
    }

    public final int b() {
        return this.f7067e;
    }

    public final void b(int i) {
        this.b = i;
    }

    public final void b(String str) {
        this.c = str;
    }

    public final String c() {
        return this.f7068f;
    }

    public final void c(int i) {
        this.f7066d = i;
    }

    public final int d() {
        return this.b;
    }

    public final String e() {
        return this.c;
    }

    public final int f() {
        return this.f7066d;
    }

    public final Map<String, String> g() {
        return this.h;
    }
}
