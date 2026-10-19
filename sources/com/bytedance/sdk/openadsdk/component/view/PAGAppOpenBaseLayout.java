package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.DSPAdChoice;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;

/* JADX INFO: loaded from: classes2.dex */
public class PAGAppOpenBaseLayout extends PAGRelativeLayout {
    PAGImageView a;
    PAGFrameLayout b;
    PAGImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    PAGLogoView f1442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ButtonFlash f1443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    PAGLinearLayout f1444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TTRoundRectImageView f1445g;
    PAGTextView h;
    final PAGAppOpenTopBarView i;
    TTRoundRectImageView j;
    PAGTextView k;
    PAGTextView l;
    DSPAdChoice m;

    public PAGAppOpenBaseLayout(Context context) {
        super(context);
        this.i = new PAGAppOpenTopBarView(context);
    }

    public PAGLogoView getAdLogo() {
        return this.f1442d;
    }

    public TTRoundRectImageView getAppIcon() {
        return this.f1445g;
    }

    public PAGTextView getAppName() {
        return this.h;
    }

    public PAGImageView getBackImage() {
        return this.a;
    }

    public ButtonFlash getClickButton() {
        return this.f1443e;
    }

    public PAGTextView getContent() {
        return this.l;
    }

    public DSPAdChoice getDspAdChoice() {
        return this.m;
    }

    public TTRoundRectImageView getIconOnlyView() {
        return this.j;
    }

    public PAGImageView getImageView() {
        return this.c;
    }

    public PAGTextView getTitle() {
        return this.k;
    }

    public TextView getTopDisLike() {
        PAGAppOpenTopBarView pAGAppOpenTopBarView = this.i;
        if (pAGAppOpenTopBarView != null) {
            return pAGAppOpenTopBarView.getTopDislike();
        }
        return null;
    }

    public TextView getTopSkip() {
        PAGAppOpenTopBarView pAGAppOpenTopBarView = this.i;
        if (pAGAppOpenTopBarView != null) {
            return pAGAppOpenTopBarView.getTopSkip();
        }
        return null;
    }

    public PAGLinearLayout getUserInfo() {
        return this.f1444f;
    }

    public PAGFrameLayout getVideoContainer() {
        return this.b;
    }
}
