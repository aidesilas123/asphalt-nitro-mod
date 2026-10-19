package com.bykv.vk.openvk.preload.b;

/* JADX INFO: compiled from: Pipe.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {
    Class<? extends d> a;
    com.bykv.vk.openvk.preload.b.b.a b;
    Object[] c;

    /* JADX INFO: compiled from: Pipe.java */
    public static final class a {
        Class<? extends d> a;
        public com.bykv.vk.openvk.preload.b.b.a b;
        public Object[] c;

        public final a a(Class<? extends d> cls) {
            if (cls == null) {
                throw new IllegalArgumentException("interceptor class == null");
            }
            this.a = cls;
            return this;
        }

        public final h a() {
            return new h(this, (byte) 0);
        }
    }

    private h(a aVar) {
        Class<? extends d> cls = aVar.a;
        this.a = cls;
        this.b = aVar.b;
        this.c = aVar.c;
        if (cls == null) {
            throw new IllegalArgumentException("Interceptor class == null");
        }
    }

    /* synthetic */ h(a aVar, byte b) {
        this(aVar);
    }
}
