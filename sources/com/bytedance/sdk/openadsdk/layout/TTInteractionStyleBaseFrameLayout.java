package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TTInteractionStyleBaseFrameLayout extends PAGFrameLayout {
    protected PAGFrameLayout a;
    protected PAGImageView b;
    protected TTRoundRectImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected PAGTextView f1832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected PAGTextView f1833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected PAGTextView f1834f;

    public TTInteractionStyleBaseFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    protected abstract void a(Context context);

    protected PAGTextView b(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setMaxLines(1);
        pAGTextView.setTextColor(Color.parseColor("#FF999999"));
        pAGTextView.setTextSize(2, 16.0f);
        return pAGTextView;
    }

    protected PAGTextView c(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setMaxLines(1);
        pAGTextView.setSingleLine();
        pAGTextView.setTextColor(Color.parseColor("#FF999999"));
        pAGTextView.setTextSize(2, 12.0f);
        return pAGTextView;
    }

    protected PAGTextView d(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setBackgroundResource(s.d(context, "tt_backup_btn_1"));
        pAGTextView.setGravity(17);
        pAGTextView.setText(s.b(context, "tt_video_download_apk"));
        pAGTextView.setTextColor(-1);
        pAGTextView.setTextSize(2, 14.0f);
        return pAGTextView;
    }

    protected PAGFrameLayout e(Context context) {
        return new PAGFrameLayout(context);
    }

    protected PAGImageView f(Context context) {
        PAGImageView pAGImageView = new PAGImageView(context);
        pAGImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return pAGImageView;
    }

    protected TTRoundRectImageView g(Context context) {
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        tTRoundRectImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        tTRoundRectImageView.setBackgroundColor(0);
        return tTRoundRectImageView;
    }

    public FrameLayout getTtAdContainer() {
        return this.a;
    }

    public TextView getTtFullAdAppName() {
        return this.f1832d;
    }

    public TextView getTtFullAdDesc() {
        return this.f1833e;
    }

    public TextView getTtFullAdDownload() {
        return this.f1834f;
    }

    public TTRoundRectImageView getTtFullAdIcon() {
        return this.c;
    }

    public ImageView getTtFullImg() {
        return this.b;
    }

    protected PAGLogoView h(Context context) {
        PAGLogoView pAGLogoView = new PAGLogoView(context);
        pAGLogoView.setId(520093739);
        return pAGLogoView;
    }
}
