package com.bykv.vk.openvk.preload.geckox.h;

import android.util.Log;

/* JADX INFO: compiled from: DefaultLogger.java */
/* JADX INFO: loaded from: classes.dex */
final class a implements c {
    a() {
    }

    @Override // com.bykv.vk.openvk.preload.geckox.h.c
    public final void a(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.h.c
    public final void a(String str, Object... objArr) {
        if (objArr == null) {
            Log.d(str, "null");
        } else {
            try {
                Log.d(str, com.bykv.vk.openvk.preload.geckox.c.b.a().a.a(objArr));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.h.c
    public final void b(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }
}
