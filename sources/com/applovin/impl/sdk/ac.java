package com.applovin.impl.sdk;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.Animation;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class ac {
    private final View aFL;
    private final x logger;
    private final n sdk;

    public ac(View view, n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.aFL = view;
    }

    public long a(com.applovin.impl.mediation.b.e eVar) {
        if (x.Fn()) {
            this.logger.f("ViewabilityTracker", "Checking visibility...");
        }
        long j = 0;
        Point pointY = com.applovin.impl.sdk.utils.h.Y(this.aFL.getContext());
        if (!this.aFL.isShown()) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "View is hidden");
            }
            j = 2;
        }
        if (this.aFL.getAlpha() < eVar.ys()) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "View is transparent");
            }
            j |= 4;
        }
        Animation animation = this.aFL.getAnimation();
        if (animation != null && animation.hasStarted() && !animation.hasEnded()) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "View is animating");
            }
            j |= 8;
        }
        if (this.aFL.getParent() == null) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "No parent view found");
            }
            j |= 16;
        }
        int iPxToDp = AppLovinSdkUtils.pxToDp(this.aFL.getContext(), this.aFL.getWidth());
        if (iPxToDp < Math.min(eVar.yq(), pointY.x)) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "View has width (" + iPxToDp + ") below threshold");
            }
            j |= 32;
        }
        int iPxToDp2 = AppLovinSdkUtils.pxToDp(this.aFL.getContext(), this.aFL.getHeight());
        if (iPxToDp2 < eVar.yr()) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "View has height (" + iPxToDp2 + ") below threshold");
            }
            j |= 64;
        }
        Rect rect = new Rect(0, 0, pointY.x, pointY.y);
        int[] iArr = {-1, -1};
        this.aFL.getLocationOnScreen(iArr);
        Rect rect2 = new Rect(iArr[0], iArr[1], iArr[0] + this.aFL.getWidth(), iArr[1] + this.aFL.getHeight());
        if (!Rect.intersects(rect, rect2)) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "Rect (" + rect2 + ") outside of screen's bounds (" + rect + ")");
            }
            j |= 128;
        }
        Activity activityAz = this.sdk.BM().Az();
        if (activityAz != null && !com.applovin.impl.sdk.utils.u.a(this.aFL, activityAz)) {
            if (x.Fn()) {
                this.logger.i("ViewabilityTracker", "View is not in top activity's view hierarchy");
            }
            j |= 256;
        }
        if (x.Fn()) {
            this.logger.f("ViewabilityTracker", "Returning flags: " + Long.toBinaryString(j));
        }
        return j;
    }
}
