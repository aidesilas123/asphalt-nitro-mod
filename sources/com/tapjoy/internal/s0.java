package com.tapjoy.internal;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class s0 extends z5 {
    public static final l0 c = new l0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f7988d;

    public s0(j6 j6Var, c1 c1Var) {
        super(c, c1Var);
        this.f7988d = i3.a("pushes", (AbstractList) j6Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s0)) {
            return false;
        }
        s0 s0Var = (s0) obj;
        return c().equals(s0Var.c()) && this.f7988d.equals(s0Var.f7988d);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = (c().hashCode() * 37) + this.f7988d.hashCode();
        this.b = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f7988d.isEmpty()) {
            sb.append(", pushes=");
            sb.append(this.f7988d);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "PushList{");
        sbReplace.append('}');
        return sbReplace.toString();
    }
}
