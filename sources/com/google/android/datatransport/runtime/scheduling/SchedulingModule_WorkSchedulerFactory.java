package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.v;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;

/* JADX INFO: loaded from: classes2.dex */
public final class SchedulingModule_WorkSchedulerFactory implements com.google.android.datatransport.runtime.dagger.internal.b<v> {
    private final e.a.a<Context> a;
    private final e.a.a<j0> b;
    private final e.a.a<SchedulerConfig> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.a<com.google.android.datatransport.runtime.time.a> f3044d;

    public SchedulingModule_WorkSchedulerFactory(e.a.a<Context> aVar, e.a.a<j0> aVar2, e.a.a<SchedulerConfig> aVar3, e.a.a<com.google.android.datatransport.runtime.time.a> aVar4) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f3044d = aVar4;
    }

    public static SchedulingModule_WorkSchedulerFactory create(e.a.a<Context> aVar, e.a.a<j0> aVar2, e.a.a<SchedulerConfig> aVar3, e.a.a<com.google.android.datatransport.runtime.time.a> aVar4) {
        return new SchedulingModule_WorkSchedulerFactory(aVar, aVar2, aVar3, aVar4);
    }

    public static v workScheduler(Context context, j0 j0Var, SchedulerConfig schedulerConfig, com.google.android.datatransport.runtime.time.a aVar) {
        return (v) Preconditions.checkNotNull(f.a(context, j0Var, schedulerConfig, aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public v get() {
        return workScheduler(this.a.get(), this.b.get(), this.c.get(), this.f3044d.get());
    }
}
