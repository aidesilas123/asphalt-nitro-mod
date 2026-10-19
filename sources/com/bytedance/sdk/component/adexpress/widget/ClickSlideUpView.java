package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.animation.CycleInterpolator;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.layout.TTDynamicClickSlideUp;

/* JADX INFO: loaded from: classes.dex */
public class ClickSlideUpView extends SlideUpView {
    private TextView a;
    private TTDynamicClickSlideUp b;
    private AnimatorSet c;

    public ClickSlideUpView(Context context) {
        super(context);
        this.c = new AnimatorSet();
        b(context);
    }

    private void b(Context context) {
        this.b = new TTDynamicClickSlideUp(context);
        setClipChildren(false);
        addView(this.b);
        this.a = this.b.getTvButText();
    }

    private void d() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b.getBgContainer(), "translationY", 0.0f, e.a(getContext(), -3.0f));
        objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.b.getBgContainer(), "alpha", 1.0f, 0.8f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.c.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.c.setDuration(1000L);
        this.c.start();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void a() {
        d();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    protected void a(Context context) {
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void b() {
        this.c.cancel();
    }

    public void setButtonText(String str) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.a.setText(str);
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void setSlideText(String str) {
        if (this.b.getTvButText() != null) {
            if (TextUtils.isEmpty(str)) {
                this.b.getTvButText().setText("");
            } else {
                this.b.getTvButText().setText(str);
            }
        }
    }
}
