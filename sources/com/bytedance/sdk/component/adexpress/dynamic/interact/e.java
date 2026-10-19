package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView2;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;

/* JADX INFO: compiled from: ClickSlideUpInteract2.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends p<ClickSlideUpView> {
    public e(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        super(context, dynamicBaseWidget, gVar);
        a(gVar);
    }

    private void a(com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        this.a = new ClickSlideUpView2(this.b);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 81;
        this.a.setLayoutParams(layoutParams);
        SlideUpView slideUpView = this.a;
        if (slideUpView instanceof ClickSlideUpView2) {
            ((ClickSlideUpView2) slideUpView).setButtonText(this.f787d.R());
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
