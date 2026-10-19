package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView;

/* JADX INFO: compiled from: BrushMaskInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements g<DynamicBrushMaskView> {
    private DynamicBrushMaskView a;

    public b(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        this.a = new DynamicBrushMaskView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(context, gVar.N() > 0 ? gVar.N() : 0.0f);
        this.a.setLayoutParams(layoutParams);
        this.a.setClipChildren(false);
        this.a.setBrushText(gVar.R());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        DynamicBrushMaskView dynamicBrushMaskView = this.a;
        if (dynamicBrushMaskView != null) {
            dynamicBrushMaskView.a();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
        DynamicBrushMaskView dynamicBrushMaskView = this.a;
        if (dynamicBrushMaskView != null) {
            dynamicBrushMaskView.c();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public DynamicBrushMaskView c() {
        return this.a;
    }
}
