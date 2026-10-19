package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import com.bytedance.component.sdk.annotation.ColorInt;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;

/* JADX INFO: loaded from: classes.dex */
public class DynamicRoot extends DynamicBaseWidgetImp {
    public b a;

    public DynamicRoot(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    protected GradientDrawable a(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        b bVar = new b(orientation, iArr);
        this.a = bVar;
        return bVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    protected b a(Bitmap bitmap) {
        a aVar = new a(bitmap, this.a);
        this.a = aVar;
        return aVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    protected GradientDrawable getDrawable() {
        b bVar = new b();
        this.a = bVar;
        return bVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        return super.i();
    }
}
