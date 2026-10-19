package com.google.common.math;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class Stats implements Serializable {
    private static final long serialVersionUID = 0;
    private final long a;
    private final double b;
    private final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f3928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final double f3929e;

    Stats(long j, double d2, double d3, double d4, double d5) {
        this.a = j;
        this.b = d2;
        this.c = d3;
        this.f3928d = d4;
        this.f3929e = d5;
    }

    static Stats f(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public static Stats fromByteArray(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return f(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static double meanOf(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext());
        double dDoubleValue = it.next().doubleValue();
        long j = 1;
        while (it.hasNext()) {
            double dDoubleValue2 = it.next().doubleValue();
            j++;
            dDoubleValue = (Doubles.isFinite(dDoubleValue2) && Doubles.isFinite(dDoubleValue)) ? dDoubleValue + ((dDoubleValue2 - dDoubleValue) / j) : c.g(dDoubleValue, dDoubleValue2);
        }
        return dDoubleValue;
    }

    public static double meanOf(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double dG = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            double d2 = dArr[i];
            dG = (Doubles.isFinite(d2) && Doubles.isFinite(dG)) ? dG + ((d2 - dG) / ((double) (i + 1))) : c.g(dG, d2);
        }
        return dG;
    }

    public static double meanOf(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        double dG = iArr[0];
        for (int i = 1; i < iArr.length; i++) {
            double d2 = iArr[i];
            dG = (Doubles.isFinite(d2) && Doubles.isFinite(dG)) ? dG + ((d2 - dG) / ((double) (i + 1))) : c.g(dG, d2);
        }
        return dG;
    }

    public static double meanOf(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        double dG = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            double d2 = jArr[i];
            dG = (Doubles.isFinite(d2) && Doubles.isFinite(dG)) ? dG + ((d2 - dG) / ((double) (i + 1))) : c.g(dG, d2);
        }
        return dG;
    }

    public static Stats of(Iterable<? extends Number> iterable) {
        c cVar = new c();
        cVar.b(iterable);
        return cVar.h();
    }

    public static Stats of(Iterator<? extends Number> it) {
        c cVar = new c();
        cVar.c(it);
        return cVar.h();
    }

    public static Stats of(double... dArr) {
        c cVar = new c();
        cVar.d(dArr);
        return cVar.h();
    }

    public static Stats of(int... iArr) {
        c cVar = new c();
        cVar.e(iArr);
        return cVar.h();
    }

    public static Stats of(long... jArr) {
        c cVar = new c();
        cVar.f(jArr);
        return cVar.h();
    }

    public long c() {
        return this.a;
    }

    public double d() {
        return Math.sqrt(e());
    }

    public double e() {
        Preconditions.checkState(this.a > 0);
        if (Double.isNaN(this.c)) {
            return Double.NaN;
        }
        if (this.a == 1) {
            return 0.0d;
        }
        return a.b(this.c) / c();
    }

    public boolean equals(Object obj) {
        if (obj == null || Stats.class != obj.getClass()) {
            return false;
        }
        Stats stats = (Stats) obj;
        return this.a == stats.a && Double.doubleToLongBits(this.b) == Double.doubleToLongBits(stats.b) && Double.doubleToLongBits(this.c) == Double.doubleToLongBits(stats.c) && Double.doubleToLongBits(this.f3928d) == Double.doubleToLongBits(stats.f3928d) && Double.doubleToLongBits(this.f3929e) == Double.doubleToLongBits(stats.f3929e);
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.a), Double.valueOf(this.b), Double.valueOf(this.c), Double.valueOf(this.f3928d), Double.valueOf(this.f3929e));
    }

    public String toString() {
        return c() > 0 ? MoreObjects.toStringHelper(this).c("count", this.a).a("mean", this.b).a("populationStandardDeviation", d()).a("min", this.f3928d).a("max", this.f3929e).toString() : MoreObjects.toStringHelper(this).c("count", this.a).toString();
    }
}
