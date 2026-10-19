package com.tapjoy.internal;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class k2 extends z5 {
    public static final y1 c = new y1();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f7932d;

    public k2(AbstractList abstractList, c1 c1Var) {
        super(c, c1Var);
        this.f7932d = i3.a("elements", abstractList);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k2)) {
            return false;
        }
        k2 k2Var = (k2) obj;
        return c().equals(k2Var.c()) && this.f7932d.equals(k2Var.f7932d);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = (c().hashCode() * 37) + this.f7932d.hashCode();
        this.b = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f7932d.isEmpty()) {
            sb.append(", elements=");
            sb.append(this.f7932d);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "StringList{");
        sbReplace.append('}');
        return sbReplace.toString();
    }
}
