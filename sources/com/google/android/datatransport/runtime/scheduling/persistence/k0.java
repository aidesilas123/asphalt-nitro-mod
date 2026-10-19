package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.g0;
import com.google.auto.value.AutoValue;

/* JADX INFO: compiled from: EventStoreConfig.java */
/* JADX INFO: loaded from: classes2.dex */
@AutoValue
abstract class k0 {
    static final k0 a = a().f(10485760).d(200).b(10000).c(604800000).e(81920).a();

    /* JADX INFO: compiled from: EventStoreConfig.java */
    @AutoValue.Builder
    static abstract class a {
        a() {
        }

        abstract k0 a();

        abstract a b(int i);

        abstract a c(long j);

        abstract a d(int i);

        abstract a e(int i);

        abstract a f(long j);
    }

    k0() {
    }

    static a a() {
        return new g0.b();
    }

    abstract int b();

    abstract long c();

    abstract int d();

    abstract int e();

    abstract long f();
}
