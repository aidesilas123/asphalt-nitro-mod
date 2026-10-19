package com.json;

/* JADX INFO: loaded from: classes2.dex */
public class na {
    private boolean a;
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private oa f6448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6450f;

    public static class b {
        private boolean a = true;
        private boolean b = false;
        private boolean c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private oa f6451d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f6452e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f6453f = 0;

        public b a(boolean z) {
            this.a = z;
            return this;
        }

        public b a(boolean z, int i) {
            this.c = z;
            this.f6453f = i;
            return this;
        }

        public b a(boolean z, oa oaVar, int i) {
            this.b = z;
            if (oaVar == null) {
                oaVar = oa.PER_DAY;
            }
            this.f6451d = oaVar;
            this.f6452e = i;
            return this;
        }

        public na a() {
            return new na(this.a, this.b, this.c, this.f6451d, this.f6452e, this.f6453f);
        }
    }

    private na(boolean z, boolean z2, boolean z3, oa oaVar, int i, int i2) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.f6448d = oaVar;
        this.f6449e = i;
        this.f6450f = i2;
    }

    public oa a() {
        return this.f6448d;
    }

    public int b() {
        return this.f6449e;
    }

    public int c() {
        return this.f6450f;
    }

    public boolean d() {
        return this.b;
    }

    public boolean e() {
        return this.a;
    }

    public boolean f() {
        return this.c;
    }
}
