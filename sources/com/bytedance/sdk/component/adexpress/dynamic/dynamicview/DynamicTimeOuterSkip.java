package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class DynamicTimeOuterSkip extends DynamicButton implements com.bytedance.sdk.component.adexpress.dynamic.c {
    private boolean a;

    public DynamicTimeOuterSkip(Context context, DynamicRootView dynamicRootView, h hVar) {
        super(context, dynamicRootView, hVar);
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() != null) {
            this.a = dynamicRootView.getRenderRequest().m();
        }
    }

    private String a(boolean z) {
        String strA = s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_screen_skip_tx");
        if (!"skip-with-time-skip-btn".equals(this.m.j().b())) {
            return strA;
        }
        if (com.bytedance.sdk.component.adexpress.d.b() && this.a) {
            strA = "X";
        }
        if (z) {
            return strA;
        }
        return "| " + strA;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.c
    public void a(CharSequence charSequence, boolean z, int i, boolean z2) {
        if (z) {
            ((TextView) this.o).setText(a(z2));
            setVisibility(0);
        } else {
            if (z2) {
                ((TextView) this.o).setText(a(z2));
            }
            setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void f() {
        if (TextUtils.equals("skip-with-time-skip-btn", this.m.j().b())) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f753g, this.h);
            layoutParams.gravity = 8388629;
            setLayoutParams(layoutParams);
            if (Build.VERSION.SDK_INT >= 17) {
                this.o.setTextAlignment(1);
            }
            ((TextView) this.o).setGravity(17);
        } else {
            super.f();
        }
        if (!"skip-with-time-skip-btn".equals(this.m.j().b()) && Build.VERSION.SDK_INT >= 17) {
            this.o.setTextAlignment(1);
            ((TextView) this.o).setGravity(17);
        }
        setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicButton, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.d
    public boolean i() {
        super.i();
        if (!TextUtils.equals(this.m.j().b(), "skip-with-time-skip-btn")) {
            return true;
        }
        ((TextView) this.o).setText("");
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (TextUtils.isEmpty(((TextView) this.o).getText())) {
            setMeasuredDimension(0, this.h);
        }
    }
}
