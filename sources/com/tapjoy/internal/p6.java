package com.tapjoy.internal;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class p6 extends z5 {
    public static final e6 c = new e6();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Boolean f7957d = Boolean.FALSE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f7958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f7959f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Integer f7960g;
    public final Integer h;
    public final List i;
    public final Integer j;
    public final Long k;
    public final Long l;
    public final Long m;
    public final Long n;
    public final String o;
    public final Integer p;
    public final Double q;
    public final Long r;
    public final Double s;
    public final String t;
    public final Boolean u;
    public final String v;
    public final Integer w;
    public final List x;
    public final Boolean y;

    public p6(Long l, String str, Integer num, Integer num2, j6 j6Var, Integer num3, Long l2, Long l3, Long l4, Long l5, String str2, Integer num4, Double d2, Long l6, Double d3, String str3, Boolean bool, String str4, Integer num5, j6 j6Var2, Boolean bool2, c1 c1Var) {
        super(c, c1Var);
        this.f7958e = l;
        this.f7959f = str;
        this.f7960g = num;
        this.h = num2;
        this.i = i3.a("pushes", (AbstractList) j6Var);
        this.j = num3;
        this.k = l2;
        this.l = l3;
        this.m = l5;
        this.n = l4;
        this.o = str2;
        this.p = num4;
        this.q = d2;
        this.r = l6;
        this.s = d3;
        this.t = str3;
        this.u = bool;
        this.v = str4;
        this.w = num5;
        this.x = i3.a("tags", (AbstractList) j6Var2);
        this.y = bool2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p6)) {
            return false;
        }
        p6 p6Var = (p6) obj;
        return c().equals(p6Var.c()) && i3.a(this.f7958e, p6Var.f7958e) && i3.a(this.f7959f, p6Var.f7959f) && i3.a(this.f7960g, p6Var.f7960g) && i3.a(this.h, p6Var.h) && this.i.equals(p6Var.i) && i3.a(this.j, p6Var.j) && i3.a(this.k, p6Var.k) && i3.a(this.l, p6Var.l) && i3.a(this.m, p6Var.m) && i3.a(this.n, p6Var.n) && i3.a(this.o, p6Var.o) && i3.a(this.p, p6Var.p) && i3.a(this.q, p6Var.q) && i3.a(this.r, p6Var.r) && i3.a(this.s, p6Var.s) && i3.a(this.t, p6Var.t) && i3.a(this.u, p6Var.u) && i3.a(this.v, p6Var.v) && i3.a(this.w, p6Var.w) && this.x.equals(p6Var.x) && i3.a(this.y, p6Var.y);
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = c().hashCode() * 37;
        Long l = this.f7958e;
        int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
        String str = this.f7959f;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.f7960g;
        int iHashCode4 = (iHashCode3 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.h;
        int iHashCode5 = (this.i.hashCode() + ((iHashCode4 + (num2 != null ? num2.hashCode() : 0)) * 37)) * 37;
        Integer num3 = this.j;
        int iHashCode6 = (iHashCode5 + (num3 != null ? num3.hashCode() : 0)) * 37;
        Long l2 = this.k;
        int iHashCode7 = (iHashCode6 + (l2 != null ? l2.hashCode() : 0)) * 37;
        Long l3 = this.l;
        int iHashCode8 = (iHashCode7 + (l3 != null ? l3.hashCode() : 0)) * 37;
        Long l4 = this.m;
        int iHashCode9 = (iHashCode8 + (l4 != null ? l4.hashCode() : 0)) * 37;
        Long l5 = this.n;
        int iHashCode10 = (iHashCode9 + (l5 != null ? l5.hashCode() : 0)) * 37;
        String str2 = this.o;
        int iHashCode11 = (iHashCode10 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Integer num4 = this.p;
        int iHashCode12 = (iHashCode11 + (num4 != null ? num4.hashCode() : 0)) * 37;
        Double d2 = this.q;
        int iHashCode13 = (iHashCode12 + (d2 != null ? d2.hashCode() : 0)) * 37;
        Long l6 = this.r;
        int iHashCode14 = (iHashCode13 + (l6 != null ? l6.hashCode() : 0)) * 37;
        Double d3 = this.s;
        int iHashCode15 = (iHashCode14 + (d3 != null ? d3.hashCode() : 0)) * 37;
        String str3 = this.t;
        int iHashCode16 = (iHashCode15 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Boolean bool = this.u;
        int iHashCode17 = (iHashCode16 + (bool != null ? bool.hashCode() : 0)) * 37;
        String str4 = this.v;
        int iHashCode18 = (iHashCode17 + (str4 != null ? str4.hashCode() : 0)) * 37;
        Integer num5 = this.w;
        int iHashCode19 = (this.x.hashCode() + ((iHashCode18 + (num5 != null ? num5.hashCode() : 0)) * 37)) * 37;
        Boolean bool2 = this.y;
        int iHashCode20 = iHashCode19 + (bool2 != null ? bool2.hashCode() : 0);
        this.b = iHashCode20;
        return iHashCode20;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f7958e != null) {
            sb.append(", installed=");
            sb.append(this.f7958e);
        }
        if (this.f7959f != null) {
            sb.append(", referrer=");
            sb.append(this.f7959f);
        }
        if (this.f7960g != null) {
            sb.append(", fq7=");
            sb.append(this.f7960g);
        }
        if (this.h != null) {
            sb.append(", fq30=");
            sb.append(this.h);
        }
        if (!this.i.isEmpty()) {
            sb.append(", pushes=");
            sb.append(this.i);
        }
        if (this.j != null) {
            sb.append(", sessionTotalCount=");
            sb.append(this.j);
        }
        if (this.k != null) {
            sb.append(", sessionTotalDuration=");
            sb.append(this.k);
        }
        if (this.m != null) {
            sb.append(", sessionStartTime=");
            sb.append(this.m);
        }
        if (this.l != null) {
            sb.append(", sessionLastTime=");
            sb.append(this.l);
        }
        if (this.n != null) {
            sb.append(", sessionLastDuration=");
            sb.append(this.n);
        }
        if (this.o != null) {
            sb.append(", purchaseCurrency=");
            sb.append(this.o);
        }
        if (this.p != null) {
            sb.append(", purchaseTotalCount=");
            sb.append(this.p);
        }
        if (this.q != null) {
            sb.append(", purchaseTotalPrice=");
            sb.append(this.q);
        }
        if (this.r != null) {
            sb.append(", purchaseLastTime=");
            sb.append(this.r);
        }
        if (this.s != null) {
            sb.append(", purchaseLastPrice=");
            sb.append(this.s);
        }
        if (this.t != null) {
            sb.append(", idfa=");
            sb.append(this.t);
        }
        if (this.u != null) {
            sb.append(", idfaOptout=");
            sb.append(this.u);
        }
        if (this.v != null) {
            sb.append(", userId=");
            sb.append(this.v);
        }
        if (this.w != null) {
            sb.append(", userLevel=");
            sb.append(this.w);
        }
        if (!this.x.isEmpty()) {
            sb.append(", tags=");
            sb.append(this.x);
        }
        if (this.y != null) {
            sb.append(", pushOptout=");
            sb.append(this.y);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "User{");
        sbReplace.append('}');
        return sbReplace.toString();
    }
}
