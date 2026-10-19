package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends z5 {
    public static final l9 c = new l9();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f7896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f7897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f7898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f7899g;
    public final String h;
    public final String i;
    public final Integer j;
    public final Integer k;
    public final Integer l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;

    public f(String str, String str2, String str3, String str4, String str5, String str6, Integer num, Integer num2, Integer num3, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, c1 c1Var) {
        super(c, c1Var);
        this.f7896d = str;
        this.f7897e = str2;
        this.f7898f = str3;
        this.f7899g = str4;
        this.h = str5;
        this.i = str6;
        this.j = num;
        this.k = num2;
        this.l = num3;
        this.m = str7;
        this.n = str8;
        this.o = str9;
        this.p = str10;
        this.q = str11;
        this.r = str12;
        this.s = str13;
        this.t = str14;
        this.u = str15;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return c().equals(fVar.c()) && i3.a(this.f7896d, fVar.f7896d) && i3.a(this.f7897e, fVar.f7897e) && i3.a(this.f7898f, fVar.f7898f) && i3.a(this.f7899g, fVar.f7899g) && i3.a(this.h, fVar.h) && i3.a(this.i, fVar.i) && i3.a(this.j, fVar.j) && i3.a(this.k, fVar.k) && i3.a(this.l, fVar.l) && i3.a(this.m, fVar.m) && i3.a(this.n, fVar.n) && i3.a(this.o, fVar.o) && i3.a(this.p, fVar.p) && i3.a(this.q, fVar.q) && i3.a(this.r, fVar.r) && i3.a(this.s, fVar.s) && i3.a(this.t, fVar.t) && i3.a(this.u, fVar.u);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = c().hashCode() * 37;
        String str = this.f7896d;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.f7897e;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.f7898f;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.f7899g;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.h;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.i;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        Integer num = this.j;
        int iHashCode8 = (iHashCode7 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.k;
        int iHashCode9 = (iHashCode8 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.l;
        int iHashCode10 = (iHashCode9 + (num3 != null ? num3.hashCode() : 0)) * 37;
        String str7 = this.m;
        int iHashCode11 = (iHashCode10 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.n;
        int iHashCode12 = (iHashCode11 + (str8 != null ? str8.hashCode() : 0)) * 37;
        String str9 = this.o;
        int iHashCode13 = (iHashCode12 + (str9 != null ? str9.hashCode() : 0)) * 37;
        String str10 = this.p;
        int iHashCode14 = (iHashCode13 + (str10 != null ? str10.hashCode() : 0)) * 37;
        String str11 = this.q;
        int iHashCode15 = (iHashCode14 + (str11 != null ? str11.hashCode() : 0)) * 37;
        String str12 = this.r;
        int iHashCode16 = (iHashCode15 + (str12 != null ? str12.hashCode() : 0)) * 37;
        String str13 = this.s;
        int iHashCode17 = (iHashCode16 + (str13 != null ? str13.hashCode() : 0)) * 37;
        String str14 = this.t;
        int iHashCode18 = (iHashCode17 + (str14 != null ? str14.hashCode() : 0)) * 37;
        String str15 = this.u;
        int iHashCode19 = iHashCode18 + (str15 != null ? str15.hashCode() : 0);
        this.b = iHashCode19;
        return iHashCode19;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f7896d != null) {
            sb.append(", mac=");
            sb.append(this.f7896d);
        }
        if (this.f7897e != null) {
            sb.append(", deviceId=");
            sb.append(this.f7897e);
        }
        if (this.f7898f != null) {
            sb.append(", deviceMaker=");
            sb.append(this.f7898f);
        }
        if (this.f7899g != null) {
            sb.append(", deviceModel=");
            sb.append(this.f7899g);
        }
        if (this.h != null) {
            sb.append(", osName=");
            sb.append(this.h);
        }
        if (this.i != null) {
            sb.append(", osVer=");
            sb.append(this.i);
        }
        if (this.j != null) {
            sb.append(", displayD=");
            sb.append(this.j);
        }
        if (this.k != null) {
            sb.append(", displayW=");
            sb.append(this.k);
        }
        if (this.l != null) {
            sb.append(", displayH=");
            sb.append(this.l);
        }
        if (this.m != null) {
            sb.append(", locale=");
            sb.append(this.m);
        }
        if (this.n != null) {
            sb.append(", timezone=");
            sb.append(this.n);
        }
        if (this.o != null) {
            sb.append(", pkgId=");
            sb.append(this.o);
        }
        if (this.p != null) {
            sb.append(", pkgSign=");
            sb.append(this.p);
        }
        if (this.q != null) {
            sb.append(", sdk=");
            sb.append(this.q);
        }
        if (this.r != null) {
            sb.append(", countrySim=");
            sb.append(this.r);
        }
        if (this.s != null) {
            sb.append(", countryNet=");
            sb.append(this.s);
        }
        if (this.t != null) {
            sb.append(", imei=");
            sb.append(this.t);
        }
        if (this.u != null) {
            sb.append(", androidId=");
            sb.append(this.u);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "Info{");
        sbReplace.append('}');
        return sbReplace.toString();
    }
}
