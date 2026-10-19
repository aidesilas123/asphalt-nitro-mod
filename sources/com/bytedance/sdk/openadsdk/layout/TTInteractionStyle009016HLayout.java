package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class TTInteractionStyle009016HLayout extends TTInteractionStyleBaseFrameLayout {
    public TTInteractionStyle009016HLayout(Context context) {
        this(context, null);
    }

    public TTInteractionStyle009016HLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTInteractionStyle009016HLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected void a(Context context) {
        int iB = ad.b(context, 10.0f);
        int iB2 = ad.b(context, 5.0f);
        int iB3 = ad.b(context, 6.0f);
        int iB4 = ad.b(context, 16.0f);
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        pAGRelativeLayout.setLayoutParams(layoutParams);
        addView(pAGRelativeLayout);
        PAGFrameLayout pAGFrameLayoutE = e(context);
        this.a = pAGFrameLayoutE;
        pAGFrameLayoutE.setId(i.aA);
        this.a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        pAGRelativeLayout.addView(this.a);
        PAGImageView pAGImageViewF = f(context);
        this.b = pAGImageViewF;
        pAGImageViewF.setId(i.az);
        this.b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        pAGRelativeLayout.addView(this.b);
        PAGRelativeLayout pAGRelativeLayout2 = new PAGRelativeLayout(context);
        int i = i.ar;
        pAGRelativeLayout2.setId(i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, ad.b(context, 48.0f));
        layoutParams2.setMargins(iB2, iB2, iB2, iB2);
        layoutParams2.addRule(12);
        pAGRelativeLayout2.setBackgroundResource(s.d(context, "center_vertical"));
        pAGRelativeLayout2.setGravity(16);
        pAGRelativeLayout2.setLayoutParams(layoutParams2);
        pAGRelativeLayout.addView(pAGRelativeLayout2);
        TTRoundRectImageView tTRoundRectImageViewG = g(context);
        this.c = tTRoundRectImageViewG;
        int i2 = i.as;
        tTRoundRectImageViewG.setId(i2);
        int iB5 = ad.b(context, 25.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iB5, iB5);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 17) {
            layoutParams3.addRule(20);
        }
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        this.c.setLayoutParams(layoutParams3);
        pAGRelativeLayout2.addView(this.c);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -1);
        if (i3 >= 17) {
            layoutParams4.addRule(17, i2);
        }
        layoutParams4.addRule(1, i2);
        pAGLinearLayout.setLayoutParams(layoutParams4);
        pAGLinearLayout.setGravity(16);
        pAGLinearLayout.setOrientation(1);
        pAGRelativeLayout2.addView(pAGLinearLayout);
        PAGTextView pAGTextViewB = b(context);
        this.f1832d = pAGTextViewB;
        pAGTextViewB.setId(i.ax);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.leftMargin = iB3;
        if (i3 >= 17) {
            layoutParams5.setMarginStart(iB3);
        }
        this.f1832d.setLayoutParams(layoutParams5);
        pAGLinearLayout.addView(this.f1832d);
        PAGTextView pAGTextViewC = c(context);
        this.f1833e = pAGTextViewC;
        pAGTextViewC.setId(i.ay);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.leftMargin = iB3;
        if (i3 >= 17) {
            layoutParams6.setMarginStart(iB3);
        }
        this.f1833e.setLayoutParams(layoutParams6);
        pAGLinearLayout.addView(this.f1833e);
        PAGTextView pAGTextViewD = d(context);
        this.f1834f = pAGTextViewD;
        pAGTextViewD.setId(i.at);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        if (i3 >= 17) {
            layoutParams7.addRule(21);
        }
        layoutParams7.addRule(11);
        layoutParams7.addRule(15);
        this.f1834f.setLayoutParams(layoutParams7);
        int iB6 = ad.b(context, 4.0f);
        this.f1834f.setPadding(iB6, iB6, iB6, iB6);
        pAGRelativeLayout2.addView(this.f1834f);
        View viewH = h(context);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(2, i);
        layoutParams8.leftMargin = iB4;
        layoutParams8.bottomMargin = iB;
        viewH.setLayoutParams(layoutParams8);
        pAGRelativeLayout.addView(viewH);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected PAGTextView b(Context context) {
        PAGTextView pAGTextViewB = super.b(context);
        pAGTextViewB.setGravity(16);
        pAGTextViewB.setMaxWidth(ad.b(context, 53.0f));
        pAGTextViewB.setTextColor(-1);
        pAGTextViewB.setTextSize(2, 10.0f);
        return pAGTextViewB;
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected PAGTextView c(Context context) {
        PAGTextView pAGTextViewC = super.c(context);
        pAGTextViewC.setGravity(16);
        pAGTextViewC.setMaxWidth(ad.b(context, 53.0f));
        pAGTextViewC.setTextColor(-1);
        pAGTextViewC.setTextSize(2, 8.0f);
        return pAGTextViewC;
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected PAGTextView d(Context context) {
        PAGTextView pAGTextViewD = super.d(context);
        pAGTextViewD.setBackgroundResource(s.d(context, "tt_download_corner_bg"));
        pAGTextViewD.setTextSize(2, 8.0f);
        return pAGTextViewD;
    }
}
