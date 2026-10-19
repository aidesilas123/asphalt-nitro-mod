package com.bytedance.sdk.openadsdk.common;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.p;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: LandingPageLoadingDefaultStyle.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends e {
    ObjectAnimator a;
    private AnimatorSet h;
    private LinearLayout i;

    public c(Context context, String str, String[] strArr, n nVar, p pVar) {
        super(context, str, strArr, nVar, pVar);
    }

    private View f() {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(this.f1260f);
        pAGLinearLayout.setGravity(17);
        pAGLinearLayout.setOrientation(1);
        LinearLayout linearLayout = new LinearLayout(this.f1260f);
        this.i = linearLayout;
        if (Build.VERSION.SDK_INT >= 17) {
            linearLayout.setLayoutDirection(0);
        }
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, ad.b(this.f1260f, 60.0f));
        this.i.setGravity(17);
        this.i.setOrientation(0);
        pAGLinearLayout.addView(this.i, layoutParams);
        int iB = ad.b(this.f1260f, 17.0f);
        int iB2 = ad.b(this.f1260f, 35.0f);
        int iB3 = ad.b(this.f1260f, 1.5f);
        View view = new View(this.f1260f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iB, iB2);
        int i = -iB3;
        layoutParams2.rightMargin = i;
        view.setBackgroundResource(s.d(this.f1260f, "tt_ad_landing_loading_three_left"));
        this.i.addView(view, layoutParams2);
        View view2 = new View(this.f1260f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(iB, iB2);
        layoutParams3.rightMargin = i;
        view2.setBackgroundResource(s.d(this.f1260f, "tt_ad_landing_loading_three_mid"));
        this.i.addView(view2, layoutParams3);
        View view3 = new View(this.f1260f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(iB, iB2);
        view3.setBackgroundResource(s.d(this.f1260f, "tt_ad_landing_loading_three_mid"));
        this.i.addView(view3, layoutParams4);
        View view4 = new View(this.f1260f);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(iB, iB2);
        layoutParams5.leftMargin = i;
        view4.setBackgroundResource(s.d(this.f1260f, "tt_ad_landing_loading_three_mid"));
        this.i.addView(view4, layoutParams5);
        View view5 = new View(this.f1260f);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(iB, iB2);
        layoutParams6.leftMargin = i;
        view5.setBackgroundResource(s.d(this.f1260f, "tt_ad_landing_loading_three_right"));
        this.i.addView(view5, layoutParams6);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(this.f1260f);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams7.topMargin = ad.b(this.f1260f, 10.0f);
        pAGLinearLayout2.setGravity(17);
        pAGLinearLayout2.setOrientation(0);
        pAGLinearLayout.addView(pAGLinearLayout2, layoutParams7);
        PAGTextView pAGTextView = new PAGTextView(this.f1260f);
        pAGTextView.setId(com.bytedance.sdk.openadsdk.utils.i.bt);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams8.gravity = 17;
        pAGTextView.setGravity(17);
        pAGTextView.setPadding(ad.b(this.f1260f, 10.0f), 0, 0, 0);
        pAGTextView.setText(s.a(this.f1260f, "tt_loading_language"));
        pAGTextView.setTextColor(Color.parseColor("#80161823"));
        pAGTextView.setTextSize(14.0f);
        pAGLinearLayout2.addView(pAGTextView, layoutParams8);
        p pVar = this.f1261g;
        if (pVar != null) {
            pAGTextView.setText(pVar.c());
        }
        return pAGLinearLayout;
    }

    @Override // com.bytedance.sdk.openadsdk.common.e
    protected void a() {
        this.f1259e = f();
    }

    @Override // com.bytedance.sdk.openadsdk.common.e
    public void a(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.common.e
    public void b() {
        this.h = new AnimatorSet();
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(linearLayout.getChildAt(0), "translationY", -9.0f, 9.0f).setDuration(300L);
            this.a = duration;
            duration.setRepeatMode(2);
            this.a.setRepeatCount(-1);
            AnimatorSet.Builder builderPlay = this.h.play(this.a);
            for (int i = 1; i < this.i.getChildCount(); i++) {
                float f2 = i % 2 == 0 ? 9.0f : -9.0f;
                ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.i.getChildAt(i), "translationY", -f2, f2).setDuration(300L);
                duration2.setRepeatMode(2);
                duration2.setRepeatCount(-1);
                builderPlay = builderPlay.with(duration2);
            }
            this.h.start();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.common.e
    public void c() {
        ObjectAnimator objectAnimator = this.a;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        AnimatorSet animatorSet = this.h;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.common.e
    public void d() {
        super.d();
    }
}
