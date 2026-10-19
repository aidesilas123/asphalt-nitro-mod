package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class r5 extends z5 {
    public static final f5 c = new f5();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f7977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f7978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f7979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f7980g;

    public r5(String str, Integer num, String str2, String str3, c1 c1Var) {
        super(c, c1Var);
        this.f7977d = str;
        this.f7978e = num;
        this.f7979f = str2;
        this.f7980g = str3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r5)) {
            return false;
        }
        r5 r5Var = (r5) obj;
        return c().equals(r5Var.c()) && i3.a(this.f7977d, r5Var.f7977d) && i3.a(this.f7978e, r5Var.f7978e) && i3.a(this.f7979f, r5Var.f7979f) && i3.a(this.f7980g, r5Var.f7980g);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = c().hashCode() * 37;
        String str = this.f7977d;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.f7978e;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        String str2 = this.f7979f;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.f7980g;
        int iHashCode5 = iHashCode4 + (str3 != null ? str3.hashCode() : 0);
        this.b = iHashCode5;
        return iHashCode5;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f7977d != null) {
            sb.append(", pkgVer=");
            sb.append(this.f7977d);
        }
        if (this.f7978e != null) {
            sb.append(", pkgRev=");
            sb.append(this.f7978e);
        }
        if (this.f7979f != null) {
            sb.append(", installer=");
            sb.append(this.f7979f);
        }
        if (this.f7980g != null) {
            sb.append(", store=");
            sb.append(this.f7980g);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "App{");
        sbReplace.append('}');
        return sbReplace.toString();
    }
}
