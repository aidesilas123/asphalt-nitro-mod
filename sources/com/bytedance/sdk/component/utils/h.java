package com.bytedance.sdk.component.utils;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: HandlerUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    private static volatile Handler a;

    public static Handler a() {
        return com.bytedance.sdk.component.g.a.a.a().b();
    }

    public static Handler b() {
        if (a == null) {
            synchronized (h.class) {
                if (a == null) {
                    a = new Handler(Looper.getMainLooper());
                }
            }
        }
        return a;
    }
}
