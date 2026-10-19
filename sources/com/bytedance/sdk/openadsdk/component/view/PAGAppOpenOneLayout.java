package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGAppOpenOneLayout extends PAGAppOpenBaseLayout {
    public PAGAppOpenOneLayout(Context context) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(Color.parseColor("#000000"));
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        pAGLinearLayout.setOrientation(1);
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        pAGRelativeLayout.setId(520093753);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 84.0f;
        pAGRelativeLayout.setLayoutParams(layoutParams);
        PAGImageView pAGImageView = new PAGImageView(context);
        this.a = pAGImageView;
        pAGImageView.setId(520093754);
        this.a.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.a.setScaleType(ImageView.ScaleType.FIT_XY);
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        this.b = pAGFrameLayout;
        pAGFrameLayout.setId(520093755);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        this.b.setLayoutParams(layoutParams2);
        PAGImageView pAGImageView2 = new PAGImageView(context);
        this.c = pAGImageView2;
        pAGImageView2.setId(520093756);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        PAGLogoView pAGLogoView = new PAGLogoView(context);
        this.f1442d = pAGLogoView;
        pAGLogoView.setId(520093757);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, ad.b(context, 14.0f));
        layoutParams3.addRule(12);
        this.f1442d.setLayoutParams(layoutParams3);
        View viewA = a(context);
        pAGRelativeLayout.addView(this.a);
        pAGRelativeLayout.addView(this.b);
        pAGRelativeLayout.addView(this.c);
        pAGRelativeLayout.addView(this.f1442d);
        pAGRelativeLayout.addView(viewA);
        pAGRelativeLayout.addView(this.i);
        int iB = ad.b(context, 2.0f);
        int iB2 = ad.b(context, 20.0f);
        int iB3 = ad.b(context, 22.0f);
        int iB4 = ad.b(context, 40.0f);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        this.f1444f = pAGLinearLayout2;
        pAGLinearLayout2.setId(520093758);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 16.0f;
        this.f1444f.setLayoutParams(layoutParams4);
        this.f1444f.setBackgroundColor(Color.parseColor("#FFFFFF"));
        this.f1444f.setClickable(false);
        this.f1444f.setGravity(17);
        this.f1444f.setOrientation(0);
        this.f1444f.setPadding(iB2, 0, iB2, 0);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.f1445g = tTRoundRectImageView;
        tTRoundRectImageView.setId(520093759);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(iB4, iB4);
        layoutParams5.leftMargin = iB;
        layoutParams5.rightMargin = iB3;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams5.setMarginStart(iB);
            layoutParams5.setMarginEnd(iB3);
        }
        this.f1445g.setLayoutParams(layoutParams5);
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
        pAGLinearLayout.addView(pAGRelativeLayout);
        pAGLinearLayout.addView(this.f1444f);
        addView(pAGLinearLayout);
    }

    public View a(Context context) {
        ButtonFlash buttonFlash = new ButtonFlash(context);
        this.f1443e = buttonFlash;
        buttonFlash.setId(520093717);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ad.b(context, 180.0f), ad.b(context, 43.0f));
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.bottomMargin = ad.b(context, 24.0f);
        this.f1443e.setLayoutParams(layoutParams);
        this.f1443e.setBackground(s.c(context, "tt_button_back"));
        this.f1443e.setEllipsize(TextUtils.TruncateAt.END);
        this.f1443e.setGravity(17);
        this.f1443e.setLines(1);
        this.f1443e.setText(s.b(context, "tt_video_download_apk"));
        this.f1443e.setTextColor(Color.parseColor("#FFFFFF"));
        this.f1443e.setTextSize(1, 16.0f);
        this.f1443e.setTag("open_ad_click_button_tag");
        return this.f1443e;
    }
}
