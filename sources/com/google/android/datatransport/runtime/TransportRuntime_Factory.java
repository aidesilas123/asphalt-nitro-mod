package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.t;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.u;

/* JADX INFO: loaded from: classes2.dex */
public final class TransportRuntime_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<TransportRuntime> {
    private final e.a.a<com.google.android.datatransport.runtime.time.a> a;
    private final e.a.a<com.google.android.datatransport.runtime.time.a> b;
    private final e.a.a<com.google.android.datatransport.runtime.scheduling.d> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.a<t> f3016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.a.a<u> f3017e;

    public TransportRuntime_Factory(e.a.a<com.google.android.datatransport.runtime.time.a> aVar, e.a.a<com.google.android.datatransport.runtime.time.a> aVar2, e.a.a<com.google.android.datatransport.runtime.scheduling.d> aVar3, e.a.a<t> aVar4, e.a.a<u> aVar5) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f3016d = aVar4;
        this.f3017e = aVar5;
    }

    public static TransportRuntime_Factory create(e.a.a<com.google.android.datatransport.runtime.time.a> aVar, e.a.a<com.google.android.datatransport.runtime.time.a> aVar2, e.a.a<com.google.android.datatransport.runtime.scheduling.d> aVar3, e.a.a<t> aVar4, e.a.a<u> aVar5) {
        return new TransportRuntime_Factory(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static TransportRuntime newInstance(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, com.google.android.datatransport.runtime.scheduling.d dVar, t tVar, u uVar) {
        return new TransportRuntime(aVar, aVar2, dVar, tVar, uVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TransportRuntime get() {
        return newInstance(this.a.get(), this.b.get(), this.c.get(), this.f3016d.get(), this.f3017e.get());
    }
}
