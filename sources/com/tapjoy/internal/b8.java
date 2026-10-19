package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class b8 {
    public static final b8 a = new b8(0, 0, 0, 0.0d);
    public final long b;
    public final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f7870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f7871e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f7872f;

    public b8(long j, long j2, long j3, double d2) {
        this.b = j;
        this.c = j2;
        this.f7870d = j3;
        this.f7871e = d2;
        this.f7872f = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b8.class != obj.getClass()) {
            return false;
        }
        b8 b8Var = (b8) obj;
        return this.b == b8Var.b && this.c == b8Var.c && this.f7870d == b8Var.f7870d && this.f7871e == b8Var.f7871e && this.f7872f == b8Var.f7872f;
    }
}
