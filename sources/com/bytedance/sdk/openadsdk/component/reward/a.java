package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: ChooseAdHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a(com.bytedance.sdk.openadsdk.core.model.a aVar, int i) {
        if (aVar == null || aVar.c() == null || aVar.c().size() <= 0) {
            return;
        }
        if (i >= aVar.c().size()) {
            i = 0;
        }
        a(aVar.c().get(i), !TextUtils.isEmpty(d.a(com.bytedance.sdk.openadsdk.core.o.a()).a(r1)));
    }

    public static void a(final q qVar, final boolean z) {
        com.bytedance.sdk.openadsdk.core.l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (qVar == null) {
                    return;
                }
                try {
                    Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
                    AdSlot adSlotD = qVar.D();
                    if (adSlotD != null) {
                        e.a(contextA).a(adSlotD.getCodeId());
                        if (z) {
                            e.a(contextA).b(adSlotD);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
