package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.core.widget.TwoSemicirclesView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class PAGLoadingBaseLayout extends PAGRelativeLayout {
    TTRoundRectImageView a;
    PAGTextView b;
    PAGProgressBar c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    PAGTextView f1415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    PAGLogoView f1416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    PAGLinearLayout f1417f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TwoSemicirclesView f1418g;
    TwoSemicirclesView h;

    public PAGLoadingBaseLayout(@NonNull Context context) {
        super(context);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        setBackgroundColor(Color.parseColor("#161823"));
    }

    public void a(Context context) {
        this.f1416e = new PAGLogoView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, ad.b(context, 14.0f));
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginStart(ad.b(context, 20.0f));
        }
        layoutParams.leftMargin = ad.b(context, 20.0f);
        layoutParams.bottomMargin = ad.b(context, 20.0f);
        layoutParams.addRule(12);
        this.f1416e.setLayoutParams(layoutParams);
    }

    @Nullable
    public TwoSemicirclesView getInnerCircle() {
        return this.f1418g;
    }

    @Nullable
    public PAGTextView getLoadingAppName() {
        return this.b;
    }

    @Nullable
    public TTRoundRectImageView getLoadingIcon() {
        return this.a;
    }

    @Nullable
    public PAGLogoView getLoadingLogo() {
        return this.f1416e;
    }

    @Nullable
    public PAGProgressBar getLoadingProgressBar() {
        return this.c;
    }

    @Nullable
    public PAGTextView getLoadingProgressNumber() {
        return this.f1415d;
    }

    @Nullable
    public TwoSemicirclesView getOuterCircle() {
        return this.h;
    }

    @Nullable
    public PAGLinearLayout getWaveContainer() {
        return this.f1417f;
    }
}
