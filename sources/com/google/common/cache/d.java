package com.google.common.cache;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: CacheStats.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d {
    private final long a;
    private final long b;
    private final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f3528f;

    public d(long j, long j2, long j3, long j4, long j5, long j6) {
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j3 >= 0);
        Preconditions.checkArgument(j4 >= 0);
        Preconditions.checkArgument(j5 >= 0);
        Preconditions.checkArgument(j6 >= 0);
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.f3526d = j4;
        this.f3527e = j5;
        this.f3528f = j6;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.a == dVar.a && this.b == dVar.b && this.c == dVar.c && this.f3526d == dVar.f3526d && this.f3527e == dVar.f3527e && this.f3528f == dVar.f3528f;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.a), Long.valueOf(this.b), Long.valueOf(this.c), Long.valueOf(this.f3526d), Long.valueOf(this.f3527e), Long.valueOf(this.f3528f));
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).c("hitCount", this.a).c("missCount", this.b).c("loadSuccessCount", this.c).c("loadExceptionCount", this.f3526d).c("totalLoadTime", this.f3527e).c("evictionCount", this.f3528f).toString();
    }
}
