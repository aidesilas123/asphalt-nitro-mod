package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.BluePressInteractView;

/* JADX INFO: compiled from: BluePressInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements g {
    private BluePressInteractView a;

    public a(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        double dZ = gVar.Z();
        dZ = dZ == 0.0d ? 1.0d : dZ;
        double dAa = gVar.aa();
        double d2 = dAa != 0.0d ? dAa : 1.0d;
        int dynamicWidth = (int) (((double) dynamicBaseWidget.getDynamicWidth()) * 0.32d * dZ);
        int dynamicWidth2 = (int) (((double) dynamicBaseWidget.getDynamicWidth()) * 0.32d * d2);
        this.a = new BluePressInteractView(context, dynamicWidth, dynamicWidth2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicWidth, dynamicWidth2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(context, gVar.X() - 7);
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(context, gVar.Y() - 3);
        this.a.setLayoutParams(layoutParams);
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
    public ViewGroup c() {
        return this.a;
    }
}
