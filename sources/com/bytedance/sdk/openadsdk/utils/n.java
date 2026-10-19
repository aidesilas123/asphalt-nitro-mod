package com.bytedance.sdk.openadsdk.utils;

import org.json.JSONObject;

/* JADX INFO: compiled from: MemoryUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {
    public static final long a = a(0.05f);

    public static int a() {
        try {
            int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / 33554432);
            if (iMaxMemory <= 2) {
                return 2;
            }
            if (iMaxMemory >= 5) {
                return 5;
            }
            return iMaxMemory;
        } catch (Throwable unused) {
            return 2;
        }
    }

    public static long a(float f2) {
        return Double.valueOf(f2 * Runtime.getRuntime().maxMemory()).longValue();
    }

    public static boolean a(long j, String str) {
        if (!com.bytedance.sdk.openadsdk.core.o.d().l() || Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) >= j) {
            return true;
        }
        b(j, str);
        return false;
    }

    private static void b(final long j, final String str) {
        aa.b(new com.bytedance.sdk.component.g.h("isMemoryEnough") { // from class: com.bytedance.sdk.openadsdk.utils.n.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("scene", str);
                    jSONObject.put("mem_size", j);
                    com.bytedance.sdk.openadsdk.j.b.a().a("dynamic_mem_not_enough", jSONObject);
                    com.bytedance.sdk.component.utils.l.b("MemoryUtils", "dynamic_mem_not_enough", jSONObject);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.l.c("MemoryUtils", "run: ", e2);
                }
            }
        }, 5);
    }
}
