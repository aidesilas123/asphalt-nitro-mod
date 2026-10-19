package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.AnimationButton;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;

/* JADX INFO: loaded from: classes.dex */
public class DynamicButton extends DynamicBaseWidgetImp {
    public DynamicButton(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        AnimationButton animationButton = new AnimationButton(context);
        this.o = animationButton;
        animationButton.setTag(Integer.valueOf(getClickArea()));
        addView(this.o, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (!com.bytedance.sdk.component.adexpress.d.b() || !"fillButton".equals(this.m.j().b())) {
            return super.getWidgetLayoutParams();
        }
        ((TextView) this.o).setEllipsize(TextUtils.TruncateAt.END);
        ((TextView) this.o).setMaxLines(1);
        FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
        widgetLayoutParams.width -= this.l.r() * 2;
        widgetLayoutParams.height -= this.l.r() * 2;
        widgetLayoutParams.topMargin += this.l.r();
        int iR = widgetLayoutParams.leftMargin + this.l.r();
        widgetLayoutParams.leftMargin = iR;
        if (Build.VERSION.SDK_INT >= 17) {
            widgetLayoutParams.setMarginStart(iR);
            widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
        }
        return widgetLayoutParams;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        if (TextUtils.equals("download-progress-button", this.m.j().b()) && TextUtils.isEmpty(this.l.j())) {
            this.o.setVisibility(4);
            return true;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            this.o.setTextAlignment(this.l.h());
        }
        ((TextView) this.o).setText(this.l.j());
        ((TextView) this.o).setTextColor(this.l.g());
        ((TextView) this.o).setTextSize(this.l.e());
        ((TextView) this.o).setGravity(17);
        ((TextView) this.o).setIncludeFontPadding(false);
        if ("fillButton".equals(this.m.j().b())) {
            this.o.setPadding(0, 0, 0, 0);
        } else {
            this.o.setPadding(this.l.c(), this.l.b(), this.l.d(), this.l.a());
        }
        return true;
    }
}
