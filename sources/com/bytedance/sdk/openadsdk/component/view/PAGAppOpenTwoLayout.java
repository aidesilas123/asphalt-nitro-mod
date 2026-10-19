package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.DSPAdChoice;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGAppOpenTwoLayout extends PAGAppOpenBaseLayout {
    public PAGAppOpenTwoLayout(Context context) {
        super(context);
        setId(520093753);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(Color.parseColor("#000000"));
        int iB = ad.b(context, 8.0f);
        int iB2 = ad.b(context, 9.0f);
        int iB3 = ad.b(context, 10.0f);
        int iB4 = ad.b(context, 20.0f);
        int iB5 = ad.b(context, 40.0f);
        PAGImageView pAGImageView = new PAGImageView(context);
        this.a = pAGImageView;
        pAGImageView.setId(520093754);
        this.a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.a.setScaleType(ImageView.ScaleType.FIT_XY);
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        this.b = pAGFrameLayout;
        pAGFrameLayout.setId(520093755);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.b.setLayoutParams(layoutParams);
        PAGImageView pAGImageView2 = new PAGImageView(context);
        this.c = pAGImageView2;
        pAGImageView2.setId(520093756);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        PAGLogoView pAGLogoView = new PAGLogoView(context);
        this.f1442d = pAGLogoView;
        pAGLogoView.setId(520093757);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, ad.b(context, 14.0f));
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            layoutParams2.setMarginStart(iB3);
        }
        layoutParams2.leftMargin = iB3;
        layoutParams2.bottomMargin = iB3;
        layoutParams2.addRule(12);
        this.f1442d.setLayoutParams(layoutParams2);
        DSPAdChoice dSPAdChoice = new DSPAdChoice(context);
        this.m = dSPAdChoice;
        dSPAdChoice.setPadding(iB2, 0, iB2, 0);
        this.m.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ad.b(context, 32.0f), ad.b(context, 14.0f));
        layoutParams3.addRule(12);
        layoutParams3.addRule(11);
        layoutParams3.setMargins(0, 0, iB3, iB3);
        this.m.setLayoutParams(layoutParams3);
        ButtonFlash buttonFlash = new ButtonFlash(context);
        this.f1443e = buttonFlash;
        buttonFlash.setId(520093717);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(ad.b(context, 236.0f), ad.b(context, 48.0f));
        layoutParams4.addRule(2, 520093758);
        layoutParams4.addRule(14);
        layoutParams4.bottomMargin = ad.b(context, 24.0f);
        this.f1443e.setLayoutParams(layoutParams4);
        this.f1443e.setBackground(s.c(context, "tt_button_back"));
        this.f1443e.setEllipsize(TextUtils.TruncateAt.END);
        this.f1443e.setGravity(17);
        this.f1443e.setLines(1);
        this.f1443e.setText(s.b(context, "tt_video_download_apk"));
        this.f1443e.setTextColor(Color.parseColor("#FFFFFF"));
        this.f1443e.setTextSize(1, 18.0f);
        this.f1443e.setTag("open_ad_click_button_tag");
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        this.f1444f = pAGLinearLayout;
        pAGLinearLayout.setId(520093758);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, ad.b(context, 60.0f));
        layoutParams5.addRule(12);
        layoutParams5.addRule(14);
        layoutParams5.leftMargin = iB4;
        layoutParams5.rightMargin = iB4;
        layoutParams5.bottomMargin = ad.b(context, 34.0f);
        if (i >= 17) {
            layoutParams5.setMarginStart(iB4);
            layoutParams5.setMarginEnd(iB4);
        }
        this.f1444f.setLayoutParams(layoutParams5);
        this.f1444f.setBackground(s.c(context, "tt_user_info"));
        this.f1444f.setClickable(false);
        this.f1444f.setGravity(17);
        this.f1444f.setOrientation(0);
        this.f1444f.setPadding(iB4, 0, iB4, 0);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.f1445g = tTRoundRectImageView;
        tTRoundRectImageView.setId(520093759);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(iB5, iB5);
        layoutParams6.rightMargin = iB;
        if (i >= 17) {
            layoutParams6.setMarginEnd(iB);
        }
        this.f1445g.setLayoutParams(layoutParams6);
        PAGTextView pAGTextView = new PAGTextView(context);
        this.h = pAGTextView;
        pAGTextView.setId(520093761);
        this.h.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.h.setEllipsize(TextUtils.TruncateAt.END);
        this.h.setMaxLines(2);
        this.h.setTextColor(Color.parseColor("#161823"));
        this.h.setTextSize(1, 22.0f);
        this.f1444f.addView(this.f1445g);
        this.f1444f.addView(this.h);
        addView(this.a);
        addView(this.b);
        addView(this.c);
        addView(this.f1442d);
        addView(this.m);
        addView(this.f1443e);
        addView(this.f1444f);
        addView(this.i);
    }
}
