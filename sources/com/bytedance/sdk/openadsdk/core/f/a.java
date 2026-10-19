package com.bytedance.sdk.openadsdk.core.f;

import android.content.Context;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.k.b;
import com.bytedance.sdk.openadsdk.k.c;

/* JADX INFO: compiled from: TncHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static boolean a;
    private static final int b = Integer.parseInt("1371");

    public static void a() {
        Context contextA;
        if (!o.d().i() || a || (contextA = o.a()) == null) {
            return;
        }
        try {
            l.c("TncHelper", "initTTAdNet: support TNC");
            c.a().b().a(contextA, true, new b(contextA));
            c.a().b().a(contextA, com.bytedance.sdk.openadsdk.multipro.b.c());
            a = true;
        } catch (Exception e2) {
            l.d("TncHelper", "initTTAdNet: ", e2.getMessage());
        }
    }

    public static void b() {
        Context contextA;
        if (a && o.d().i() && (contextA = o.a()) != null) {
            com.bytedance.sdk.component.f.c.a.a(contextA, b);
        }
    }
}
