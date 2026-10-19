package com.mbridge.msdk.video.dynview.widget;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.mbridge.msdk.video.dynview.moffer.b;
import com.mbridge.msdk.video.dynview.moffer.d;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeRelativeLayout extends RelativeLayout {
    private d a;
    private boolean b;
    private AnimatorSet c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7548d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f7549e;

    public MBridgeRelativeLayout(Context context) {
        super(context);
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimatorSet animatorSet = this.c;
        if (animatorSet != null) {
            try {
                animatorSet.start();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        d dVar;
        super.onDetachedFromWindow();
        if (!this.b && (dVar = this.a) != null) {
            this.b = true;
            dVar.a();
        }
        AnimatorSet animatorSet = this.c;
        if (animatorSet != null) {
            try {
                animatorSet.cancel();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        b bVar;
        super.onVisibilityChanged(view, i);
        if (!(view instanceof MBridgeRelativeLayout) || i != 0 || (bVar = this.f7549e) == null || this.f7548d) {
            return;
        }
        this.f7548d = true;
        bVar.a();
    }

    public void setAnimatorSet(AnimatorSet animatorSet) {
        this.c = animatorSet;
    }

    public void setMoreOfferCacheReportCallBack(b bVar) {
        this.f7549e = bVar;
    }

    public void setMoreOfferShowFailedCallBack(d dVar) {
        this.a = dVar;
    }
}
