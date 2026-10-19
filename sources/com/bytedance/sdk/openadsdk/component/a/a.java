package com.bytedance.sdk.openadsdk.component.a;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.n.a.e;
import java.util.HashMap;

/* JADX INFO: compiled from: TTAppOpenAdClickListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends com.bytedance.sdk.openadsdk.core.b.a {
    private final com.bytedance.sdk.openadsdk.component.h.a a;

    public a(@NonNull Context context, @NonNull q qVar, @NonNull String str, int i, com.bytedance.sdk.openadsdk.component.h.a aVar) {
        super(context, qVar, str, i);
        this.a = aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.a, com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
    public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
        if (view.getTag() == "open_ad_click_button_tag") {
            a("click_bar");
        } else {
            a("click_material");
        }
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(this.a.b()));
        a(map);
        super.a(view, f2, f3, f4, f5, sparseArray, z);
        e.a(this.f1457e, 9);
    }
}
