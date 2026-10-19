package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class WorkInitializer_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<u> {
    private final e.a.a<Executor> a;
    private final e.a.a<j0> b;
    private final e.a.a<v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.a<com.google.android.datatransport.runtime.p.b> f3054d;

    public WorkInitializer_Factory(e.a.a<Executor> aVar, e.a.a<j0> aVar2, e.a.a<v> aVar3, e.a.a<com.google.android.datatransport.runtime.p.b> aVar4) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f3054d = aVar4;
    }

    public static WorkInitializer_Factory create(e.a.a<Executor> aVar, e.a.a<j0> aVar2, e.a.a<v> aVar3, e.a.a<com.google.android.datatransport.runtime.p.b> aVar4) {
        return new WorkInitializer_Factory(aVar, aVar2, aVar3, aVar4);
    }

    public static u newInstance(Executor executor, j0 j0Var, v vVar, com.google.android.datatransport.runtime.p.b bVar) {
        return new u(executor, j0Var, vVar, bVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public u get() {
        return newInstance(this.a.get(), this.b.get(), this.c.get(), this.f3054d.get());
    }
}
