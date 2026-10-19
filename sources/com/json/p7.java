package com.json;

import com.json.mediationsdk.model.InterstitialPlacement;
import com.json.mediationsdk.utils.a;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class p7 {
    private ArrayList<InterstitialPlacement> a;
    private m0 b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6509d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6511f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f6512g;
    private boolean h;
    private boolean i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private InterstitialPlacement o;

    public p7() {
        this.a = new ArrayList<>();
        this.b = new m0();
    }

    public p7(int i, boolean z, int i2, m0 m0Var, a aVar, int i3, boolean z2, boolean z3, long j, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.a = new ArrayList<>();
        this.c = i;
        this.f6509d = z;
        this.f6510e = i2;
        this.b = m0Var;
        this.f6512g = aVar;
        this.k = z4;
        this.l = z5;
        this.f6511f = i3;
        this.h = z2;
        this.i = z3;
        this.j = j;
        this.m = z6;
        this.n = z7;
    }

    public InterstitialPlacement a() {
        for (InterstitialPlacement interstitialPlacement : this.a) {
            if (interstitialPlacement.getIsDefault()) {
                return interstitialPlacement;
            }
        }
        return this.o;
    }

    public InterstitialPlacement a(String str) {
        for (InterstitialPlacement interstitialPlacement : this.a) {
            if (interstitialPlacement.getPlacementName().equals(str)) {
                return interstitialPlacement;
            }
        }
        return null;
    }

    public void a(InterstitialPlacement interstitialPlacement) {
        if (interstitialPlacement != null) {
            this.a.add(interstitialPlacement);
            if (this.o == null || interstitialPlacement.isPlacementId(0)) {
                this.o = interstitialPlacement;
            }
        }
    }

    public int b() {
        return this.f6511f;
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.f6510e;
    }

    public long e() {
        return TimeUnit.SECONDS.toMillis(this.f6510e);
    }

    public boolean f() {
        return this.f6509d;
    }

    public a g() {
        return this.f6512g;
    }

    public boolean h() {
        return this.i;
    }

    public long i() {
        return this.j;
    }

    public m0 j() {
        return this.b;
    }

    public boolean k() {
        return this.h;
    }

    public boolean l() {
        return this.k;
    }

    public boolean m() {
        return this.n;
    }

    public boolean n() {
        return this.m;
    }

    public boolean o() {
        return this.l;
    }

    public String toString() {
        return "InterstitialConfigurations{parallelLoad=" + this.c + ", bidderExclusive=" + this.f6509d + '}';
    }
}
