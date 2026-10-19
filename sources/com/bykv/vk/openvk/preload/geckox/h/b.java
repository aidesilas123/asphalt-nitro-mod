package com.bykv.vk.openvk.preload.geckox.h;

/* JADX INFO: compiled from: GeckoLogger.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static boolean a;
    private static c b = new a();

    public static void a(String str, String str2, Throwable th) {
        c cVar;
        if (!a || (cVar = b) == null) {
            return;
        }
        cVar.a(str, str2, th);
    }

    public static void a(String str, Object... objArr) {
        c cVar;
        if (!a || (cVar = b) == null) {
            return;
        }
        cVar.a(str, objArr);
    }

    public static void b(String str, String str2, Throwable th) {
        c cVar;
        if (!a || (cVar = b) == null) {
            return;
        }
        cVar.b(str, str2, th);
    }
}
