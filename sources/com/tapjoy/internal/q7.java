package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class q7 {
    public static final j4 a = new j4();
    public static final w4 b = new w4();
    public static final m5 c = new m5();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a6 f7969d = new a6();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final k6 f7970e = new k6();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final u6 f7971f = new u6();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final p2 f7972g = new p2();
    public static final c3 h = new c3();
    public static final m3 i = new m3();
    public final int j;
    public final Class k;
    public w3 l;

    public q7(int i2, Class cls) {
        this.j = i2;
        this.k = cls;
    }

    public int a(int i2, Object obj) {
        int iB = b(obj);
        if (this.j == 3) {
            iB += w5.a(iB);
        }
        return w5.a((i2 << 3) | 0) + iB;
    }

    public abstract int b(Object obj);

    public final q7 c() {
        w3 w3Var = this.l;
        if (w3Var != null) {
            return w3Var;
        }
        w3 w3Var2 = new w3(this, this.j);
        this.l = w3Var2;
        return w3Var2;
    }

    public abstract Object d(z7 z7Var);

    public void e(w5 w5Var, int i2, Object obj) {
        int i3 = this.j;
        w5Var.getClass();
        w5Var.e((i2 << 3) | s1.b(i3));
        if (this.j == 3) {
            w5Var.e(b(obj));
        }
        f(w5Var, obj);
    }

    public abstract void f(w5 w5Var, Object obj);
}
