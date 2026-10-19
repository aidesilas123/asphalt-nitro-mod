package com.bykv.vk.openvk.component.video.a;

import android.content.Context;
import android.os.Build;
import com.bykv.vk.openvk.component.video.api.a.b;
import com.bykv.vk.openvk.component.video.api.f.c;
import org.json.JSONObject;

/* JADX INFO: compiled from: MediaConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    public static int a = 10;
    public static int b = 10;
    public static int c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f391d = 10;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static b f392e;

    public static void a() {
        b bVar = f392e;
        if (bVar != null) {
            bVar.d();
        }
    }

    public static void a(Context context) {
        com.bykv.vk.openvk.component.video.api.f.a.a(context);
        if (Build.VERSION.SDK_INT < 23) {
            com.bykv.vk.openvk.component.video.a.b.f.a.a();
        }
    }

    public static void a(b bVar) {
        f392e = bVar;
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            a = jSONObject.optInt("splash", 10);
            b = jSONObject.optInt("reward", 10);
            c = jSONObject.optInt("brand", 10);
            int iOptInt = jSONObject.optInt("other", 10);
            f391d = iOptInt;
            if (a < 0) {
                a = 10;
            }
            if (b < 0) {
                b = 10;
            }
            if (c < 0) {
                c = 10;
            }
            if (iOptInt < 0) {
                f391d = 10;
            }
            c.b("MediaConfig", "splash=", Integer.valueOf(a), ",reward=", Integer.valueOf(b), ",brand=", Integer.valueOf(c), ",other=", Integer.valueOf(f391d));
        } catch (Throwable th) {
            c.c("MediaConfig", th.getMessage());
        }
    }

    public static int b() {
        return a;
    }

    public static int c() {
        return b;
    }

    public static int d() {
        return c;
    }

    public static int e() {
        return f391d;
    }
}
