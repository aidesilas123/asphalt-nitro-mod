package com.bykv.vk.openvk.component.video.a.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import com.bykv.vk.openvk.component.video.a.b.a.c;
import java.util.Set;

/* JADX INFO: compiled from: Proxy.java */
/* JADX INFO: loaded from: classes.dex */
public class e {
    static volatile com.bykv.vk.openvk.component.video.a.b.a.b a;
    static volatile com.bykv.vk.openvk.component.video.a.b.a.c b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f431d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static volatile boolean f433f;
    public static volatile Integer i;
    private static volatile com.bykv.vk.openvk.component.video.a.b.b.c j;

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context k;
    public static final boolean c = com.bytedance.sdk.component.utils.l.d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static volatile boolean f432e = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static volatile int f434g = 0;
    public static volatile int h = 3;

    public static Context a() {
        return k;
    }

    public static void a(int i2) {
        f434g = i2;
    }

    public static void a(com.bykv.vk.openvk.component.video.a.b.a.c cVar, Context context) {
        if (cVar == null || context == null) {
            throw new IllegalArgumentException("DiskLruCache and Context can't be null !!!");
        }
        k = context.getApplicationContext();
        if (b != null) {
            return;
        }
        com.bykv.vk.openvk.component.video.a.b.a.b bVar = a;
        if (bVar != null && bVar.a.getAbsolutePath().equals(cVar.a.getAbsolutePath())) {
            throw new IllegalArgumentException("DiskLruCache and DiskCache can't use the same dir");
        }
        b = cVar;
        j = com.bykv.vk.openvk.component.video.a.b.b.c.a(context);
        b.a(new c.a() { // from class: com.bykv.vk.openvk.component.video.a.b.e.1
            @Override // com.bykv.vk.openvk.component.video.a.b.a.c.a
            public void a(String str) {
                if (e.c) {
                    Log.i("TAG_PROXY_DiskLruCache", "new cache created: " + str);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.a.b.a.c.a
            public void a(Set<String> set) {
                e.j.a(set, 0);
                if (e.c) {
                    Log.i("TAG_PROXY_DiskLruCache", "cache file removed, " + set);
                }
            }
        });
        f fVarA = f.a();
        fVarA.a(cVar);
        fVarA.a(j);
        d dVarC = d.c();
        dVarC.a(cVar);
        dVarC.a(j);
    }

    public static void a(boolean z) {
        f432e = z;
    }

    public static com.bykv.vk.openvk.component.video.a.b.a.c b() {
        return b;
    }

    public static void b(boolean z) {
        f433f = z;
    }

    public static com.bykv.vk.openvk.component.video.a.b.a.b c() {
        return a;
    }
}
