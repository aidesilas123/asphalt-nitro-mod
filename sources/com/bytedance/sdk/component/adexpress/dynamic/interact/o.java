package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideUp3DView;

/* JADX INFO: compiled from: SlideUp3DInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class o implements g<SlideUp3DView> {
    private SlideUp3DView a;
    private Context b;
    private DynamicBaseWidget c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.b.g f786d;

    public o(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        this.b = context;
        this.c = dynamicBaseWidget;
        this.f786d = gVar;
        d();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        this.a.b();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
        this.a.c();
    }

    protected void d() {
        this.a = new SlideUp3DView(this.b);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, 250.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, 120.0f);
        this.a.setLayoutParams(layoutParams);
        this.a.setGuideText(this.f786d.R());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public SlideUp3DView c() {
        return this.a;
    }
}
