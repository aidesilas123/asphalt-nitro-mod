package com.bykv.vk.openvk.component.video.api;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.b.a.k;
import java.io.File;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: VideoConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    public static boolean a = false;
    private static Context b = null;
    private static String c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f469d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static k f470e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f471f = 1;

    public static Context a() {
        return b;
    }

    public static void a(int i) {
        f471f = i;
    }

    public static void a(Context context, String str) {
        b = context;
        c = str;
    }

    public static void a(k kVar) {
        f470e = kVar;
    }

    public static void a(boolean z) {
        f469d = z;
    }

    public static String b() {
        if (TextUtils.isEmpty(c)) {
            try {
                File file = new File(a().getFilesDir(), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                c = file.getAbsolutePath();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return c;
    }

    public static boolean c() {
        return f469d;
    }

    public static k d() {
        if (f470e == null) {
            k.a aVar = new k.a("v_config");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f470e = aVar.a(10000L, timeUnit).b(10000L, timeUnit).c(10000L, timeUnit).a();
        }
        return f470e;
    }

    public static boolean e() {
        return a;
    }

    public static int f() {
        return f471f;
    }
}
