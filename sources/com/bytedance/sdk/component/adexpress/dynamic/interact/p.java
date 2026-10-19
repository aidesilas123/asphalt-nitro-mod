package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;

/* JADX INFO: compiled from: SlideUpInteract.java */
/* JADX INFO: loaded from: classes.dex */
public class p<E extends SlideUpView> implements g<E> {
    protected SlideUpView a;
    protected Context b;
    protected DynamicBaseWidget c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.bytedance.sdk.component.adexpress.dynamic.b.g f787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f788e;

    public p(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar) {
        this(context, dynamicBaseWidget, gVar, 0);
    }

    public p(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.b.g gVar, int i) {
        this.f788e = i;
        this.b = context;
        this.c = dynamicBaseWidget;
        this.f787d = gVar;
        d();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void a() {
        this.a.a();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    public void b() {
        this.a.b();
    }

    protected void d() {
        this.a = new SlideUpView(this.b, this.f787d.K());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, 200.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.b, 100 - this.f788e);
        this.a.setLayoutParams(layoutParams);
        try {
            this.a.setGuideText(this.f787d.R());
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.g
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public E c() {
        return (E) this.a;
    }
}
