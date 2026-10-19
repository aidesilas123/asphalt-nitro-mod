package io.didomi.drawable;

import android.content.Context;
import android.content.SharedPreferences;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import io.didomi.drawable.preferences.ctv.TVPreferencesDialogActivity;
import io.didomi.drawable.purpose.mobile.PurposeSaveView;
import io.didomi.drawable.view.mobile.DidomiToggle;
import io.didomi.drawable.view.mobile.HeaderView;

/* JADX INFO: renamed from: io.didomi.sdk.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1817l0 {

    /* JADX INFO: renamed from: io.didomi.sdk.l0$b */
    public static final class b {
        private C1766g a;
        private T2 b;
        private C1717b0 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Q3 f8676d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private C1832m5 f8677e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private F f8678f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private L f8679g;
        private K2 h;
        private C1771g4 i;
        private Z5 j;
        private J3 k;

        private b() {
        }

        public J0 a() {
            if (this.a == null) {
                this.a = new C1766g();
            }
            if (this.b == null) {
                this.b = new T2();
            }
            Preconditions.checkBuilderRequirement(this.c, C1717b0.class);
            Preconditions.checkBuilderRequirement(this.f8676d, Q3.class);
            if (this.f8677e == null) {
                this.f8677e = new C1832m5();
            }
            if (this.f8678f == null) {
                this.f8678f = new F();
            }
            if (this.f8679g == null) {
                this.f8679g = new L();
            }
            Preconditions.checkBuilderRequirement(this.h, K2.class);
            if (this.i == null) {
                this.i = new C1771g4();
            }
            if (this.j == null) {
                this.j = new Z5();
            }
            if (this.k == null) {
                this.k = new J3();
            }
            return new c(this.a, this.b, this.c, this.f8676d, this.f8677e, this.f8678f, this.f8679g, this.h, this.i, this.j, this.k);
        }

        public b a(F f2) {
            this.f8678f = (F) Preconditions.checkNotNull(f2);
            return this;
        }

        public b a(K2 k2) {
            this.h = (K2) Preconditions.checkNotNull(k2);
            return this;
        }

        public b a(L l) {
            this.f8679g = (L) Preconditions.checkNotNull(l);
            return this;
        }

        public b a(Q3 q3) {
            this.f8676d = (Q3) Preconditions.checkNotNull(q3);
            return this;
        }

        public b a(T2 t2) {
            this.b = (T2) Preconditions.checkNotNull(t2);
            return this;
        }

        public b a(C1717b0 c1717b0) {
            this.c = (C1717b0) Preconditions.checkNotNull(c1717b0);
            return this;
        }

        public b a(C1766g c1766g) {
            this.a = (C1766g) Preconditions.checkNotNull(c1766g);
            return this;
        }

        public b a(C1832m5 c1832m5) {
            this.f8677e = (C1832m5) Preconditions.checkNotNull(c1832m5);
            return this;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.l0$c */
    private static final class c implements J0 {
        private dagger.internal.c<C1733c6> A;
        private dagger.internal.c<UIStateRepository> B;
        private dagger.internal.c<D8> C;
        private dagger.internal.c<G8> D;
        private dagger.internal.c<I3> E;
        private dagger.internal.c<C1790i3> F;
        private dagger.internal.c<C3> G;
        private dagger.internal.c<C1824l7> H;
        private dagger.internal.c<C1965z8> I;
        private dagger.internal.c<C1905t8> J;
        private dagger.internal.c<C1857p0> K;
        private dagger.internal.c<B5> L;
        private dagger.internal.c<C1712a5> M;
        private dagger.internal.c<S4> N;
        private dagger.internal.c<Q5> O;
        private dagger.internal.c<C1833m6> P;
        private dagger.internal.c<Z6> Q;
        private dagger.internal.c<C1874q7> R;
        private dagger.internal.c<C0> S;
        private dagger.internal.c<K8> T;
        private dagger.internal.c<h9> U;
        private dagger.internal.c<C1853o6> V;
        private final c a;
        private dagger.internal.c<Context> b;
        private dagger.internal.c<DidomiInitializeParameters> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private dagger.internal.c<C1960z3> f8680d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private dagger.internal.c<Z> f8681e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private dagger.internal.c<J> f8682f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private dagger.internal.c<F8> f8683g;
        private dagger.internal.c<Z2> h;
        private dagger.internal.c<C1822l5> i;
        private dagger.internal.c<H> j;
        private dagger.internal.c<SharedPreferences> k;
        private dagger.internal.c<C1892s5> l;
        private dagger.internal.c<C1920v3> m;
        private dagger.internal.c<Z4> n;
        private dagger.internal.c<V8> o;
        private dagger.internal.c<M8> p;
        private dagger.internal.c<InterfaceC1890s3> q;
        private dagger.internal.c<C1777h0> r;
        private dagger.internal.c<C1797j0> s;
        private dagger.internal.c<InterfaceC1780h3> t;
        private dagger.internal.c<V> u;
        private dagger.internal.c<P3> v;
        private dagger.internal.c<io.didomi.drawable.apiEvents.a> w;
        private dagger.internal.c<io.didomi.drawable.apiEvents.b> x;
        private dagger.internal.c<M2> y;
        private dagger.internal.c<P8> z;

        private c(C1766g c1766g, T2 t2, C1717b0 c1717b0, Q3 q3, C1832m5 c1832m5, F f2, L l, K2 k2, C1771g4 c1771g4, Z5 z5, J3 j3) {
            this.a = this;
            a(c1766g, t2, c1717b0, q3, c1832m5, f2, l, k2, c1771g4, z5, j3);
        }

        private U a() {
            return new U(this.x.get(), this.j.get(), this.u.get(), this.y.get(), this.o.get(), this.l.get(), this.m.get(), this.G.get(), this.E.get(), this.z.get(), this.v.get());
        }

        private void a(C1766g c1766g, T2 t2, C1717b0 c1717b0, Q3 q3, C1832m5 c1832m5, F f2, L l, K2 k2, C1771g4 c1771g4, Z5 z5, J3 j3) {
            this.b = DoubleCheck.provider(C1727c0.a(c1717b0));
            this.c = DoubleCheck.provider(R3.a(q3));
            dagger.internal.c<C1960z3> cVarProvider = DoubleCheck.provider(S3.a(q3));
            this.f8680d = cVarProvider;
            this.f8681e = DoubleCheck.provider(V2.a(t2, this.b, this.c, cVarProvider));
            this.f8682f = DoubleCheck.provider(U2.a(t2, this.b));
            dagger.internal.c<F8> cVarProvider2 = DoubleCheck.provider(U3.a(q3));
            this.f8683g = cVarProvider2;
            dagger.internal.c<Z2> cVarProvider3 = DoubleCheck.provider(W2.a(t2, cVarProvider2));
            this.h = cVarProvider3;
            dagger.internal.c<C1822l5> cVarProvider4 = DoubleCheck.provider(X2.a(t2, this.b, this.f8682f, cVarProvider3, C1757f0.a()));
            this.i = cVarProvider4;
            this.j = DoubleCheck.provider(G.a(f2, this.b, this.f8681e, this.f8680d, this.c, cVarProvider4));
            this.k = DoubleCheck.provider(C1737d0.a(c1717b0));
            dagger.internal.c<C1892s5> cVarProvider5 = DoubleCheck.provider(Y2.a(t2, this.b));
            this.l = cVarProvider5;
            dagger.internal.c<C1920v3> cVarProvider6 = DoubleCheck.provider(C1930w3.a(this.j, cVarProvider5, this.c));
            this.m = cVarProvider6;
            dagger.internal.c<Z4> cVarProvider7 = DoubleCheck.provider(C1852o5.a(c1832m5, this.b, this.i, this.f8681e, cVarProvider6, this.j));
            this.n = cVarProvider7;
            this.o = DoubleCheck.provider(C1872q5.a(c1832m5, this.j, this.m, cVarProvider7));
            this.p = DoubleCheck.provider(N8.a(this.k));
            dagger.internal.c<InterfaceC1890s3> cVarProvider8 = DoubleCheck.provider(N.a(l, this.j, this.b));
            this.q = cVarProvider8;
            dagger.internal.c<C1777h0> cVarProvider9 = DoubleCheck.provider(C1787i0.a(this.b, cVarProvider8));
            this.r = cVarProvider9;
            this.s = DoubleCheck.provider(C1807k0.a(this.j, this.k, this.p, cVarProvider9, C1757f0.a()));
            dagger.internal.c<InterfaceC1780h3> cVarProvider10 = DoubleCheck.provider(C1842n5.a(c1832m5, this.j));
            this.t = cVarProvider10;
            this.u = DoubleCheck.provider(M.a(l, this.k, this.o, this.j, this.s, cVarProvider10, this.m));
            dagger.internal.c<P3> cVarProvider11 = DoubleCheck.provider(T3.a(q3));
            this.v = cVarProvider11;
            C1796j c1796jA = C1796j.a(this.j, this.u, cVarProvider11, this.f8683g, this.p, this.f8681e);
            this.w = c1796jA;
            this.x = DoubleCheck.provider(C1776h.a(c1766g, c1796jA, this.f8682f, this.f8681e, this.h, C1757f0.a(), this.o, this.j));
            dagger.internal.c<M2> cVarProvider12 = DoubleCheck.provider(L2.a(k2));
            this.y = cVarProvider12;
            dagger.internal.c<P8> cVarProvider13 = DoubleCheck.provider(Q8.a(this.x, this.j, this.u, this.s, cVarProvider12, this.p, this.o));
            this.z = cVarProvider13;
            this.A = DoubleCheck.provider(C1713a6.a(z5, this.j, this.h, this.u, this.x, this.y, this.v, cVarProvider13, C1757f0.a()));
            this.B = DoubleCheck.provider(C1862p5.a(c1832m5));
            this.C = DoubleCheck.provider(C1791i4.a(c1771g4, this.f8681e, this.j));
            dagger.internal.c<G8> cVarProvider14 = DoubleCheck.provider(C1801j4.a(c1771g4));
            this.D = cVarProvider14;
            this.E = DoubleCheck.provider(K3.a(j3, this.j, this.y, this.x, this.u, this.C, cVarProvider14));
            C1800j3 c1800j3A = C1800j3.a(C1757f0.a());
            this.F = c1800j3A;
            dagger.internal.c<C3> cVarProvider15 = DoubleCheck.provider(C1781h4.a(c1771g4, this.j, this.f8681e, c1800j3A, C1757f0.a()));
            this.G = cVarProvider15;
            this.H = DoubleCheck.provider(C1834m7.a(this.x, this.j, this.u, this.f8681e, this.y, this.m, this.D, this.z, this.C, this.o, cVarProvider15, this.E));
            A8 a8A = A8.a(this.j, this.l);
            this.I = a8A;
            this.J = DoubleCheck.provider(C1915u8.a(this.x, this.j, this.y, this.m, a8A, this.D, this.o, this.G, this.l));
            this.K = DoubleCheck.provider(C1867q0.a(this.j, this.y, this.G, this.m));
            this.L = DoubleCheck.provider(C5.a(this.j, this.m, this.G));
            this.M = DoubleCheck.provider(C1722b5.a(this.x, this.j, this.u, this.f8681e, this.y, this.m, this.D, this.z, this.C, this.o, this.G, this.E));
            this.N = DoubleCheck.provider(T4.a(this.o, this.m));
            this.O = DoubleCheck.provider(R5.a(this.x, this.j, this.u, this.y, this.m, this.D, this.C, this.o, this.G, this.z));
            this.P = DoubleCheck.provider(C1843n6.a(this.j, this.y, this.G, this.m));
            this.Q = DoubleCheck.provider(C1714a7.a(this.o, this.m));
            this.R = DoubleCheck.provider(C1884r7.a(this.j, this.m, this.G, this.l));
            this.S = DoubleCheck.provider(D0.a(this.j, this.m, this.o, this.G));
            this.T = DoubleCheck.provider(L8.a(this.j, this.u, this.f8681e, this.m, this.p, this.G));
            this.U = DoubleCheck.provider(i9.a(this.x, this.j, this.y, this.m, this.I, this.D, this.o, this.G));
            this.V = DoubleCheck.provider(C1863p6.a(this.j, this.m, this.o, this.G));
        }

        private A5 b(A5 a5) {
            D5.a(a5, this.m.get());
            D5.a(a5, c());
            return a5;
        }

        private B6 b(B6 b6) {
            C6.a(b6, this.H.get());
            C6.a(b6, this.C.get());
            return b6;
        }

        private Didomi b(Didomi didomi) {
            H2.a(didomi, this.x.get());
            H2.a(didomi, this.j.get());
            H2.a(didomi, this.n.get());
            H2.a(didomi, this.f8682f.get());
            H2.a(didomi, this.u.get());
            H2.a(didomi, this.f8681e.get());
            H2.a(didomi, this.h.get());
            H2.a(didomi, this.m.get());
            H2.a(didomi, this.i.get());
            H2.a(didomi, this.l.get());
            H2.a(didomi, this.k.get());
            H2.a(didomi, this.A.get());
            H2.a(didomi, this.t.get());
            H2.a(didomi, this.B.get());
            H2.a(didomi, this.C.get());
            H2.a(didomi, this.D.get());
            H2.a(didomi, this.z.get());
            H2.a(didomi, this.p.get());
            H2.a(didomi, this.o.get());
            H2.a(didomi, this.E.get());
            return didomi;
        }

        private E5 b(E5 e5) {
            F5.a(e5, this.S.get());
            F5.a(e5, c());
            return e5;
        }

        private E6 b(E6 e6) {
            F6.a(e6, this.H.get());
            return e6;
        }

        private E7 b(E7 e7) {
            I7.a(e7, this.J.get());
            return e7;
        }

        private F7 b(F7 f7) {
            G7.a(f7, this.J.get());
            return f7;
        }

        private H5 b(H5 h5) {
            I5.a(h5, this.O.get());
            I5.a(h5, c());
            return h5;
        }

        private I8 b(I8 i8) {
            J8.a(i8, this.T.get());
            J8.a(i8, c());
            return i8;
        }

        private L5 b(L5 l5) {
            M5.a(l5, this.O.get());
            M5.a(l5, c());
            return l5;
        }

        private O b(O o) {
            P.a(o, this.C.get());
            P.a(o, a());
            P.a(o, this.E.get());
            P.a(o, c());
            return o;
        }

        private P4 b(P4 p4) {
            Q4.a(p4, this.N.get());
            Q4.a(p4, c());
            Q4.a(p4, this.C.get());
            return p4;
        }

        private R8 b(R8 r8) {
            S8.a(r8, this.S.get());
            S8.a(r8, this.U.get());
            S8.a(r8, c());
            S8.a(r8, this.C.get());
            return r8;
        }

        private S b(S s) {
            T.a(s, this.C.get());
            T.a(s, a());
            T.a(s, c());
            T.a(s, this.E.get());
            return s;
        }

        private T6 b(T6 t6) {
            U6.a(t6, this.Q.get());
            return t6;
        }

        private T7 b(T7 t7) {
            U7.a(t7, this.J.get());
            U7.a(t7, this.V.get());
            return t7;
        }

        private V4 b(V4 v4) {
            W4.a(v4, this.M.get());
            W4.a(v4, c());
            W4.a(v4, this.E.get());
            return v4;
        }

        private Z7 b(Z7 z7) {
            C1715a8.a(z7, this.J.get());
            C1715a8.a(z7, this.V.get());
            return z7;
        }

        private a9 b(a9 a9Var) {
            b9.a(a9Var, this.U.get());
            b9.a(a9Var, c());
            b9.a(a9Var, this.C.get());
            return a9Var;
        }

        private C1725b8 b(C1725b8 c1725b8) {
            I7.a(c1725b8, this.J.get());
            return c1725b8;
        }

        private C1726c b(C1726c c1726c) {
            C1736d.a(c1726c, this.K.get());
            C1736d.a(c1726c, c());
            C1736d.a(c1726c, this.C.get());
            return c1726c;
        }

        private C1755e8 b(C1755e8 c1755e8) {
            C1765f8.a(c1755e8, this.J.get());
            return c1755e8;
        }

        private C1783h6 b(C1783h6 c1783h6) {
            C1793i6.a(c1783h6, this.H.get());
            C1793i6.a(c1783h6, this.P.get());
            return c1783h6;
        }

        private C1795i8 b(C1795i8 c1795i8) {
            C1805j8.a(c1795i8, this.J.get());
            return c1795i8;
        }

        private C1804j7 b(C1804j7 c1804j7) {
            C1814k7.a(c1804j7, this.H.get());
            C1814k7.a(c1804j7, this.C.get());
            return c1804j7;
        }

        private C1815k8 b(C1815k8 c1815k8) {
            I7.a(c1815k8, this.J.get());
            return c1815k8;
        }

        private C1823l6 b() {
            return new C1823l6(this.x.get(), this.j.get(), this.u.get(), this.y.get(), this.o.get(), this.l.get(), this.m.get(), this.G.get(), this.E.get(), this.z.get(), this.B.get(), this.v.get());
        }

        private C1845n8 b(C1845n8 c1845n8) {
            C1855o8.a(c1845n8, this.J.get());
            return c1845n8;
        }

        private io.didomi.drawable.notice.ctv.a b(io.didomi.drawable.notice.ctv.a aVar) {
            C1813k6.a(aVar, b());
            C1813k6.a(aVar, this.C.get());
            C1813k6.a(aVar, this.E.get());
            return aVar;
        }

        private C1854o7 b(C1854o7 c1854o7) {
            C1864p7.a(c1854o7, this.R.get());
            return c1854o7;
        }

        private TVPreferencesDialogActivity b(TVPreferencesDialogActivity tVPreferencesDialogActivity) {
            C1913u6.a(tVPreferencesDialogActivity, this.H.get());
            C1913u6.a(tVPreferencesDialogActivity, this.J.get());
            C1913u6.a(tVPreferencesDialogActivity, this.C.get());
            C1913u6.a(tVPreferencesDialogActivity, this.E.get());
            return tVPreferencesDialogActivity;
        }

        private PurposeSaveView b(PurposeSaveView purposeSaveView) {
            L4.a(purposeSaveView, c());
            return purposeSaveView;
        }

        private C1871q4 b(C1871q4 c1871q4) {
            C1881r4.a(c1871q4, this.M.get());
            C1881r4.a(c1871q4, c());
            return c1871q4;
        }

        private C1873q6 b(C1873q6 c1873q6) {
            C1883r6.a(c1873q6, b());
            return c1873q6;
        }

        private C1885r8 b(C1885r8 c1885r8) {
            C1895s8.a(c1885r8, this.J.get());
            C1895s8.a(c1885r8, this.C.get());
            return c1885r8;
        }

        private C1897t0 b(C1897t0 c1897t0) {
            C1907u0.a(c1897t0, this.m.get());
            C1907u0.a(c1897t0, c());
            return c1897t0;
        }

        private C1904t7 b(C1904t7 c1904t7) {
            I7.a(c1904t7, this.J.get());
            return c1904t7;
        }

        private C1911u4 b(C1911u4 c1911u4) {
            C1921v4.a(c1911u4, this.M.get());
            C1921v4.a(c1911u4, c());
            return c1911u4;
        }

        private DidomiToggle b(DidomiToggle didomiToggle) {
            C1859p2.a(didomiToggle, c());
            return didomiToggle;
        }

        private HeaderView b(HeaderView headerView) {
            S2.a(headerView, c());
            S2.a(headerView, this.l.get());
            return headerView;
        }

        private C1927w0 b(C1927w0 c1927w0) {
            C1937x0.a(c1927w0, this.S.get());
            C1937x0.a(c1927w0, c());
            C1937x0.a(c1927w0, this.C.get());
            return c1927w0;
        }

        private C1944x7 b(C1944x7 c1944x7) {
            C1954y7.a(c1944x7, this.J.get());
            return c1944x7;
        }

        private C1952y5 b(C1952y5 c1952y5) {
            C1962z5.a(c1952y5, this.L.get());
            C1962z5.a(c1952y5, c());
            C1962z5.a(c1952y5, this.C.get());
            return c1952y5;
        }

        private C1953y6 b(C1953y6 c1953y6) {
            C1963z6.a(c1953y6, this.H.get());
            return c1953y6;
        }

        private C1965z8 c() {
            return new C1965z8(this.j.get(), this.l.get());
        }

        @Override // io.didomi.drawable.J0
        public void a(A5 a5) {
            b(a5);
        }

        @Override // io.didomi.drawable.J0
        public void a(B6 b6) {
            b(b6);
        }

        @Override // io.didomi.drawable.J0
        public void a(Didomi didomi) {
            b(didomi);
        }

        @Override // io.didomi.drawable.J0
        public void a(E5 e5) {
            b(e5);
        }

        @Override // io.didomi.drawable.J0
        public void a(E6 e6) {
            b(e6);
        }

        @Override // io.didomi.drawable.J0
        public void a(E7 e7) {
            b(e7);
        }

        @Override // io.didomi.drawable.J0
        public void a(F7 f7) {
            b(f7);
        }

        @Override // io.didomi.drawable.J0
        public void a(H5 h5) {
            b(h5);
        }

        @Override // io.didomi.drawable.J0
        public void a(I8 i8) {
            b(i8);
        }

        @Override // io.didomi.drawable.J0
        public void a(L5 l5) {
            b(l5);
        }

        @Override // io.didomi.drawable.J0
        public void a(O o) {
            b(o);
        }

        @Override // io.didomi.drawable.J0
        public void a(P4 p4) {
            b(p4);
        }

        @Override // io.didomi.drawable.J0
        public void a(R8 r8) {
            b(r8);
        }

        @Override // io.didomi.drawable.J0
        public void a(S s) {
            b(s);
        }

        @Override // io.didomi.drawable.J0
        public void a(T6 t6) {
            b(t6);
        }

        @Override // io.didomi.drawable.J0
        public void a(T7 t7) {
            b(t7);
        }

        @Override // io.didomi.drawable.J0
        public void a(V4 v4) {
            b(v4);
        }

        @Override // io.didomi.drawable.J0
        public void a(Z7 z7) {
            b(z7);
        }

        @Override // io.didomi.drawable.J0
        public void a(a9 a9Var) {
            b(a9Var);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1725b8 c1725b8) {
            b(c1725b8);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1726c c1726c) {
            b(c1726c);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1755e8 c1755e8) {
            b(c1755e8);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1783h6 c1783h6) {
            b(c1783h6);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1795i8 c1795i8) {
            b(c1795i8);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1804j7 c1804j7) {
            b(c1804j7);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1815k8 c1815k8) {
            b(c1815k8);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1845n8 c1845n8) {
            b(c1845n8);
        }

        @Override // io.didomi.drawable.J0
        public void a(io.didomi.drawable.notice.ctv.a aVar) {
            b(aVar);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1854o7 c1854o7) {
            b(c1854o7);
        }

        @Override // io.didomi.drawable.J0
        public void a(TVPreferencesDialogActivity tVPreferencesDialogActivity) {
            b(tVPreferencesDialogActivity);
        }

        @Override // io.didomi.drawable.J0
        public void a(PurposeSaveView purposeSaveView) {
            b(purposeSaveView);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1871q4 c1871q4) {
            b(c1871q4);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1873q6 c1873q6) {
            b(c1873q6);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1885r8 c1885r8) {
            b(c1885r8);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1897t0 c1897t0) {
            b(c1897t0);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1904t7 c1904t7) {
            b(c1904t7);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1911u4 c1911u4) {
            b(c1911u4);
        }

        @Override // io.didomi.drawable.J0
        public void a(DidomiToggle didomiToggle) {
            b(didomiToggle);
        }

        @Override // io.didomi.drawable.J0
        public void a(HeaderView headerView) {
            b(headerView);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1927w0 c1927w0) {
            b(c1927w0);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1944x7 c1944x7) {
            b(c1944x7);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1952y5 c1952y5) {
            b(c1952y5);
        }

        @Override // io.didomi.drawable.J0
        public void a(C1953y6 c1953y6) {
            b(c1953y6);
        }
    }

    public static b a() {
        return new b();
    }
}
