package com.bytedance.sdk.component.e.a.b;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.a.e;
import com.bytedance.sdk.component.e.a.i;

/* JADX INFO: compiled from: DBEventUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static long a(int i, Context context) {
        long jB = b(i, context);
        com.bytedance.sdk.component.e.a.c.c.a("ad limit by memory:" + jB);
        return jB;
    }

    public static boolean a() {
        e eVarD = i.g().d();
        return (eVarD == null || TextUtils.isEmpty(eVarD.a())) ? false : true;
    }

    private static long b(int i, Context context) {
        if (context == null) {
            return i;
        }
        Runtime runtime = Runtime.getRuntime();
        long jFreeMemory = runtime.freeMemory() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        long jMaxMemory = (runtime.maxMemory() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) - (runtime.totalMemory() / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        if (jMaxMemory <= 0) {
            if (jFreeMemory <= 2) {
                return 1L;
            }
            return jFreeMemory <= 10 ? Math.min(i, 10) : Math.min((jFreeMemory / 2) * 10, i);
        }
        long j = ((jFreeMemory + jMaxMemory) - 10) / 2;
        if (j <= 2) {
            return 1L;
        }
        return j <= 10 ? Math.min(i, 10) : Math.min(j * 10, i);
    }

    public static boolean b() {
        e eVarD = i.g().d();
        return (eVarD == null || TextUtils.isEmpty(eVarD.b())) ? false : true;
    }

    public static boolean c() {
        e eVarD = i.g().d();
        return (eVarD == null || TextUtils.isEmpty(eVarD.d())) ? false : true;
    }

    public static boolean d() {
        e eVarD = i.g().d();
        return (eVarD == null || TextUtils.isEmpty(eVarD.e())) ? false : true;
    }

    public static boolean e() {
        e eVarD = i.g().d();
        return (eVarD == null || TextUtils.isEmpty(eVarD.c())) ? false : true;
    }

    public static boolean f() {
        e eVarD = i.g().d();
        return (eVarD == null || TextUtils.isEmpty(eVarD.f())) ? false : true;
    }
}
