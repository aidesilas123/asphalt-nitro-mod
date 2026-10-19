package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.layout.TTDynamicClickSlideUp2;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX INFO: loaded from: classes.dex */
public class ClickSlideUpView2 extends SlideUpView {
    private TextView a;
    private ImageView b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AnimatorSet f829f;

    public ClickSlideUpView2(Context context) {
        super(context);
        this.f829f = new AnimatorSet();
        b(context);
    }

    private void b(Context context) {
        TTDynamicClickSlideUp2 tTDynamicClickSlideUp2 = new TTDynamicClickSlideUp2(context);
        addView(tTDynamicClickSlideUp2);
        this.b = tTDynamicClickSlideUp2.getIv1();
        this.c = tTDynamicClickSlideUp2.getIv2();
        this.f827d = tTDynamicClickSlideUp2.getIv3();
        this.a = tTDynamicClickSlideUp2.getTvButText();
    }

    private void d() {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
        objectAnimatorOfInt.setDuration(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        objectAnimatorOfInt.setRepeatCount(-1);
        objectAnimatorOfInt.start();
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
        this.f829f.cancel();
    }

    public float getAlphaColor() {
        return this.f828e;
    }

    public void setAlphaColor(int i) {
        if (i < 0 || i > 60) {
            return;
        }
        int i2 = i + 195;
        this.f827d.setColorFilter(Color.rgb(i2, i2, i2), PorterDuff.Mode.SRC_IN);
        int i3 = ((i + 20) % 60) + 195;
        this.c.setColorFilter(Color.rgb(i3, i3, i3), PorterDuff.Mode.SRC_IN);
        int i4 = ((i + 40) % 60) + 195;
        this.b.setColorFilter(Color.rgb(i4, i4, i4), PorterDuff.Mode.SRC_IN);
    }

    public void setButtonText(String str) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.a.setText(str);
    }
}
