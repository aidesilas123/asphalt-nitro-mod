package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;

/* JADX INFO: compiled from: FileCacheUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    private static String a;

    public static String a() {
        if (TextUtils.isEmpty(a)) {
            a = com.bykv.vk.openvk.component.video.api.c.a().getCacheDir() + File.separator + "proxy_cache";
        }
        return a;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c(th.getMessage());
            }
        }
    }
}
