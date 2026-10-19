package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: InternalContainer.java */
/* JADX INFO: loaded from: classes2.dex */
public class o {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context a = null;
    private static volatile p<com.bytedance.sdk.openadsdk.b.a> b = null;
    private static int c = -1;

    /* JADX INFO: compiled from: InternalContainer.java */
    private static class a {

        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application a;

        static {
            try {
                Object objB = b();
                a = (Application) objB.getClass().getMethod("getApplication", new Class[0]).invoke(objB, new Object[0]);
                com.bytedance.sdk.component.utils.l.e("MyApplication", "application get success");
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("MyApplication", "application get failed", th);
            }
        }

        @Nullable
        public static Application a() {
            return a;
        }

        private static Object b() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static Context a() {
        if (a == null) {
            a(null);
        }
        return a;
    }

    public static void a(Context context) {
        if (a == null) {
            synchronized (o.class) {
                if (a == null) {
                    if (context != null) {
                        a = context;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            a = applicationContext;
                        }
                        return;
                    }
                    try {
                        Application applicationA = a.a();
                        if (applicationA != null) {
                            a = applicationA;
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    public static int b() {
        Context contextA;
        if (c < 0 && (contextA = a()) != null) {
            c = ViewConfiguration.get(contextA).getScaledTouchSlop();
        }
        return c;
    }

    public static p<com.bytedance.sdk.openadsdk.b.a> c() {
        if (b == null) {
            synchronized (o.class) {
                if (b == null) {
                    b = new q(a);
                }
            }
        }
        return b;
    }

    public static com.bytedance.sdk.openadsdk.core.settings.e d() {
        return com.bytedance.sdk.openadsdk.core.settings.o.aj();
    }

    public static com.bytedance.sdk.openadsdk.j.c.a e() {
        return !com.bytedance.sdk.openadsdk.core.settings.k.a() ? com.bytedance.sdk.openadsdk.j.c.b.a() : com.bytedance.sdk.openadsdk.b.a.d.a();
    }
}
