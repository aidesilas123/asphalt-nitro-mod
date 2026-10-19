package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.DoubleCheck;

/* JADX INFO: loaded from: classes2.dex */
public final class SQLiteEventStore_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<m0> {
    private final e.a.a<com.google.android.datatransport.runtime.time.a> a;
    private final e.a.a<com.google.android.datatransport.runtime.time.a> b;
    private final e.a.a<k0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.a<n0> f3064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.a.a<String> f3065e;

    public SQLiteEventStore_Factory(e.a.a<com.google.android.datatransport.runtime.time.a> aVar, e.a.a<com.google.android.datatransport.runtime.time.a> aVar2, e.a.a<k0> aVar3, e.a.a<n0> aVar4, e.a.a<String> aVar5) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f3064d = aVar4;
        this.f3065e = aVar5;
    }

    public static SQLiteEventStore_Factory create(e.a.a<com.google.android.datatransport.runtime.time.a> aVar, e.a.a<com.google.android.datatransport.runtime.time.a> aVar2, e.a.a<k0> aVar3, e.a.a<n0> aVar4, e.a.a<String> aVar5) {
        return new SQLiteEventStore_Factory(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static m0 newInstance(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, Object obj, Object obj2, com.google.android.datatransport.runtime.o.a<String> aVar3) {
        return new m0(aVar, aVar2, (k0) obj, (n0) obj2, aVar3);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public m0 get() {
        return newInstance(this.a.get(), this.b.get(), this.c.get(), this.f3064d.get(), DoubleCheck.lazy(this.f3065e));
    }
}
