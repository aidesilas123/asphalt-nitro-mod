package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;

/* JADX INFO: compiled from: ClickSlideUpInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends p<ClickSlideUpView> {
    public d(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        super(context, dynamicBaseWidget, gVar);
        a(gVar);
    }

    private void a(com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        this.a = new ClickSlideUpView(this.b);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, gVar.N());
        this.a.setLayoutParams(layoutParams);
        this.a.setSlideText(this.f787d.R());
        SlideUpView slideUpView = this.a;
        if (slideUpView instanceof ClickSlideUpView) {
            ((ClickSlideUpView) slideUpView).setButtonText(this.f787d.j());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.p, com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        this.a.a();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.p, com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
        this.a.b();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.p
    protected void d() {
    }
}
