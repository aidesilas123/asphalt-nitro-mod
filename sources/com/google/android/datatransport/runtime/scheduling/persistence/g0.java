package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.k0;

/* JADX INFO: compiled from: AutoValue_EventStoreConfig.java */
/* JADX INFO: loaded from: classes2.dex */
final class g0 extends k0 {
    private final long b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3068f;

    /* JADX INFO: compiled from: AutoValue_EventStoreConfig.java */
    static final class b extends k0.a {
        private Long a;
        private Integer b;
        private Integer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f3069d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Integer f3070e;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0.a
        k0 a() {
            String str = "";
            if (this.a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.b == null) {
                str = str + " loadBatchSize";
            }
            if (this.c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f3069d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f3070e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new g0(this.a.longValue(), this.b.intValue(), this.c.intValue(), this.f3069d.longValue(), this.f3070e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0.a
        k0.a b(int i) {
            this.c = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0.a
        k0.a c(long j) {
            this.f3069d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0.a
        k0.a d(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0.a
        k0.a e(int i) {
            this.f3070e = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0.a
        k0.a f(long j) {
            this.a = Long.valueOf(j);
            return this;
        }
    }

    private g0(long j, int i, int i2, long j2, int i3) {
        this.b = j;
        this.c = i;
        this.f3066d = i2;
        this.f3067e = j2;
        this.f3068f = i3;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0
    int b() {
        return this.f3066d;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0
    long c() {
        return this.f3067e;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0
    int d() {
        return this.c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0
    int e() {
        return this.f3068f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        return this.b == k0Var.f() && this.c == k0Var.d() && this.f3066d == k0Var.b() && this.f3067e == k0Var.c() && this.f3068f == k0Var.e();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.k0
    long f() {
        return this.b;
    }

    public int hashCode() {
        long j = this.b;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.c) * 1000003) ^ this.f3066d) * 1000003;
        long j2 = this.f3067e;
        return this.f3068f ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.b + ", loadBatchSize=" + this.c + ", criticalSectionEnterTimeoutMs=" + this.f3066d + ", eventCleanUpAge=" + this.f3067e + ", maxBlobByteSizePerRow=" + this.f3068f + "}";
    }
}
