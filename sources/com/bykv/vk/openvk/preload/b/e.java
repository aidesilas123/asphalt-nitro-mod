package com.bykv.vk.openvk.preload.b;

/* JADX INFO: compiled from: InterceptorFactory.java */
/* JADX INFO: loaded from: classes.dex */
public interface e {

    /* JADX INFO: compiled from: InterceptorFactory.java */
    public static class a implements e {
        @Override // com.bykv.vk.openvk.preload.b.e
        public final <T> T a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    <T> T a(Class<T> cls);
}
