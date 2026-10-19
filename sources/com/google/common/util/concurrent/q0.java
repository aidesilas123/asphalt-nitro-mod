package com.google.common.util.concurrent;

import com.google.common.util.concurrent.RateLimiter;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: SmoothRateLimiter.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class q0 extends RateLimiter {
    double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    double f4007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    double f4008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4009f;

    /* JADX INFO: compiled from: SmoothRateLimiter.java */
    static final class b extends q0 {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final double f4010g;

        b(RateLimiter.SleepingStopwatch sleepingStopwatch, double d2) {
            super(sleepingStopwatch);
            this.f4010g = d2;
        }

        @Override // com.google.common.util.concurrent.q0
        double h() {
            return this.f4008e;
        }

        @Override // com.google.common.util.concurrent.q0
        void i(double d2, double d3) {
            double d4 = this.f4007d;
            double d5 = this.f4010g * d2;
            this.f4007d = d5;
            if (d4 == Double.POSITIVE_INFINITY) {
                this.c = d5;
            } else {
                this.c = d4 != 0.0d ? (this.c * d5) / d4 : 0.0d;
            }
        }
    }

    /* JADX INFO: compiled from: SmoothRateLimiter.java */
    static final class c extends q0 {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f4011g;
        private double h;
        private double i;
        private double j;

        c(RateLimiter.SleepingStopwatch sleepingStopwatch, long j, TimeUnit timeUnit, double d2) {
            super(sleepingStopwatch);
            this.f4011g = timeUnit.toMicros(j);
            this.j = d2;
        }

        @Override // com.google.common.util.concurrent.q0
        double h() {
            return this.f4011g / this.f4007d;
        }

        @Override // com.google.common.util.concurrent.q0
        void i(double d2, double d3) {
            double d4 = this.f4007d;
            double d5 = this.j * d3;
            long j = this.f4011g;
            double d6 = (j * 0.5d) / d3;
            this.i = d6;
            double d7 = ((j * 2.0d) / (d3 + d5)) + d6;
            this.f4007d = d7;
            this.h = (d5 - d3) / (d7 - d6);
            if (d4 == Double.POSITIVE_INFINITY) {
                this.c = 0.0d;
                return;
            }
            if (d4 != 0.0d) {
                d7 = (this.c * d7) / d4;
            }
            this.c = d7;
        }
    }

    private q0(RateLimiter.SleepingStopwatch sleepingStopwatch) {
        super(sleepingStopwatch);
        this.f4009f = 0L;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    final double c() {
        return TimeUnit.SECONDS.toMicros(1L) / this.f4008e;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    final void d(double d2, long j) {
        j(j);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d2;
        this.f4008e = micros;
        i(d2, micros);
    }

    abstract double h();

    abstract void i(double d2, double d3);

    void j(long j) {
        if (j > this.f4009f) {
            this.c = Math.min(this.f4007d, this.c + ((j - r0) / h()));
            this.f4009f = j;
        }
    }
}
