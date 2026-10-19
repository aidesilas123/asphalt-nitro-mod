package com.bytedance.sdk.openadsdk.b;

import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: LastShowAdManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {
    public static void a(final q qVar, final String str) {
        if (qVar != null) {
            com.bytedance.sdk.component.utils.h.a().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.b.k.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.bytedance.sdk.openadsdk.utils.m.a(qVar.ao().toString(), str);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }
}
