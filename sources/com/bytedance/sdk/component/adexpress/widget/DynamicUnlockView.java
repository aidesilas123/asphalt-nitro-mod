package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.layout.TTDynamicSplashInteractUnlock;

/* JADX INFO: loaded from: classes.dex */
public class DynamicUnlockView extends FrameLayout {
    private final TextView a;
    private final ImageView b;
    private final FlowLightView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RotateAnimation f838d;

    public DynamicUnlockView(Context context) {
        super(context);
        TTDynamicSplashInteractUnlock tTDynamicSplashInteractUnlock = new TTDynamicSplashInteractUnlock(context);
        addView(tTDynamicSplashInteractUnlock);
        this.a = tTDynamicSplashInteractUnlock.getUnlockText();
        this.b = tTDynamicSplashInteractUnlock.getUnlockGo();
        this.c = tTDynamicSplashInteractUnlock.getFlowLightView();
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 30.0f, 1, 0.65f, 1, 0.9f);
        this.f838d = rotateAnimation;
        rotateAnimation.setDuration(300L);
        rotateAnimation.setRepeatMode(2);
        rotateAnimation.setRepeatCount(1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable getHaloAnimation() {
        return new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicUnlockView.1
            @Override // java.lang.Runnable
            public void run() {
                DynamicUnlockView.this.b.startAnimation(DynamicUnlockView.this.f838d);
                DynamicUnlockView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicUnlockView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DynamicUnlockView.this.c.a(4);
                    }
                }, 100L);
                DynamicUnlockView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicUnlockView.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DynamicUnlockView.this.c.a(4);
                    }
                }, 300L);
                DynamicUnlockView dynamicUnlockView = DynamicUnlockView.this;
                dynamicUnlockView.postDelayed(dynamicUnlockView.getHaloAnimation(), 1200L);
            }
        };
    }

    public void a() {
        postDelayed(getHaloAnimation(), 300L);
    }

    public void b() {
        this.f838d.cancel();
    }

    public void setText(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "Slide or click to jump to the details page or third-party application";
        }
        TextView textView = this.a;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
