package com.json;

import com.json.mediationsdk.utils.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class k1 {
    private m0 a;
    private int b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<m1> f6175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private m1 f6176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6177g;
    private int h;
    private a i;
    private boolean j;
    private boolean k;
    private long l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;

    public k1() {
        this.a = new m0();
        this.f6175e = new ArrayList<>();
    }

    public k1(int i, long j, boolean z, m0 m0Var, int i2, a aVar, int i3, boolean z2, boolean z3, long j2, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.f6175e = new ArrayList<>();
        this.b = i;
        this.c = j;
        this.f6174d = z;
        this.a = m0Var;
        this.f6177g = i2;
        this.h = i3;
        this.i = aVar;
        this.j = z2;
        this.k = z3;
        this.l = j2;
        this.m = z4;
        this.n = z5;
        this.o = z6;
        this.p = z7;
    }

    public int a() {
        return this.b;
    }

    public m1 a(String str) {
        for (m1 m1Var : this.f6175e) {
            if (m1Var.getPlacementName().equals(str)) {
                return m1Var;
            }
        }
        return null;
    }

    public void a(m1 m1Var) {
        if (m1Var != null) {
            this.f6175e.add(m1Var);
            if (this.f6176f == null || m1Var.isPlacementId(0)) {
                this.f6176f = m1Var;
            }
        }
    }

    public long b() {
        return this.c;
    }

    public boolean c() {
        return this.f6174d;
    }

    public a d() {
        return this.i;
    }

    public boolean e() {
        return this.k;
    }

    public long f() {
        return this.l;
    }

    public int g() {
        return this.h;
    }

    public m0 h() {
        return this.a;
    }

    public int i() {
        return this.f6177g;
    }

    public m1 j() {
        for (m1 m1Var : this.f6175e) {
            if (m1Var.getIsDefault()) {
                return m1Var;
            }
        }
        return this.f6176f;
    }

    public boolean k() {
        return this.j;
    }

    public boolean l() {
        return this.m;
    }

    public boolean m() {
        return this.p;
    }

    public boolean n() {
        return this.o;
    }

    public boolean o() {
        return this.n;
    }

    public String toString() {
        return "BannerConfigurations{parallelLoad=" + this.b + ", bidderExclusive=" + this.f6174d + '}';
    }
}
