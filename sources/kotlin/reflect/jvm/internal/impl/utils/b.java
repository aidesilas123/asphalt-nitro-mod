package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: numbers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b {
    private final String a;
    private final int b;

    public b(String number, int i) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        this.a = number;
        this.b = i;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.areEqual(this.a, bVar.a) && this.b == bVar.b;
    }

    public int hashCode() {
        String str = this.a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.b;
    }

    public String toString() {
        return "NumberWithRadix(number=" + this.a + ", radix=" + this.b + ")";
    }
}
