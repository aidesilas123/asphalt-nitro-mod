package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class b0 extends z5 {
    public static final s c = new s();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f7862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f7863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Long f7864f;

    public b0(String str, Long l, Long l2, c1 c1Var) {
        super(c, c1Var);
        this.f7862d = str;
        this.f7863e = l;
        this.f7864f = l2;
    }

    public final i d() {
        i iVar = new i();
        iVar.c = this.f7862d;
        iVar.f7912d = this.f7864f;
        c1 c1VarC = c();
        if (c1VarC.f() > 0) {
            if (iVar.b == null) {
                n nVar = new n();
                iVar.a = nVar;
                iVar.b = new w5(nVar);
            }
            try {
                iVar.b.b(c1VarC);
            } catch (IOException unused) {
                throw new AssertionError();
            }
        }
        return iVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return c().equals(b0Var.c()) && this.f7862d.equals(b0Var.f7862d) && this.f7863e.equals(b0Var.f7863e) && i3.a(this.f7864f, b0Var.f7864f);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = (this.f7863e.hashCode() + ((this.f7862d.hashCode() + (c().hashCode() * 37)) * 37)) * 37;
        Long l = this.f7864f;
        int iHashCode2 = iHashCode + (l != null ? l.hashCode() : 0);
        this.b = iHashCode2;
        return iHashCode2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(", id=");
        sb.append(this.f7862d);
        sb.append(", received=");
        sb.append(this.f7863e);
        if (this.f7864f != null) {
            sb.append(", clicked=");
            sb.append(this.f7864f);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "Push{");
        sbReplace.append('}');
        return sbReplace.toString();
    }
}
