package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.CircleLongPressView;

/* JADX INFO: compiled from: CircleLongPressInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements g {
    private CircleLongPressView a;

    public c(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        this.a = new CircleLongPressView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.c.e.a(context, 180.0f), (int) com.bytedance.sdk.component.adexpress.c.e.a(context, 180.0f));
        layoutParams.gravity = 17;
        this.a.setLayoutParams(layoutParams);
        this.a.setGuideText(gVar.R());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        this.a.a();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
        this.a.b();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public CircleLongPressView c() {
        return this.a;
    }
}
