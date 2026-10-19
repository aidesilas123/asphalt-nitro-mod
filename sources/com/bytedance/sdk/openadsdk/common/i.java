package com.bytedance.sdk.openadsdk.common;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: TTTitleNewStyleManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {
    TTAdDislikeDialog a;
    TTAdDislikeToast b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RelativeLayout f1276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final q f1277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f1278g;
    private ImageView h;
    private TextView i;
    private PAGProgressBar j;
    private boolean l;
    final AtomicBoolean c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicBoolean f1275d = new AtomicBoolean(false);
    private final int k = ad.b(o.a(), 44.0f);

    public i(Context context, RelativeLayout relativeLayout, q qVar) {
        this.f1278g = context;
        this.f1276e = relativeLayout;
        this.f1277f = qVar;
        e();
    }

    private void e() {
        this.h = (ImageView) this.f1276e.findViewById(com.bytedance.sdk.openadsdk.utils.i.ad);
        this.i = (TextView) this.f1276e.findViewById(com.bytedance.sdk.openadsdk.utils.i.ae);
        ImageView imageView = (ImageView) this.f1276e.findViewById(com.bytedance.sdk.openadsdk.utils.i.af);
        this.j = (PAGProgressBar) this.f1276e.findViewById(com.bytedance.sdk.openadsdk.utils.i.ag);
        q qVar = this.f1277f;
        if (qVar != null) {
            this.i.setText(TextUtils.isEmpty(qVar.V()) ? s.a(this.f1278g, "tt_web_title_default") : this.f1277f.V());
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.i.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                i.this.d();
            }
        });
    }

    private void f() {
        try {
            if (this.a == null) {
                TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(this.f1278g, this.f1277f);
                this.a = tTAdDislikeDialog;
                tTAdDislikeDialog.setCallback(new TTAdDislikeDialog.a() { // from class: com.bytedance.sdk.openadsdk.common.i.6
                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void a(int i, FilterWord filterWord) {
                        if (i.this.f1275d.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        i.this.f1275d.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void a(View view) {
                        i.this.c.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void b(View view) {
                        i.this.c.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.a
                    public void c(View view) {
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) this.f1276e.getRootView().findViewById(R.id.content);
            frameLayout.addView(this.a);
            if (this.b == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.f1278g);
                this.b = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable unused) {
        }
    }

    private void g() {
        this.b.a(TTAdDislikeToast.getDislikeTip());
    }

    public void a() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1276e.getLayoutParams();
            if (this.l) {
                return;
            }
            int i = marginLayoutParams.topMargin;
            int i2 = this.k;
            if (i == (-i2)) {
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(-i2, 0);
                valueAnimatorOfInt.setDuration(300L);
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.i.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        i.this.f1276e.setLayoutParams(marginLayoutParams);
                    }
                });
                valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.i.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        i.this.l = false;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        i.this.l = true;
                    }
                });
                valueAnimatorOfInt.start();
            }
        } catch (Throwable unused) {
        }
    }

    public void a(int i) {
        if (i == 100) {
            this.j.setVisibility(8);
        } else {
            this.j.setVisibility(0);
            this.j.setProgress(i);
        }
    }

    public void b() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1276e.getLayoutParams();
            if (this.l || marginLayoutParams.topMargin != 0) {
                return;
            }
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, -this.k);
            valueAnimatorOfInt.setDuration(300L);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.i.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    i.this.f1276e.setLayoutParams(marginLayoutParams);
                }
            });
            valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.i.5
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    i.this.l = false;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    i.this.l = true;
                }
            });
            valueAnimatorOfInt.start();
        } catch (Throwable unused) {
        }
    }

    public ImageView c() {
        return this.h;
    }

    protected void d() {
        if (this.f1275d.get()) {
            g();
            return;
        }
        if (this.a == null) {
            f();
        }
        this.a.a();
    }
}
