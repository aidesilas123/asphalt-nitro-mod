package com.bytedance.sdk.openadsdk.b.a;

import android.content.Context;
import com.bytedance.sdk.component.e.a.a;
import com.bytedance.sdk.openadsdk.core.o;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: AdLogSwitchUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static AtomicInteger a = new AtomicInteger(0);
    public static final AtomicBoolean b = new AtomicBoolean(false);

    public static com.bytedance.sdk.openadsdk.j.c.a a() {
        return l.a;
    }

    public static void a(Context context, boolean z) {
        if (b.compareAndSet(false, true)) {
            com.bytedance.sdk.component.e.a.b.a(new a.C0115a().a(new j()).b(com.bytedance.sdk.component.e.a.d.b.a.c()).c(com.bytedance.sdk.component.e.a.d.b.a.e()).a(com.bytedance.sdk.component.e.a.d.b.a.d()).a(z).a(new k()).a(h.a).b(o.d().n()).a(o.d().o()).a(), context);
            b();
        }
    }

    public static void a(com.bytedance.sdk.openadsdk.b.a aVar) {
        com.bytedance.sdk.component.e.a.d.a.a aVar2 = new com.bytedance.sdk.component.e.a.d.a.a(aVar.d(), aVar);
        aVar2.b(aVar.e() ? (byte) 1 : (byte) 2);
        aVar2.a((byte) 0);
        if (com.bytedance.sdk.component.e.a.b.b()) {
            a(o.a(), com.bytedance.sdk.openadsdk.multipro.b.c());
        }
        com.bytedance.sdk.component.e.a.b.a(aVar2);
    }

    public static void a(String str) {
        if (com.bytedance.sdk.component.e.a.b.b()) {
            a(o.a(), com.bytedance.sdk.openadsdk.multipro.b.c());
        }
        com.bytedance.sdk.component.e.a.b.a(str);
    }

    public static void a(final List<String> list) {
        if (list == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.b.c.a(new com.bytedance.sdk.component.g.h("track") { // from class: com.bytedance.sdk.openadsdk.b.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (com.bytedance.sdk.component.e.a.b.b()) {
                    d.a(o.a(), com.bytedance.sdk.openadsdk.multipro.b.c());
                }
                com.bytedance.sdk.component.e.a.b.a(com.bytedance.sdk.openadsdk.core.j.a(o.a()), list, true);
            }
        });
    }

    public static void b() {
        com.bytedance.sdk.component.e.a.b.c();
    }

    public static void c() {
        try {
            com.bytedance.sdk.component.e.a.b.d();
            com.bytedance.sdk.component.e.a.b.e();
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("AdLogSwitchUtils", th.getMessage());
        }
    }
}
