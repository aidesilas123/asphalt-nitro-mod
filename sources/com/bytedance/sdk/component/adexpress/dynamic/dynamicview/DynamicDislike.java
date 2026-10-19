package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.adexpress.widget.DislikeView;

/* JADX INFO: loaded from: classes.dex */
public class DynamicDislike extends DynamicBaseWidgetImp {
    public DynamicDislike(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        DislikeView dislikeView = new DislikeView(context);
        this.o = dislikeView;
        dislikeView.setTag(3);
        addView(this.o, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.o);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        int iA = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.q());
        View view = this.o;
        if (!(view instanceof DislikeView)) {
            return true;
        }
        ((DislikeView) view).setRadius((int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.o()));
        ((DislikeView) this.o).setStrokeWidth(iA);
        ((DislikeView) this.o).setStrokeColor(this.l.p());
        ((DislikeView) this.o).setBgColor(this.l.y());
        ((DislikeView) this.o).setDislikeColor(this.l.g());
        ((DislikeView) this.o).setDislikeWidth((int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, 1.0f));
        return true;
    }
}
