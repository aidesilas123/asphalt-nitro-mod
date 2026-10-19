package com.tapjoy.internal;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class r2 extends Number {
    public final String a;

    public r2(String str) {
        this.a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return number instanceof Integer ? intValue() == number.intValue() : number instanceof Long ? longValue() == number.longValue() : number instanceof Float ? Float.parseFloat(this.a) == number.floatValue() : number instanceof Double ? Double.parseDouble(this.a) == number.doubleValue() : this.a.equals(number.toString());
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.a);
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            try {
                return Integer.parseInt(this.a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.a);
            }
        } catch (NumberFormatException unused2) {
            return new BigInteger(this.a).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.a);
        } catch (NumberFormatException unused) {
            return new BigInteger(this.a).longValue();
        }
    }

    public final String toString() {
        return this.a;
    }
}
