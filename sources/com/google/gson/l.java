package com.google.gson;

import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: compiled from: JsonPrimitive.java */
/* JADX INFO: loaded from: classes3.dex */
public final class l extends g {
    private final Object a;

    public l(Boolean bool) {
        Objects.requireNonNull(bool);
        this.a = bool;
    }

    public l(Number number) {
        Objects.requireNonNull(number);
        this.a = number;
    }

    public l(String str) {
        Objects.requireNonNull(str);
        this.a = str;
    }

    private static boolean z(l lVar) {
        Object obj = lVar.a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public boolean A() {
        return this.a instanceof Number;
    }

    public boolean B() {
        return this.a instanceof String;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (this.a == null) {
            return lVar.a == null;
        }
        if (z(this) && z(lVar)) {
            return v().longValue() == lVar.v().longValue();
        }
        Object obj2 = this.a;
        if (!(obj2 instanceof Number) || !(lVar.a instanceof Number)) {
            return obj2.equals(lVar.a);
        }
        double dDoubleValue = v().doubleValue();
        double dDoubleValue2 = lVar.v().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.a == null) {
            return 31;
        }
        if (z(this)) {
            jDoubleToLongBits = v().longValue();
        } else {
            Object obj = this.a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(v().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public boolean n() {
        return y() ? ((Boolean) this.a).booleanValue() : Boolean.parseBoolean(x());
    }

    public double o() {
        return A() ? v().doubleValue() : Double.parseDouble(x());
    }

    public int r() {
        return A() ? v().intValue() : Integer.parseInt(x());
    }

    public long t() {
        return A() ? v().longValue() : Long.parseLong(x());
    }

    public Number v() {
        Object obj = this.a;
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return new com.google.gson.internal.c((String) this.a);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public String x() {
        Object obj = this.a;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (A()) {
            return v().toString();
        }
        if (y()) {
            return ((Boolean) this.a).toString();
        }
        throw new AssertionError("Unexpected value type: " + this.a.getClass());
    }

    public boolean y() {
        return this.a instanceof Boolean;
    }
}
