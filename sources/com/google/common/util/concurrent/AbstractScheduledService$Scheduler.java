package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractScheduledService$Scheduler {

    class a extends AbstractScheduledService$Scheduler {
        final /* synthetic */ long a;
        final /* synthetic */ long b;
        final /* synthetic */ TimeUnit c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(long j, long j2, TimeUnit timeUnit) {
            super(null);
            this.a = j;
            this.b = j2;
            this.c = timeUnit;
        }
    }

    class b extends AbstractScheduledService$Scheduler {
        final /* synthetic */ long a;
        final /* synthetic */ long b;
        final /* synthetic */ TimeUnit c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j, long j2, TimeUnit timeUnit) {
            super(null);
            this.a = j;
            this.b = j2;
            this.c = timeUnit;
        }
    }

    private AbstractScheduledService$Scheduler() {
    }

    /* synthetic */ AbstractScheduledService$Scheduler(o oVar) {
        this();
    }

    public static AbstractScheduledService$Scheduler newFixedDelaySchedule(long j, long j2, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        Preconditions.checkArgument(j2 > 0, "delay must be > 0, found %s", j2);
        return new a(j, j2, timeUnit);
    }

    public static AbstractScheduledService$Scheduler newFixedRateSchedule(long j, long j2, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        Preconditions.checkArgument(j2 > 0, "period must be > 0, found %s", j2);
        return new b(j, j2, timeUnit);
    }
}
