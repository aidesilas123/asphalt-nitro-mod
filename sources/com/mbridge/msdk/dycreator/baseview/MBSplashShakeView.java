package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes4.dex */
public class MBSplashShakeView extends MBLinearLayout {
    private final String a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f6865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f6866g;
    private Animation h;

    public MBSplashShakeView(Context context) {
        super(context);
        this.a = "浏览第三方应用";
        this.b = "View";
        this.c = "打开第三方应用";
        this.f6863d = "Open";
        this.f6864e = "下载第三方应用";
        this.f6865f = "Install";
    }

    public MBSplashShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = "浏览第三方应用";
        this.b = "View";
        this.c = "打开第三方应用";
        this.f6863d = "Open";
        this.f6864e = "下载第三方应用";
        this.f6865f = "Install";
    }

    public MBSplashShakeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = "浏览第三方应用";
        this.b = "View";
        this.c = "打开第三方应用";
        this.f6863d = "Open";
        this.f6864e = "下载第三方应用";
        this.f6865f = "Install";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initView(java.lang.String r11) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.dycreator.baseview.MBSplashShakeView.initView(java.lang.String):void");
    }

    @Override // com.mbridge.msdk.dycreator.baseview.MBLinearLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f6866g != null) {
            RotateAnimation rotateAnimation = new RotateAnimation(-10.0f, 10.0f, 1, 0.5f, 1, 0.5f);
            this.h = rotateAnimation;
            rotateAnimation.setDuration(100L);
            this.h.setRepeatMode(2);
            this.h.setRepeatCount(-1);
            this.f6866g.startAnimation(this.h);
        }
    }
}
