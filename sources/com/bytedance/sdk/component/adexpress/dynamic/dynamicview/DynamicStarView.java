package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.os.Build;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.adexpress.widget.TTRatingBar2;

/* JADX INFO: loaded from: classes.dex */
public class DynamicStarView extends DynamicBaseWidgetImp {
    private int a;

    public DynamicStarView(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        this.a = 0;
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context, null);
        this.o = tTRatingBar2;
        tTRatingBar2.setTag(Integer.valueOf(getClickArea()));
        addView(this.o, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void f() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f753g, this.h);
        layoutParams.topMargin = this.j;
        int i = this.i + this.a;
        layoutParams.leftMargin = i;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(i);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        int iA = (int) ((com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a(), this.l.e()) * 5.0f) + com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a(), this.l.c() + com.bytedance.sdk.component.adexpress.c.e.a(com.bytedance.sdk.component.adexpress.d.a(), this.l.d())));
        if (this.f753g > iA && 4 == this.l.h()) {
            this.a = (this.f753g - iA) / 2;
        }
        this.f753g = iA;
        return new FrameLayout.LayoutParams(this.f753g, this.h);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        DynamicRootView dynamicRootView;
        super.i();
        double dM = this.l.m();
        if (com.bytedance.sdk.component.adexpress.d.b() && (dM < 0.0d || dM > 5.0d || ((dynamicRootView = this.n) != null && dynamicRootView.getRenderRequest() != null && this.n.getRenderRequest().j() != 4))) {
            this.o.setVisibility(8);
            return true;
        }
        double d2 = (dM < 0.0d || dM > 5.0d) ? 5.0d : dM;
        this.o.setVisibility(0);
        ((TTRatingBar2) this.o).a(d2, this.l.g(), (int) this.l.e(), ((int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.b())) + ((int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.a())) + ((int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.e())));
        return true;
    }
}
