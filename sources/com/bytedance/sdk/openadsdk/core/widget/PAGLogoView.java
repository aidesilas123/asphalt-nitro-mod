package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGLogoView extends LinearLayout {
    public PAGLogoView(Context context) {
        this(context, null);
    }

    public PAGLogoView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PAGLogoView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        PAGImageView pAGImageView = new PAGImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ad.b(context, 14.0f), ad.b(context, 5.0f));
        int iB = ad.b(context, 4.0f);
        int iB2 = ad.b(context, 2.0f);
        layoutParams.topMargin = iB;
        layoutParams.bottomMargin = iB;
        layoutParams.leftMargin = iB2;
        pAGImageView.setLayoutParams(layoutParams);
        pAGImageView.setImageDrawable(s.c(context, "tt_ad_logo"));
        PAGTextView pAGTextView = new PAGTextView(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams2.leftMargin = iB2;
        layoutParams2.rightMargin = iB2;
        pAGTextView.setLayoutParams(layoutParams2);
        pAGTextView.setText(s.a(context, "tt_logo_en"));
        pAGTextView.setTextSize(1, 8.0f);
        pAGTextView.setGravity(17);
        pAGTextView.setTextColor(Color.parseColor("#BFFFFFFF"));
        addView(pAGImageView);
        addView(pAGTextView);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#1F161823"));
        gradientDrawable.setCornerRadius(ad.b(context, 2.0f));
        setBackground(gradientDrawable);
        setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        layoutParams.width = -2;
        layoutParams.height = ad.b(getContext(), 13.0f);
        com.bytedance.sdk.openadsdk.core.customview.a.a(layoutParams);
        super.setLayoutParams(layoutParams);
    }
}
