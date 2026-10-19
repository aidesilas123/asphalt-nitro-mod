package com.bykv.vk.openvk.preload.geckox.utils;

/* JADX INFO: compiled from: ExceptionUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static void a(Throwable th) {
        if (d.a()) {
            com.bykv.vk.openvk.preload.geckox.h.b.b("gecko-debug-tag", "throwIfDebug:", th);
            throw new RuntimeException(th);
        }
        com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "throwIfDebug:", th);
    }
}
