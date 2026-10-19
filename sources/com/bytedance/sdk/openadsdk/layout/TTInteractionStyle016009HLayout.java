package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class TTInteractionStyle016009HLayout extends TTInteractionStyleBaseFrameLayout {
    public TTInteractionStyle016009HLayout(Context context) {
        this(context, null);
    }

    public TTInteractionStyle016009HLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTInteractionStyle016009HLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected void a(Context context) {
        int iB = ad.b(context, 10.0f);
        int iB2 = ad.b(context, 16.0f);
        int iB3 = ad.b(context, 15.0f);
        int iB4 = ad.b(context, 20.0f);
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
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, ad.b(context, 60.0f));
        layoutParams2.addRule(12);
        layoutParams2.rightMargin = iB3;
        layoutParams2.leftMargin = iB3;
        layoutParams2.bottomMargin = iB3;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            layoutParams2.setMarginEnd(iB3);
            layoutParams2.setMarginStart(iB3);
        }
        pAGRelativeLayout2.setBackgroundColor(Color.parseColor("#26000000"));
        pAGRelativeLayout2.setLayoutParams(layoutParams2);
        pAGRelativeLayout.addView(pAGRelativeLayout2);
        TTRoundRectImageView tTRoundRectImageViewG = g(context);
        this.c = tTRoundRectImageViewG;
        int i3 = i.as;
        tTRoundRectImageViewG.setId(i3);
        int iB5 = ad.b(context, 50.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iB5, iB5);
        if (i2 >= 17) {
            layoutParams3.addRule(20);
        }
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        this.c.setLayoutParams(layoutParams3);
        pAGRelativeLayout2.addView(this.c);
        PAGTextView pAGTextViewB = b(context);
        this.f1832d = pAGTextViewB;
        pAGTextViewB.setId(i.ax);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(15);
        layoutParams4.leftMargin = iB4;
        if (i2 >= 17) {
            layoutParams4.setMarginStart(iB4);
        }
        layoutParams4.addRule(1, i3);
        if (i2 >= 17) {
            layoutParams4.addRule(17, i3);
        }
        this.f1832d.setLayoutParams(layoutParams4);
        pAGRelativeLayout2.addView(this.f1832d);
        PAGTextView pAGTextViewD = d(context);
        this.f1834f = pAGTextViewD;
        pAGTextViewD.setId(i.at);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(ad.b(context, 100.0f), ad.b(context, 30.0f));
        if (i2 >= 17) {
            layoutParams5.addRule(21);
        }
        layoutParams5.addRule(11);
        layoutParams5.addRule(15);
        layoutParams5.rightMargin = iB;
        if (i2 >= 17) {
            layoutParams5.setMarginEnd(iB);
        }
        this.f1834f.setLayoutParams(layoutParams5);
        pAGRelativeLayout2.addView(this.f1834f);
        View viewH = h(context);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(2, i);
        layoutParams6.leftMargin = iB2;
        layoutParams6.bottomMargin = iB;
        viewH.setLayoutParams(layoutParams6);
        pAGRelativeLayout.addView(viewH);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected PAGTextView b(Context context) {
        PAGTextView pAGTextViewB = super.b(context);
        pAGTextViewB.setGravity(16);
        pAGTextViewB.setMaxWidth(ad.b(context, 250.0f));
        pAGTextViewB.setTextColor(-1);
        pAGTextViewB.setTextSize(2, 17.0f);
        pAGTextViewB.setText("APP NAME");
        return pAGTextViewB;
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected PAGTextView d(Context context) {
        PAGTextView pAGTextViewD = super.d(context);
        pAGTextViewD.setBackgroundResource(s.d(context, "tt_download_corner_bg"));
        pAGTextViewD.setTextSize(2, 15.0f);
        return pAGTextViewD;
    }
}
