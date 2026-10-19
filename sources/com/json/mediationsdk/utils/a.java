package com.json.mediationsdk.utils;

import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private boolean a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6397g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;
    private boolean m;
    private ArrayList<String> n;
    private boolean o;
    private boolean p;
    private int q;
    private boolean r;

    public a() {
        this.b = "";
        this.c = "";
        this.f6394d = "";
        this.i = 0L;
        this.j = 0L;
        this.k = 0L;
        this.l = 0L;
        this.m = true;
        this.n = new ArrayList<>();
        this.f6397g = 0;
        this.o = false;
        this.p = false;
        this.q = 1;
    }

    a(String str, String str2, String str3, int i, int i2, long j, long j2, long j3, long j4, long j5, boolean z, int i3, boolean z2, boolean z3, boolean z4, int i4, boolean z5) {
        this.b = str;
        this.c = str2;
        this.f6394d = str3;
        this.f6395e = i;
        this.f6396f = i2;
        this.h = j;
        this.a = z4;
        this.i = j2;
        this.j = j3;
        this.k = j4;
        this.l = j5;
        this.m = z;
        this.f6397g = i3;
        this.n = new ArrayList<>();
        this.o = z2;
        this.p = z3;
        this.q = i4;
        this.r = z5;
    }

    public String a() {
        return this.b;
    }

    public String a(boolean z) {
        return z ? this.f6394d : this.c;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.n.add(str);
    }

    public long b() {
        return this.j;
    }

    public int c() {
        return this.f6396f;
    }

    public int d() {
        return this.q;
    }

    public boolean e() {
        return this.m;
    }

    public ArrayList<String> f() {
        return this.n;
    }

    public int g() {
        return this.f6395e;
    }

    public boolean h() {
        return this.a;
    }

    public int i() {
        return this.f6397g;
    }

    public long j() {
        return this.k;
    }

    public long k() {
        return this.i;
    }

    public long l() {
        return this.l;
    }

    public long m() {
        return this.h;
    }

    public boolean n() {
        return this.o;
    }

    public boolean o() {
        return this.p;
    }

    public boolean p() {
        return this.r;
    }
}
