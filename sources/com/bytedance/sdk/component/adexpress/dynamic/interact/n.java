package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideRightView;

/* JADX INFO: compiled from: SlideRightInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class n implements g {
    private SlideRightView a;
    private Context b;
    private DynamicBaseWidget c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.b.g f785d;

    public n(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        this.b = context;
        this.c = dynamicBaseWidget;
        this.f785d = gVar;
        d();
    }

    private void d() {
        this.a = new SlideRightView(this.b);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, 120.0f), (int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, 120.0f));
        layoutParams.gravity = 17;
        this.a.setLayoutParams(layoutParams);
        this.a.setClipChildren(false);
        this.a.setGuideText(this.f785d.R());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        this.a.a();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public ViewGroup c() {
        return this.a;
    }
}
