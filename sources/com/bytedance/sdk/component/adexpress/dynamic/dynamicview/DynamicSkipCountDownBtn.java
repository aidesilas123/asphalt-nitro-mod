package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class DynamicSkipCountDownBtn extends DynamicButton implements com.bytedance.sdk.component.adexpress.dynamic.c {
    private int[] a;
    private int b;
    private int t;

    public DynamicSkipCountDownBtn(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        dynamicRootView.setTimeOutListener(this);
    }

    private void a() {
        int iA = (int) com.bytedance.sdk.component.adexpress.c.e.a(this.k, this.l.e());
        this.b = ((this.h - iA) / 2) - this.l.a();
        this.t = 0;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.c
    @SuppressLint({"SetTextI18n"})
    public void a(CharSequence charSequence, boolean z, int i, boolean z2) {
        String strA = s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_screen_skip_tx");
        if (i == 0) {
            this.o.setVisibility(0);
            ((TextView) this.o).setText("| " + strA);
            this.o.measure(-2, -2);
            this.a = new int[]{this.o.getMeasuredWidth() + 1, this.o.getMeasuredHeight()};
            View view = this.o;
            int[] iArr = this.a;
            view.setLayoutParams(new FrameLayout.LayoutParams(iArr[0], iArr[1]));
            ((TextView) this.o).setGravity(17);
            ((TextView) this.o).setIncludeFontPadding(false);
            a();
            this.o.setPadding(this.l.c(), this.b, this.l.d(), this.t);
        }
        requestLayout();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void f() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f753g, this.h);
        layoutParams.gravity = 8388629;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(layoutParams.leftMargin);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
        }
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicButton, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        ((TextView) this.o).setText("");
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (TextUtils.isEmpty(((TextView) this.o).getText())) {
            setMeasuredDimension(0, this.h);
        } else {
            setMeasuredDimension(this.f753g, this.h);
        }
    }
}
