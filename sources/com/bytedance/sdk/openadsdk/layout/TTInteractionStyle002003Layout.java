package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class TTInteractionStyle002003Layout extends TTInteractionStyleBaseFrameLayout {
    public TTInteractionStyle002003Layout(Context context) {
        this(context, null);
    }

    public TTInteractionStyle002003Layout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTInteractionStyle002003Layout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected void a(Context context) {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        pAGLinearLayout.setOrientation(1);
        addView(pAGLinearLayout);
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 337.0f;
        pAGFrameLayout.setLayoutParams(layoutParams);
        pAGLinearLayout.addView(pAGFrameLayout);
        PAGFrameLayout pAGFrameLayoutE = e(context);
        this.a = pAGFrameLayoutE;
        pAGFrameLayoutE.setId(i.aA);
        this.a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout.addView(this.a);
        PAGImageView pAGImageViewF = f(context);
        this.b = pAGImageViewF;
        pAGImageViewF.setId(i.az);
        this.b.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout.addView(this.b);
        PAGLogoView pAGLogoViewH = h(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 80;
        int iB = ad.b(context, 10.0f);
        layoutParams2.leftMargin = iB;
        layoutParams2.topMargin = iB;
        layoutParams2.bottomMargin = iB;
        pAGLogoViewH.setLayoutParams(layoutParams2);
        pAGFrameLayout.addView(pAGLogoViewH);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 263.0f;
        pAGLinearLayout2.setLayoutParams(layoutParams3);
        pAGLinearLayout2.setOrientation(1);
        pAGLinearLayout2.setGravity(81);
        int iB2 = ad.b(context, 16.0f);
        pAGLinearLayout2.setPadding(iB2, iB2, iB2, iB2);
        pAGLinearLayout.addView(pAGLinearLayout2);
        TTRoundRectImageView tTRoundRectImageViewG = g(context);
        this.c = tTRoundRectImageViewG;
        tTRoundRectImageViewG.setId(i.as);
        int iB3 = ad.b(context, 45.0f);
        this.c.setLayoutParams(new LinearLayout.LayoutParams(iB3, iB3));
        pAGLinearLayout2.addView(this.c);
        PAGTextView pAGTextViewB = b(context);
        this.f1832d = pAGTextViewB;
        pAGTextViewB.setId(i.ax);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = ad.b(context, 4.0f);
        this.f1832d.setLayoutParams(layoutParams4);
        pAGLinearLayout2.addView(this.f1832d);
        PAGTextView pAGTextViewC = c(context);
        this.f1833e = pAGTextViewC;
        pAGTextViewC.setId(i.ay);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.topMargin = iB;
        layoutParams5.bottomMargin = ad.b(context, 25.0f);
        this.f1833e.setLayoutParams(layoutParams5);
        pAGLinearLayout2.addView(this.f1833e);
        PAGTextView pAGTextViewD = d(context);
        this.f1834f = pAGTextViewD;
        pAGTextViewD.setId(i.at);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, ad.b(context, 32.0f));
        layoutParams6.topMargin = iB2;
        this.f1834f.setLayoutParams(layoutParams6);
        pAGLinearLayout2.addView(this.f1834f);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected PAGTextView b(Context context) {
        PAGTextView pAGTextViewB = super.b(context);
        pAGTextViewB.setTextColor(-1);
        return pAGTextViewB;
    }
}
