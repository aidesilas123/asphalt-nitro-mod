package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class UnsignedInteger extends Number implements Comparable<UnsignedInteger> {
    public static final UnsignedInteger a = fromIntBits(0);
    public static final UnsignedInteger b = fromIntBits(1);
    public static final UnsignedInteger c = fromIntBits(-1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3951d;

    private UnsignedInteger(int i) {
        this.f3951d = i & (-1);
    }

    public static UnsignedInteger fromIntBits(int i) {
        return new UnsignedInteger(i);
    }

    public static UnsignedInteger valueOf(long j) {
        Preconditions.checkArgument((4294967295L & j) == j, "value (%s) is outside the range for an unsigned integer value", j);
        return fromIntBits((int) j);
    }

    public static UnsignedInteger valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedInteger valueOf(String str, int i) {
        return fromIntBits(UnsignedInts.parseUnsignedInt(str, i));
    }

    public static UnsignedInteger valueOf(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        Preconditions.checkArgument(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, "value (%s) is outside the range for an unsigned integer value", bigInteger);
        return fromIntBits(bigInteger.intValue());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(UnsignedInteger unsignedInteger) {
        Preconditions.checkNotNull(unsignedInteger);
        return UnsignedInts.compare(this.f3951d, unsignedInteger.f3951d);
    }

    public String b(int i) {
        return UnsignedInts.toString(this.f3951d, i);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(Object obj) {
        return (obj instanceof UnsignedInteger) && this.f3951d == ((UnsignedInteger) obj).f3951d;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return longValue();
    }

    public int hashCode() {
        return this.f3951d;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.f3951d;
    }

    @Override // java.lang.Number
    public long longValue() {
        return UnsignedInts.toLong(this.f3951d);
    }

    public String toString() {
        return b(10);
    }
}
