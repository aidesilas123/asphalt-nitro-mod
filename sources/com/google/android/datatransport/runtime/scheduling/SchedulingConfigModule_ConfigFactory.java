package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.dagger.internal.Preconditions;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;

/* JADX INFO: loaded from: classes2.dex */
public final class SchedulingConfigModule_ConfigFactory implements com.google.android.datatransport.runtime.dagger.internal.b<SchedulerConfig> {
    private final e.a.a<com.google.android.datatransport.runtime.time.a> a;

    public SchedulingConfigModule_ConfigFactory(e.a.a<com.google.android.datatransport.runtime.time.a> aVar) {
        this.a = aVar;
    }

    public static SchedulerConfig config(com.google.android.datatransport.runtime.time.a aVar) {
        return (SchedulerConfig) Preconditions.checkNotNull(e.a(aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static SchedulingConfigModule_ConfigFactory create(e.a.a<com.google.android.datatransport.runtime.time.a> aVar) {
        return new SchedulingConfigModule_ConfigFactory(aVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SchedulerConfig get() {
        return config(this.a.get());
    }
}
