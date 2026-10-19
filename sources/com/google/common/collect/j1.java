package com.google.common.collect;

import com.facebook.internal.security.CertificateUtil;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: compiled from: GeneralRange.java */
/* JADX INFO: loaded from: classes3.dex */
final class j1<T> implements Serializable {
    private final Comparator<? super T> a;
    private final boolean b;
    private final T c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BoundType f3775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f3776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final T f3777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final BoundType f3778g;

    private j1(Comparator<? super T> comparator, boolean z, T t, BoundType boundType, boolean z2, T t2, BoundType boundType2) {
        this.a = (Comparator) Preconditions.checkNotNull(comparator);
        this.b = z;
        this.f3776e = z2;
        this.c = t;
        this.f3775d = (BoundType) Preconditions.checkNotNull(boundType);
        this.f3777f = t2;
        this.f3778g = (BoundType) Preconditions.checkNotNull(boundType2);
        if (z) {
            comparator.compare((Object) e2.a(t), (Object) e2.a(t));
        }
        if (z2) {
            comparator.compare((Object) e2.a(t2), (Object) e2.a(t2));
        }
        if (z && z2) {
            int iCompare = comparator.compare((Object) e2.a(t), (Object) e2.a(t2));
            boolean z3 = true;
            Preconditions.checkArgument(iCompare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", t, t2);
            if (iCompare == 0) {
                BoundType boundType3 = BoundType.OPEN;
                if (boundType == boundType3 && boundType2 == boundType3) {
                    z3 = false;
                }
                Preconditions.checkArgument(z3);
            }
        }
    }

    static <T> j1<T> a(Comparator<? super T> comparator) {
        BoundType boundType = BoundType.OPEN;
        return new j1<>(comparator, false, null, boundType, false, null, boundType);
    }

    static <T> j1<T> e(Comparator<? super T> comparator, T t, BoundType boundType) {
        return new j1<>(comparator, true, t, boundType, false, null, BoundType.OPEN);
    }

    static <T> j1<T> q(Comparator<? super T> comparator, T t, BoundType boundType) {
        return new j1<>(comparator, false, null, BoundType.OPEN, true, t, boundType);
    }

    Comparator<? super T> c() {
        return this.a;
    }

    boolean d(T t) {
        return (p(t) || n(t)) ? false : true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j1)) {
            return false;
        }
        j1 j1Var = (j1) obj;
        return this.a.equals(j1Var.a) && this.b == j1Var.b && this.f3776e == j1Var.f3776e && f().equals(j1Var.f()) && h().equals(j1Var.h()) && Objects.equal(g(), j1Var.g()) && Objects.equal(i(), j1Var.i());
    }

    BoundType f() {
        return this.f3775d;
    }

    T g() {
        return this.c;
    }

    BoundType h() {
        return this.f3778g;
    }

    public int hashCode() {
        return Objects.hashCode(this.a, g(), f(), i(), h());
    }

    T i() {
        return this.f3777f;
    }

    boolean j() {
        return this.b;
    }

    boolean k() {
        return this.f3776e;
    }

    j1<T> m(j1<T> j1Var) {
        int iCompare;
        int iCompare2;
        T t;
        BoundType boundType;
        BoundType boundType2;
        int iCompare3;
        BoundType boundType3;
        Preconditions.checkNotNull(j1Var);
        Preconditions.checkArgument(this.a.equals(j1Var.a));
        boolean z = this.b;
        T tG = g();
        BoundType boundTypeF = f();
        if (!j()) {
            z = j1Var.b;
            tG = j1Var.g();
            boundTypeF = j1Var.f();
        } else if (j1Var.j() && ((iCompare = this.a.compare(g(), j1Var.g())) < 0 || (iCompare == 0 && j1Var.f() == BoundType.OPEN))) {
            tG = j1Var.g();
            boundTypeF = j1Var.f();
        }
        boolean z2 = z;
        boolean z3 = this.f3776e;
        T tI = i();
        BoundType boundTypeH = h();
        if (!k()) {
            z3 = j1Var.f3776e;
            tI = j1Var.i();
            boundTypeH = j1Var.h();
        } else if (j1Var.k() && ((iCompare2 = this.a.compare(i(), j1Var.i())) > 0 || (iCompare2 == 0 && j1Var.h() == BoundType.OPEN))) {
            tI = j1Var.i();
            boundTypeH = j1Var.h();
        }
        boolean z4 = z3;
        T t2 = tI;
        if (z2 && z4 && ((iCompare3 = this.a.compare(tG, t2)) > 0 || (iCompare3 == 0 && boundTypeF == (boundType3 = BoundType.OPEN) && boundTypeH == boundType3))) {
            boundType = BoundType.OPEN;
            boundType2 = BoundType.CLOSED;
            t = t2;
        } else {
            t = tG;
            boundType = boundTypeF;
            boundType2 = boundTypeH;
        }
        return new j1<>(this.a, z2, t, boundType, z4, t2, boundType2);
    }

    boolean n(T t) {
        if (!k()) {
            return false;
        }
        int iCompare = this.a.compare(t, e2.a(i()));
        return ((iCompare == 0) & (h() == BoundType.OPEN)) | (iCompare > 0);
    }

    boolean p(T t) {
        if (!j()) {
            return false;
        }
        int iCompare = this.a.compare(t, e2.a(g()));
        return ((iCompare == 0) & (f() == BoundType.OPEN)) | (iCompare < 0);
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a);
        BoundType boundType = this.f3775d;
        BoundType boundType2 = BoundType.CLOSED;
        char c = boundType == boundType2 ? '[' : '(';
        String strValueOf2 = String.valueOf(this.b ? this.c : "-∞");
        String strValueOf3 = String.valueOf(this.f3776e ? this.f3777f : "∞");
        char c2 = this.f3778g == boundType2 ? ']' : ')';
        StringBuilder sb = new StringBuilder(strValueOf.length() + 4 + strValueOf2.length() + strValueOf3.length());
        sb.append(strValueOf);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(c);
        sb.append(strValueOf2);
        sb.append(',');
        sb.append(strValueOf3);
        sb.append(c2);
        return sb.toString();
    }
}
