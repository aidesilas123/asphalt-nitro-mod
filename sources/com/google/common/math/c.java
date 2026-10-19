package com.google.common.math;

import com.google.common.primitives.Doubles;
import java.util.Iterator;

/* JADX INFO: compiled from: StatsAccumulator.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c {
    private long a = 0;
    private double b = 0.0d;
    private double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f3930d = Double.NaN;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f3931e = Double.NaN;

    static double g(double d2, double d3) {
        if (Doubles.isFinite(d2)) {
            return d3;
        }
        if (Doubles.isFinite(d3) || d2 == d3) {
            return d2;
        }
        return Double.NaN;
    }

    public void a(double d2) {
        long j = this.a;
        if (j == 0) {
            this.a = 1L;
            this.b = d2;
            this.f3930d = d2;
            this.f3931e = d2;
            if (Doubles.isFinite(d2)) {
                return;
            }
            this.c = Double.NaN;
            return;
        }
        this.a = j + 1;
        if (Doubles.isFinite(d2) && Doubles.isFinite(this.b)) {
            double d3 = this.b;
            double d4 = d2 - d3;
            double d5 = d3 + (d4 / this.a);
            this.b = d5;
            this.c += d4 * (d2 - d5);
        } else {
            this.b = g(this.b, d2);
            this.c = Double.NaN;
        }
        this.f3930d = Math.min(this.f3930d, d2);
        this.f3931e = Math.max(this.f3931e, d2);
    }

    public void b(Iterable<? extends Number> iterable) {
        Iterator<? extends Number> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next().doubleValue());
        }
    }

    public void c(Iterator<? extends Number> it) {
        while (it.hasNext()) {
            a(it.next().doubleValue());
        }
    }

    public void d(double... dArr) {
        for (double d2 : dArr) {
            a(d2);
        }
    }

    public void e(int... iArr) {
        for (int i : iArr) {
            a(i);
        }
    }

    public void f(long... jArr) {
        for (long j : jArr) {
            a(j);
        }
    }

    public Stats h() {
        return new Stats(this.a, this.b, this.c, this.f3930d, this.f3931e);
    }
}
