package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.layout.TTDynamicHandShake;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class ShakeClickView extends ShakeAnimationView {
    private TextView a;

    public ShakeClickView(Context context, View view, int i, int i2, int i3) {
        super(context, view, i, i2, i3);
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView
    protected void a(Context context, View view) {
        addView(view);
        if (view instanceof TTDynamicHandShake) {
            this.a = ((TTDynamicHandShake) view).getTvButText();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView
    public void setShakeText(String str) {
        if (this.a == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.a.setText(str);
            return;
        }
        try {
            this.a.setText(s.b(this.a.getContext(), "tt_splash_default_click_shake"));
        } catch (Exception e2) {
            l.e("shakeClickView", e2.getMessage());
        }
    }
}
