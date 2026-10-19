package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class UnsignedLong extends Number implements Comparable<UnsignedLong>, Serializable {
    public static final UnsignedLong a = new UnsignedLong(0);
    public static final UnsignedLong b = new UnsignedLong(1);
    public static final UnsignedLong c = new UnsignedLong(-1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3952d;

    private UnsignedLong(long j) {
        this.f3952d = j;
    }

    public static UnsignedLong fromLongBits(long j) {
        return new UnsignedLong(j);
    }

    public static UnsignedLong valueOf(long j) {
        Preconditions.checkArgument(j >= 0, "value (%s) is outside the range for an unsigned long value", j);
        return fromLongBits(j);
    }

    public static UnsignedLong valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedLong valueOf(String str, int i) {
        return fromLongBits(UnsignedLongs.parseUnsignedLong(str, i));
    }

    public static UnsignedLong valueOf(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        Preconditions.checkArgument(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return fromLongBits(bigInteger.longValue());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(UnsignedLong unsignedLong) {
        Preconditions.checkNotNull(unsignedLong);
        return UnsignedLongs.compare(this.f3952d, unsignedLong.f3952d);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        long j = this.f3952d;
        if (j >= 0) {
            return j;
        }
        return ((j & 1) | (j >>> 1)) * 2.0d;
    }

    public boolean equals(Object obj) {
        return (obj instanceof UnsignedLong) && this.f3952d == ((UnsignedLong) obj).f3952d;
    }

    @Override // java.lang.Number
    public float floatValue() {
        long j = this.f3952d;
        if (j >= 0) {
            return j;
        }
        return ((j & 1) | (j >>> 1)) * 2.0f;
    }

    public int hashCode() {
        return Longs.hashCode(this.f3952d);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.f3952d;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.f3952d;
    }

    public String toString() {
        return UnsignedLongs.toString(this.f3952d);
    }
}
