package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.util.concurrent.q0;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RateLimiter {
    private final SleepingStopwatch a;
    private volatile Object b;

    static abstract class SleepingStopwatch {

        class a extends SleepingStopwatch {
            final Stopwatch a = Stopwatch.createStarted();

            a() {
            }

            @Override // com.google.common.util.concurrent.RateLimiter.SleepingStopwatch
            protected long a() {
                return this.a.c(TimeUnit.MICROSECONDS);
            }
        }

        protected SleepingStopwatch() {
        }

        public static SleepingStopwatch createFromSystemTimer() {
            return new a();
        }

        protected abstract long a();
    }

    RateLimiter(SleepingStopwatch sleepingStopwatch) {
        this.a = (SleepingStopwatch) Preconditions.checkNotNull(sleepingStopwatch);
    }

    static RateLimiter a(double d2, long j, TimeUnit timeUnit, double d3, SleepingStopwatch sleepingStopwatch) {
        q0.c cVar = new q0.c(sleepingStopwatch, j, timeUnit, d3);
        cVar.g(d2);
        return cVar;
    }

    static RateLimiter b(double d2, SleepingStopwatch sleepingStopwatch) {
        q0.b bVar = new q0.b(sleepingStopwatch, 1.0d);
        bVar.g(d2);
        return bVar;
    }

    public static RateLimiter create(double d2) {
        return b(d2, SleepingStopwatch.createFromSystemTimer());
    }

    public static RateLimiter create(double d2, long j, TimeUnit timeUnit) {
        Preconditions.checkArgument(j >= 0, "warmupPeriod must not be negative: %s", j);
        return a(d2, j, timeUnit, 3.0d, SleepingStopwatch.createFromSystemTimer());
    }

    private Object f() {
        Object obj = this.b;
        if (obj == null) {
            synchronized (this) {
                obj = this.b;
                if (obj == null) {
                    obj = new Object();
                    this.b = obj;
                }
            }
        }
        return obj;
    }

    abstract double c();

    abstract void d(double d2, long j);

    public final double e() {
        double dC;
        synchronized (f()) {
            dC = c();
        }
        return dC;
    }

    public final void g(double d2) {
        Preconditions.checkArgument(d2 > 0.0d && !Double.isNaN(d2), "rate must be positive");
        synchronized (f()) {
            d(d2, this.a.a());
        }
    }

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(e()));
    }
}
