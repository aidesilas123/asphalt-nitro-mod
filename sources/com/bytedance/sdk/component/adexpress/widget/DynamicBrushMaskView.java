package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.c.e;
import com.bytedance.sdk.component.adexpress.layout.TTDynamicSplashLayoutBrushMaskView;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;

/* JADX INFO: loaded from: classes.dex */
public class DynamicBrushMaskView extends FrameLayout {
    private RelativeLayout a;
    private BrushMaskView b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ObjectAnimator f835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f837g;
    private FrameLayout h;
    private volatile boolean i;
    private volatile boolean j;

    public DynamicBrushMaskView(Context context) {
        super(context);
        this.j = false;
        this.f834d = context;
        TTDynamicSplashLayoutBrushMaskView tTDynamicSplashLayoutBrushMaskView = new TTDynamicSplashLayoutBrushMaskView(context);
        addView(tTDynamicSplashLayoutBrushMaskView);
        a(tTDynamicSplashLayoutBrushMaskView);
    }

    private void a(TTDynamicSplashLayoutBrushMaskView tTDynamicSplashLayoutBrushMaskView) {
        this.b = tTDynamicSplashLayoutBrushMaskView.getBrushMaskView();
        this.a = tTDynamicSplashLayoutBrushMaskView.getBrushHandRelativeLayout();
        this.f836f = tTDynamicSplashLayoutBrushMaskView.getFirstStepImage();
        this.h = tTDynamicSplashLayoutBrushMaskView.getSplashBrushFl();
        this.f837g = tTDynamicSplashLayoutBrushMaskView.getImageHand();
        this.h.setClipChildren(false);
        this.c = tTDynamicSplashLayoutBrushMaskView.getBrushView();
        BrushMaskView brushMaskView = this.b;
        if (brushMaskView != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                brushMaskView.setWatermark(s.d(this.f834d, "tt_splash_brush_bg"));
            }
            this.b.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DynamicBrushMaskView.this.f835e == null || !DynamicBrushMaskView.this.f835e.isStarted()) {
                            DynamicBrushMaskView.this.d();
                        }
                    } catch (Exception e2) {
                        l.b("DynamicBrushMaskView", e2.getMessage());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.b != null) {
            this.i = false;
            int iA = e.a(this.f834d);
            int i = (iA * 336) / 375;
            int i2 = (i * 80) / 336;
            this.h.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
            float width = this.b.getWidth() / 6.0f;
            float height = this.b.getHeight() / 2.0f;
            float f2 = i;
            final float f3 = f2 - (f2 / 3.0f);
            this.b.setEraserSize((this.b.getHeight() * 3) / 5.0f);
            float fA = e.a(getContext(), 15.0f);
            final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) f3, i2 / 2);
            int i3 = i2 / 4;
            layoutParams.topMargin = i3;
            float f4 = f2 / 6.0f;
            int i4 = (int) f4;
            layoutParams.leftMargin = i4;
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 17) {
                layoutParams.setMarginStart(i4);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
            }
            this.f836f.setLayoutParams(layoutParams);
            int i6 = (iA * 58) / 375;
            this.f837g.setLayoutParams(new RelativeLayout.LayoutParams(500, 500));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i6, (i6 * 76) / 58);
            layoutParams2.topMargin = (int) (i3 + fA);
            int i7 = (int) (f4 - (fA * 1.5f));
            layoutParams2.leftMargin = i7;
            if (i5 >= 17) {
                layoutParams2.setMarginStart(i7);
                layoutParams2.setMarginEnd(layoutParams2.rightMargin);
            }
            this.a.setLayoutParams(layoutParams2);
            this.b.a(width, height);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.a, "translationX", 0.0f, f3);
            this.f835e = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1000L);
            this.f835e.setRepeatMode(1);
            this.f835e.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    if (DynamicBrushMaskView.this.f836f != null) {
                        layoutParams.width = (int) (f3 * animatedFraction);
                        DynamicBrushMaskView.this.f836f.setLayoutParams(layoutParams);
                    }
                }
            });
            this.f835e.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (DynamicBrushMaskView.this.b != null) {
                        if (DynamicBrushMaskView.this.f836f != null) {
                            layoutParams.width = 0;
                            DynamicBrushMaskView.this.f836f.setLayoutParams(layoutParams);
                        }
                        if (DynamicBrushMaskView.this.i) {
                            return;
                        }
                        DynamicBrushMaskView.this.j = true;
                        DynamicBrushMaskView.this.b.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DynamicBrushMaskView.this.j = false;
                                if (DynamicBrushMaskView.this.i) {
                                    return;
                                }
                                DynamicBrushMaskView.this.f835e.start();
                            }
                        }, 100L);
                    }
                }
            });
            ObjectAnimator objectAnimator = this.f835e;
            if (objectAnimator == null || objectAnimator.isStarted() || this.f835e.isRunning() || this.j) {
                return;
            }
            this.f835e.start();
        }
    }

    public void a() {
    }

    public void b() {
        if (this.i) {
            return;
        }
        this.i = true;
        ObjectAnimator objectAnimator = this.f835e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            RelativeLayout relativeLayout = this.a;
            if (relativeLayout != null) {
                relativeLayout.clearAnimation();
                this.a.setVisibility(4);
            }
            this.b.a();
        }
        BrushMaskView brushMaskView = this.b;
        if (brushMaskView != null) {
            brushMaskView.setEraserSize(brushMaskView.getHeight());
            this.b.a(0.0f, r0.getHeight() / 2.0f);
            this.b.b();
        }
    }

    public void c() {
        clearAnimation();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            try {
                ObjectAnimator objectAnimator = this.f835e;
                if (objectAnimator == null || !(objectAnimator.isStarted() || this.f835e.isRunning() || this.j)) {
                    BrushMaskView brushMaskView = this.b;
                    if (brushMaskView != null) {
                        brushMaskView.a();
                    }
                    RelativeLayout relativeLayout = this.a;
                    if (relativeLayout != null) {
                        relativeLayout.setVisibility(0);
                    }
                    d();
                }
            } catch (Exception e2) {
                l.e("DynamicBrushMaskView", e2.getMessage());
            }
        }
    }

    public void setBrushText(String str) {
        if (this.c == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.c.setText(str);
    }
}
