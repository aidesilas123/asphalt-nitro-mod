package com.mbridge.msdk.e.a;

import com.mbridge.msdk.e.a.a;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes4.dex */
public final class o<T> {
    public final T a;
    public final a.C0396a b;
    public final u c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6963d;

    /* JADX INFO: compiled from: Response.java */
    public interface a {
        void a(u uVar);
    }

    /* JADX INFO: compiled from: Response.java */
    public interface b<T> {
        void a(T t);
    }

    private o(u uVar) {
        this.f6963d = false;
        this.a = null;
        this.b = null;
        this.c = uVar;
    }

    private o(T t, a.C0396a c0396a) {
        this.f6963d = false;
        this.a = t;
        this.b = c0396a;
        this.c = null;
    }

    public static <T> o<T> a(u uVar) {
        return new o<>(uVar);
    }

    public static <T> o<T> a(T t, a.C0396a c0396a) {
        return new o<>(t, c0396a);
    }

    public final boolean a() {
        return this.c == null;
    }
}
