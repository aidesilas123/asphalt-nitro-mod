package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class DynamicTimeOuterRewardFullSkip extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.c {
    private boolean a;

    public DynamicTimeOuterRewardFullSkip(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        if (dynamicRootView.getRenderRequest() != null) {
            this.a = dynamicRootView.getRenderRequest().m();
        }
        this.f753g = this.h;
        ImageView imageView = new ImageView(context);
        this.o = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        addView(this.o, getWidgetLayoutParams());
        dynamicRootView.setTimeOutListener(this);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.c
    public void a(CharSequence charSequence, boolean z, int i, boolean z2) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        ((ImageView) this.o).setScaleType(ImageView.ScaleType.CENTER_CROP);
        GradientDrawable gradientDrawable = (GradientDrawable) s.c(getContext(), "tt_ad_skip_btn_bg");
        gradientDrawable.setCornerRadius(this.h / 2);
        gradientDrawable.setColor(this.l.y());
        ((ImageView) this.o).setBackgroundDrawable(gradientDrawable);
        ((ImageView) this.o).setImageResource(this.a ? s.d(getContext(), "tt_close_move_details_normal") : s.d(getContext(), "tt_skip_btn_wrapper"));
        setVisibility(8);
        return true;
    }
}
