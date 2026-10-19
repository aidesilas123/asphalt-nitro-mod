package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class BannerExpressView extends PAGFrameLayout {
    protected final Context a;
    protected NativeExpressView b;
    protected NativeExpressView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected q f1473d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AdSlot f1474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected PAGBannerAdWrapperListener f1475f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f1476g;
    protected boolean h;
    protected String i;

    public BannerExpressView(@NonNull Context context, q qVar, AdSlot adSlot) {
        super(context);
        this.i = "banner_ad";
        this.a = context;
        this.f1473d = qVar;
        this.f1474e = adSlot;
        a();
        AdSlot adSlot2 = this.f1474e;
        if (adSlot2 != null) {
            a(adSlot2.getExpressViewAcceptedWidth(), this.f1474e.getExpressViewAcceptedHeight());
        }
    }

    private ObjectAnimator a(NativeExpressView nativeExpressView) {
        return ObjectAnimator.ofFloat(nativeExpressView, "translationX", 0.0f, -getWidth());
    }

    private ObjectAnimator b(NativeExpressView nativeExpressView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(nativeExpressView, "translationX", getWidth(), 0.0f);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BannerExpressView bannerExpressView = BannerExpressView.this;
                bannerExpressView.h = false;
                bannerExpressView.g();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        NativeExpressView nativeExpressView = this.b;
        this.b = this.c;
        this.c = nativeExpressView;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.c.l();
            this.c = null;
        }
    }

    protected void a() {
        NativeExpressView nativeExpressView = new NativeExpressView(this.a, this.f1473d, this.f1474e, this.i);
        this.b = nativeExpressView;
        addView(nativeExpressView, new ViewGroup.LayoutParams(-1, -1));
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.f1475f;
        if (pAGBannerAdWrapperListener != null) {
            setExpressInteractionListener(pAGBannerAdWrapperListener);
        }
    }

    protected void a(float f2, float f3) {
        int iB = ad.b(this.a, f2);
        int iB2 = ad.b(this.a, f3);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(iB, iB2);
        }
        layoutParams.width = iB;
        layoutParams.height = iB2;
        setLayoutParams(layoutParams);
    }

    public void a(q qVar, AdSlot adSlot) {
        NativeExpressView nativeExpressView = new NativeExpressView(this.a, qVar, adSlot, this.i);
        this.c = nativeExpressView;
        nativeExpressView.setExpressInteractionListener(new PAGBannerAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView.1
            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdClicked(View view, int i) {
                BannerExpressView bannerExpressView = BannerExpressView.this;
                PAGBannerAdWrapperListener pAGBannerAdWrapperListener = bannerExpressView.f1475f;
                if (pAGBannerAdWrapperListener != null) {
                    pAGBannerAdWrapperListener.onAdClicked(bannerExpressView, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onRenderFail(View view, String str, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onRenderSuccess(View view, float f2, float f3) {
                BannerExpressView.this.a(f2, f3);
                NativeExpressView nativeExpressView2 = BannerExpressView.this.c;
                if (nativeExpressView2 != null) {
                    nativeExpressView2.setSoundMute(true);
                }
                BannerExpressView.this.e();
            }
        });
        ad.a((View) this.c, 8);
        addView(this.c, new ViewGroup.LayoutParams(-1, -1));
    }

    public void b() {
        NativeExpressView nativeExpressView = this.b;
        if (nativeExpressView != null) {
            nativeExpressView.j();
        }
    }

    public void c() {
        if (this.b != null) {
            h.b().d(this.b.getClosedListenerKey());
            removeView(this.b);
            this.b.l();
            this.b = null;
        }
        if (this.c != null) {
            h.b().d(this.c.getClosedListenerKey());
            removeView(this.c);
            this.c.l();
            this.c = null;
        }
        h.b().u();
    }

    public void d() {
        NativeExpressView nativeExpressView = this.c;
        if (nativeExpressView != null) {
            nativeExpressView.j();
        }
    }

    protected void e() {
        try {
            if (this.h || this.c == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(a(this.b)).with(b(this.c));
            animatorSet.setDuration(this.f1476g).start();
            ad.a((View) this.c, 0);
            this.h = true;
        } catch (Throwable th) {
            l.e("BannerExpressView", th.getMessage());
        }
    }

    public boolean f() {
        return this.c != null;
    }

    public NativeExpressView getCurView() {
        return this.b;
    }

    public NativeExpressView getNextView() {
        return this.c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.b == null) {
            a();
        }
        com.bytedance.sdk.openadsdk.utils.c.a(this, this.f1473d);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setDuration(int i) {
        this.f1476g = i;
    }

    public void setExpressInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.f1475f = pAGBannerAdWrapperListener;
        NativeExpressView nativeExpressView = this.b;
        if (nativeExpressView != null) {
            nativeExpressView.setExpressInteractionListener(new PAGBannerAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView.2
                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onAdClicked(View view, int i) {
                    BannerExpressView bannerExpressView = BannerExpressView.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = bannerExpressView.f1475f;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onAdClicked(bannerExpressView, i);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onAdDismissed() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onAdShow(View view, int i) {
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onRenderFail(View view, String str, int i) {
                    BannerExpressView bannerExpressView = BannerExpressView.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = bannerExpressView.f1475f;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderFail(bannerExpressView, str, i);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onRenderSuccess(View view, float f2, float f3) {
                    NativeExpressView nativeExpressView2 = BannerExpressView.this.b;
                    if (nativeExpressView2 != null) {
                        nativeExpressView2.setSoundMute(true);
                    }
                    BannerExpressView.this.a(f2, f3);
                    BannerExpressView bannerExpressView = BannerExpressView.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = bannerExpressView.f1475f;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderSuccess(bannerExpressView, f2, f3);
                    }
                }
            });
        }
    }
}
