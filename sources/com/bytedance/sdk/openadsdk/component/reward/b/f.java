package com.bytedance.sdk.openadsdk.component.reward.b;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.r;
import com.bytedance.sdk.openadsdk.core.model.t;

/* JADX INFO: compiled from: RewardFullTypeFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    @NonNull
    public static b a(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        q qVar = aVar.a;
        return ((qVar instanceof r) && ((r) qVar).bw()) ? new e(aVar) : t.k(qVar) ? new i(aVar) : g.c(qVar) ? new g(aVar) : h.a(qVar) ? new h(aVar) : i.a(qVar) ? new i(aVar) : c.a(qVar) ? new c(aVar) : new d(aVar);
    }
}
