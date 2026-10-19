package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGAppOpenTopBarView extends PAGRelativeLayout {
    private final PAGTextView a;
    private final PAGTextView b;

    public PAGAppOpenTopBarView(@NonNull Context context) {
        super(context);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int iB = ad.b(context, 12.0f);
        int iB2 = ad.b(context, 16.0f);
        int iB3 = ad.b(context, 20.0f);
        int iB4 = ad.b(context, 24.0f);
        PAGTextView pAGTextView = new PAGTextView(context);
        this.a = pAGTextView;
        pAGTextView.setId(520093713);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iB4);
        layoutParams.topMargin = iB3;
        layoutParams.leftMargin = iB2;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            layoutParams.setMarginStart(iB2);
        }
        pAGTextView.setLayoutParams(layoutParams);
        pAGTextView.setBackground(s.c(context, "tt_app_open_top_bg"));
        pAGTextView.setGravity(17);
        pAGTextView.setPadding(iB, 0, iB, 0);
        pAGTextView.setText(s.a(context, "tt_reward_feedback"));
        pAGTextView.setTextColor(Color.parseColor("#ffffff"));
        pAGTextView.setTextSize(1, 14.0f);
        PAGTextView pAGTextView2 = new PAGTextView(context);
        this.b = pAGTextView2;
        pAGTextView2.setId(520093714);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, iB4);
        layoutParams2.topMargin = iB3;
        layoutParams2.rightMargin = iB2;
        if (i >= 17) {
            layoutParams2.setMarginEnd(iB2);
        }
        layoutParams2.addRule(11);
        if (i >= 17) {
            layoutParams2.addRule(21);
        }
        pAGTextView2.setLayoutParams(layoutParams2);
        pAGTextView2.setBackground(s.c(context, "tt_app_open_top_bg"));
        pAGTextView2.setGravity(17);
        pAGTextView2.setPadding(iB, 0, iB, 0);
        pAGTextView2.setText(s.b(context, "tt_txt_skip"));
        pAGTextView2.setTextColor(Color.parseColor("#ffffff"));
        pAGTextView2.setTextSize(1, 14.0f);
        addView(pAGTextView);
        addView(pAGTextView2);
    }

    public PAGTextView getTopDislike() {
        return this.a;
    }

    public PAGTextView getTopSkip() {
        return this.b;
    }
}
