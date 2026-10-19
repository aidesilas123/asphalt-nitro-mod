package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGPAGLoadingThreeLayout extends PAGLoadingBaseLayout {
    public PAGPAGLoadingThreeLayout(Context context) {
        super(context);
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        this.f1417f = pAGLinearLayout;
        pAGLinearLayout.setId(520093750);
        this.f1417f.setLayoutParams(new LinearLayout.LayoutParams(-1, ad.b(context, 60.0f)));
        this.f1417f.setOrientation(0);
        this.f1417f.setGravity(17);
        int iB = ad.b(context, 17.0f);
        int iB2 = ad.b(context, 35.0f);
        int iB3 = ad.b(context, -1.5f);
        View view = new View(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iB, iB2);
        layoutParams2.rightMargin = iB3;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            layoutParams2.setMarginEnd(iB3);
        }
        view.setLayoutParams(layoutParams2);
        view.setBackground(s.c(context, "tt_ad_loading_three_left"));
        View view2 = new View(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(iB, iB2);
        layoutParams3.rightMargin = iB3;
        if (i >= 17) {
            layoutParams3.setMarginEnd(iB3);
        }
        view2.setLayoutParams(layoutParams3);
        view2.setBackground(s.c(context, "tt_ad_loading_three_mid"));
        View view3 = new View(context);
        view3.setLayoutParams(new LinearLayout.LayoutParams(iB, iB2));
        view3.setBackground(s.c(context, "tt_ad_loading_three_mid"));
        View view4 = new View(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(iB, iB2);
        layoutParams4.leftMargin = iB3;
        if (i >= 17) {
            layoutParams4.setMarginStart(iB3);
        }
        view4.setLayoutParams(layoutParams4);
        view4.setBackground(s.c(context, "tt_ad_loading_three_mid"));
        View view5 = new View(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(iB, iB2);
        layoutParams5.leftMargin = iB3;
        if (i >= 17) {
            layoutParams5.setMarginStart(iB3);
        }
        view5.setLayoutParams(layoutParams5);
        view5.setBackground(s.c(context, "tt_ad_loading_three_right"));
        this.f1417f.addView(view);
        this.f1417f.addView(view2);
        this.f1417f.addView(view3);
        this.f1417f.addView(view4);
        this.f1417f.addView(view5);
        LinearLayout linearLayout2 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams6.topMargin = ad.b(context, 10.0f);
        linearLayout2.setLayoutParams(layoutParams6);
        linearLayout2.setGravity(17);
        linearLayout2.setOrientation(0);
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        pAGTextView.setTextColor(Color.parseColor("#FFFFFF"));
        pAGTextView.setTextSize(1, 30.0f);
        pAGTextView.setText("Loading ");
        PAGTextView pAGTextView2 = new PAGTextView(context);
        this.f1415d = pAGTextView2;
        pAGTextView2.setId(520093749);
        this.f1415d.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f1415d.setTextColor(Color.parseColor("#FFFFFF"));
        this.f1415d.setTextSize(1, 30.0f);
        PAGTextView pAGTextView3 = new PAGTextView(context);
        pAGTextView3.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        pAGTextView3.setTextColor(Color.parseColor("#FFFFFF"));
        pAGTextView3.setTextSize(1, 30.0f);
        pAGTextView3.setText("%");
        linearLayout2.addView(pAGTextView);
        linearLayout2.addView(this.f1415d);
        linearLayout2.addView(pAGTextView3);
        linearLayout.addView(this.f1417f);
        linearLayout.addView(linearLayout2);
        a(context);
        addView(linearLayout);
        addView(this.f1416e);
    }
}
