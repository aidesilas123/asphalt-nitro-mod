package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.v;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultScheduler_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<c> {
    private final e.a.a<Executor> a;
    private final e.a.a<com.google.android.datatransport.runtime.backends.e> b;
    private final e.a.a<v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.a<j0> f3042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.a.a<com.google.android.datatransport.runtime.p.b> f3043e;

    public DefaultScheduler_Factory(e.a.a<Executor> aVar, e.a.a<com.google.android.datatransport.runtime.backends.e> aVar2, e.a.a<v> aVar3, e.a.a<j0> aVar4, e.a.a<com.google.android.datatransport.runtime.p.b> aVar5) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f3042d = aVar4;
        this.f3043e = aVar5;
    }

    public static DefaultScheduler_Factory create(e.a.a<Executor> aVar, e.a.a<com.google.android.datatransport.runtime.backends.e> aVar2, e.a.a<v> aVar3, e.a.a<j0> aVar4, e.a.a<com.google.android.datatransport.runtime.p.b> aVar5) {
        return new DefaultScheduler_Factory(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c newInstance(Executor executor, com.google.android.datatransport.runtime.backends.e eVar, v vVar, j0 j0Var, com.google.android.datatransport.runtime.p.b bVar) {
        return new c(executor, eVar, vVar, j0Var, bVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c get() {
        return newInstance(this.a.get(), this.b.get(), this.c.get(), this.f3042d.get(), this.f3043e.get());
    }
}
