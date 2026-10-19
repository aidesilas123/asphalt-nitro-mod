package kotlin.reflect.jvm.internal.impl.types;

import androidx.webkit.ProxyConfig;

/* JADX INFO: compiled from: TypeProjectionBase.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class h0 implements g0 {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return b() == g0Var.b() && c() == g0Var.c() && getType().equals(g0Var.getType());
    }

    public int hashCode() {
        int iHashCode = c().hashCode();
        if (TypeUtils.noExpectedType(getType())) {
            return (iHashCode * 31) + 19;
        }
        return (iHashCode * 31) + (b() ? 17 : getType().hashCode());
    }

    public String toString() {
        if (b()) {
            return ProxyConfig.MATCH_ALL_SCHEMES;
        }
        if (c() == Variance.INVARIANT) {
            return getType().toString();
        }
        return c() + " " + getType();
    }
}
