package com.mbridge.msdk.foundation.same.net;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes4.dex */
public final class l<T> {
    public T a;
    public com.mbridge.msdk.foundation.same.net.b.a b;
    public com.mbridge.msdk.foundation.same.net.f.c c;

    private l(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.b = aVar;
    }

    private l(T t, com.mbridge.msdk.foundation.same.net.f.c cVar) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.a = t;
        this.c = cVar;
    }

    public static <T> l<T> a(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        return new l<>(aVar);
    }

    public static <T> l<T> a(T t, com.mbridge.msdk.foundation.same.net.f.c cVar) {
        return new l<>(t, cVar);
    }
}
