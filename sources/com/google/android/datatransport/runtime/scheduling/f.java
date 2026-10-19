package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.p;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.v;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;

/* JADX INFO: compiled from: SchedulingModule.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f {
    static v a(Context context, j0 j0Var, SchedulerConfig schedulerConfig, com.google.android.datatransport.runtime.time.a aVar) {
        return Build.VERSION.SDK_INT >= 21 ? new s(context, j0Var, schedulerConfig) : new p(context, j0Var, aVar, schedulerConfig);
    }
}
