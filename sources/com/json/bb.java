package com.json;

import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.utils.a;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class bb {
    private ArrayList<Placement> a;
    private m0 b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6062f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6063g;
    private boolean h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private Placement n;
    private a o;
    private boolean p;

    public bb() {
        this.a = new ArrayList<>();
        this.b = new m0();
    }

    public bb(int i, boolean z, int i2, int i3, m0 m0Var, a aVar, int i4, boolean z2, boolean z3, long j, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.a = new ArrayList<>();
        this.c = i;
        this.f6060d = z;
        this.f6061e = i2;
        this.b = m0Var;
        this.f6062f = i3;
        this.o = aVar;
        this.f6063g = i4;
        this.p = z2;
        this.h = z3;
        this.i = j;
        this.j = z4;
        this.k = z5;
        this.l = z6;
        this.m = z7;
    }

    public Placement a() {
        for (Placement placement : this.a) {
            if (placement.getIsDefault()) {
                return placement;
            }
        }
        return this.n;
    }

    public Placement a(String str) {
        for (Placement placement : this.a) {
            if (placement.getPlacementName().equals(str)) {
                return placement;
            }
        }
        return null;
    }

    public void a(Placement placement) {
        if (placement != null) {
            this.a.add(placement);
            if (this.n == null || placement.isPlacementId(0)) {
                this.n = placement;
            }
        }
    }

    public int b() {
        return this.f6063g;
    }

    public int c() {
        return this.f6062f;
    }

    public boolean d() {
        return this.p;
    }

    public ArrayList<Placement> e() {
        return this.a;
    }

    public boolean f() {
        return this.j;
    }

    public int g() {
        return this.c;
    }

    public int h() {
        return this.f6061e;
    }

    public long i() {
        return TimeUnit.SECONDS.toMillis(this.f6061e);
    }

    public boolean j() {
        return this.f6060d;
    }

    public a k() {
        return this.o;
    }

    public boolean l() {
        return this.h;
    }

    public long m() {
        return this.i;
    }

    public m0 n() {
        return this.b;
    }

    public boolean o() {
        return this.m;
    }

    public boolean p() {
        return this.l;
    }

    public boolean q() {
        return this.k;
    }

    public String toString() {
        return "RewardedVideoConfigurations{parallelLoad=" + this.c + ", bidderExclusive=" + this.f6060d + '}';
    }
}
