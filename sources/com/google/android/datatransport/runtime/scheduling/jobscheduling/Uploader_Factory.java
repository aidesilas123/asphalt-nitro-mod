package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.persistence.i0;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class Uploader_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<t> {
    private final e.a.a<Context> a;
    private final e.a.a<com.google.android.datatransport.runtime.backends.e> b;
    private final e.a.a<j0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.a<v> f3050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.a.a<Executor> f3051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e.a.a<com.google.android.datatransport.runtime.p.b> f3052f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e.a.a<com.google.android.datatransport.runtime.time.a> f3053g;
    private final e.a.a<com.google.android.datatransport.runtime.time.a> h;
    private final e.a.a<i0> i;

    public Uploader_Factory(e.a.a<Context> aVar, e.a.a<com.google.android.datatransport.runtime.backends.e> aVar2, e.a.a<j0> aVar3, e.a.a<v> aVar4, e.a.a<Executor> aVar5, e.a.a<com.google.android.datatransport.runtime.p.b> aVar6, e.a.a<com.google.android.datatransport.runtime.time.a> aVar7, e.a.a<com.google.android.datatransport.runtime.time.a> aVar8, e.a.a<i0> aVar9) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f3050d = aVar4;
        this.f3051e = aVar5;
        this.f3052f = aVar6;
        this.f3053g = aVar7;
        this.h = aVar8;
        this.i = aVar9;
    }

    public static Uploader_Factory create(e.a.a<Context> aVar, e.a.a<com.google.android.datatransport.runtime.backends.e> aVar2, e.a.a<j0> aVar3, e.a.a<v> aVar4, e.a.a<Executor> aVar5, e.a.a<com.google.android.datatransport.runtime.p.b> aVar6, e.a.a<com.google.android.datatransport.runtime.time.a> aVar7, e.a.a<com.google.android.datatransport.runtime.time.a> aVar8, e.a.a<i0> aVar9) {
        return new Uploader_Factory(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    public static t newInstance(Context context, com.google.android.datatransport.runtime.backends.e eVar, j0 j0Var, v vVar, Executor executor, com.google.android.datatransport.runtime.p.b bVar, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, i0 i0Var) {
        return new t(context, eVar, j0Var, vVar, executor, bVar, aVar, aVar2, i0Var);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public t get() {
        return newInstance(this.a.get(), this.b.get(), this.c.get(), this.f3050d.get(), this.f3051e.get(), this.f3052f.get(), this.f3053g.get(), this.h.get(), this.i.get());
    }
}
