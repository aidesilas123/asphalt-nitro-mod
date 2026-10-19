package com.fyber.inneractive.sdk.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k1<T, B> {
    public abstract B a();

    public abstract B a(Object obj);

    public abstract T a(T t, T t2);

    public abstract void a(B b, int i, int i2);

    public abstract void a(B b, int i, long j);

    public abstract void a(B b, int i, i iVar);

    public abstract void a(B b, int i, T t);

    public abstract void a(T t, s1 s1Var) throws IOException;

    public abstract boolean a(c1 c1Var);

    public final boolean a(B b, c1 c1Var) throws IOException {
        int iE = c1Var.e();
        int i = r1.a;
        int i2 = iE >>> 3;
        int i3 = iE & 7;
        if (i3 == 0) {
            b(b, i2, c1Var.o());
            return true;
        }
        if (i3 == 1) {
            a(b, i2, c1Var.g());
            return true;
        }
        if (i3 == 2) {
            a((Object) b, i2, c1Var.a());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw z.d();
            }
            a((Object) b, i2, c1Var.q());
            return true;
        }
        B bA = a();
        int iA = r1.a(i2, 4);
        while (c1Var.s() != Integer.MAX_VALUE && a((Object) bA, c1Var)) {
        }
        if (iA != c1Var.e()) {
            throw z.a();
        }
        a(b, i2, f(bA));
        return true;
    }

    public abstract T b(Object obj);

    public abstract void b(B b, int i, long j);

    public abstract void b(T t, s1 s1Var) throws IOException;

    public abstract void b(Object obj, B b);

    public abstract int c(T t);

    public abstract void c(Object obj, T t);

    public abstract int d(T t);

    public abstract void e(Object obj);

    public abstract T f(B b);
}
