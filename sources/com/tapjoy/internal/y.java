package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class y extends z5 {
    public static final r c = new r();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f8022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r5 f8023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p6 f8024f;

    public y(f fVar, r5 r5Var, p6 p6Var, c1 c1Var) {
        super(c, c1Var);
        this.f8022d = fVar;
        this.f8023e = r5Var;
        this.f8024f = p6Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return c().equals(yVar.c()) && i3.a(this.f8022d, yVar.f8022d) && i3.a(this.f8023e, yVar.f8023e) && i3.a(this.f8024f, yVar.f8024f);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = c().hashCode() * 37;
        f fVar = this.f8022d;
        int iHashCode2 = (iHashCode + (fVar != null ? fVar.hashCode() : 0)) * 37;
        r5 r5Var = this.f8023e;
        int iHashCode3 = (iHashCode2 + (r5Var != null ? r5Var.hashCode() : 0)) * 37;
        p6 p6Var = this.f8024f;
        int iHashCode4 = iHashCode3 + (p6Var != null ? p6Var.hashCode() : 0);
        this.b = iHashCode4;
        return iHashCode4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f8022d != null) {
            sb.append(", info=");
            sb.append(this.f8022d);
        }
        if (this.f8023e != null) {
            sb.append(", app=");
            sb.append(this.f8023e);
        }
        if (this.f8024f != null) {
            sb.append(", user=");
            sb.append(this.f8024f);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "InfoSet{");
        sbReplace.append('}');
        return sbReplace.toString();
    }
}
