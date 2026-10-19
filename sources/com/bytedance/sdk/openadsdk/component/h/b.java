package com.bytedance.sdk.openadsdk.component.h;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: TTAppOpenVideoController.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends com.bytedance.sdk.openadsdk.core.video.c.a {
    public b(Context context, ViewGroup viewGroup, q qVar) {
        super(context, viewGroup, qVar, null);
    }

    public void a(o.a aVar) {
        com.bytedance.sdk.openadsdk.b.d.a.a.a(this.f1696f, aVar, (g) null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void r() {
        o.a aVar = new o.a();
        aVar.a(e());
        aVar.c(h());
        aVar.b(f());
        aVar.d(g());
        com.bytedance.sdk.openadsdk.b.d.a.a.e(this.f1696f, aVar);
    }
}
