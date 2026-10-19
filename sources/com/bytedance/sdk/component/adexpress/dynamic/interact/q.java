package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.DynamicUnlockView;

/* JADX INFO: compiled from: UnlockInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class q implements g<DynamicUnlockView> {
    private final DynamicUnlockView a;

    public q(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        DynamicUnlockView dynamicUnlockView = new DynamicUnlockView(context);
        this.a = dynamicUnlockView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(context, gVar.N() > 0 ? gVar.N() : 0.0f);
        dynamicUnlockView.setLayoutParams(layoutParams);
        dynamicUnlockView.setClipChildren(false);
        dynamicUnlockView.setText(gVar.R());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        DynamicUnlockView dynamicUnlockView = this.a;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.a();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
        DynamicUnlockView dynamicUnlockView = this.a;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.b();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public DynamicUnlockView c() {
        return this.a;
    }
}
