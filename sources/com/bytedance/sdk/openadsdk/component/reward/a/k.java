package com.bytedance.sdk.openadsdk.component.reward.a;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import com.bytedance.sdk.component.d.o;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.reward.view.PAGLoadingBaseLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.PAGPAGLoadingFourLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.PAGPAGLoadingOneLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.PAGPAGLoadingThreeLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.PAGPAGLoadingTwoLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.core.widget.TwoSemicirclesView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullVideoLoadingManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {
    TTRoundRectImageView a;
    TextView b;
    PAGProgressBar c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f1328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q f1329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f1330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1331g = 0;
    private PAGLoadingBaseLayout h;
    private LinearLayout i;
    private TwoSemicirclesView j;
    private TwoSemicirclesView k;
    private PAGLogoView l;
    private final String m;
    private final int n;
    private AnimatorSet o;
    private AnimatorSet p;

    /* JADX INFO: compiled from: RewardFullVideoLoadingManager.java */
    private static class a implements o<Bitmap> {
        private final WeakReference<ImageView> a;

        public a(ImageView imageView) {
            this.a = new WeakReference<>(imageView);
        }

        @Override // com.bytedance.sdk.component.d.o
        public void a(int i, String str, @Nullable Throwable th) {
            ImageView imageView = this.a.get();
            if (imageView == null) {
                return;
            }
            imageView.setVisibility(8);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x001f A[Catch: all -> 0x0023, TRY_LEAVE, TryCatch #0 {all -> 0x0023, blocks: (B:7:0x000f, B:9:0x0015, B:10:0x001f), top: B:15:0x000f }] */
        @Override // com.bytedance.sdk.component.d.o
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(com.bytedance.sdk.component.d.k<android.graphics.Bitmap> r4) {
            /*
                r3 = this;
                java.lang.ref.WeakReference<android.widget.ImageView> r0 = r3.a
                java.lang.Object r0 = r0.get()
                android.widget.ImageView r0 = (android.widget.ImageView) r0
                if (r0 != 0) goto Lb
                return
            Lb:
                r1 = 8
                if (r4 == 0) goto L1f
                java.lang.Object r2 = r4.b()     // Catch: java.lang.Throwable -> L23
                if (r2 == 0) goto L1f
                java.lang.Object r4 = r4.b()     // Catch: java.lang.Throwable -> L23
                android.graphics.Bitmap r4 = (android.graphics.Bitmap) r4     // Catch: java.lang.Throwable -> L23
                r0.setImageBitmap(r4)     // Catch: java.lang.Throwable -> L23
                goto L26
            L1f:
                r0.setVisibility(r1)     // Catch: java.lang.Throwable -> L23
                goto L26
            L23:
                r0.setVisibility(r1)
            L26:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.a.k.a.a(com.bytedance.sdk.component.d.k):void");
        }
    }

    public k(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.f1330f = aVar.W;
        this.f1329e = aVar.a;
        this.m = aVar.f1317g;
        this.n = aVar.j;
    }

    private void e() {
        PAGPAGLoadingOneLayout pAGPAGLoadingOneLayout = new PAGPAGLoadingOneLayout(this.f1330f);
        this.h = pAGPAGLoadingOneLayout;
        this.a = pAGPAGLoadingOneLayout.getLoadingIcon();
        this.b = this.h.getLoadingAppName();
        this.c = this.h.getLoadingProgressBar();
        this.f1328d = this.h.getLoadingProgressNumber();
        this.l = this.h.getLoadingLogo();
        if (this.n == 1 && this.f1329e.aa() != null && !TextUtils.isEmpty(this.f1329e.aa().b())) {
            this.b.setText(this.f1329e.aa().b());
        } else if (TextUtils.isEmpty(this.f1329e.V())) {
            this.b.setVisibility(8);
        } else {
            this.b.setText(this.f1329e.V());
        }
        m();
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.k.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.a(k.this.f1330f, k.this.f1329e, k.this.m);
            }
        });
    }

    private void f() {
        PAGPAGLoadingTwoLayout pAGPAGLoadingTwoLayout = new PAGPAGLoadingTwoLayout(this.f1330f);
        this.h = pAGPAGLoadingTwoLayout;
        this.a = pAGPAGLoadingTwoLayout.getLoadingIcon();
        this.f1328d = this.h.getLoadingProgressNumber();
        this.l = this.h.getLoadingLogo();
        m();
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.k.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.a(k.this.f1330f, k.this.f1329e, k.this.m);
            }
        });
    }

    private void g() {
        PAGPAGLoadingThreeLayout pAGPAGLoadingThreeLayout = new PAGPAGLoadingThreeLayout(this.f1330f);
        this.h = pAGPAGLoadingThreeLayout;
        this.i = pAGPAGLoadingThreeLayout.getWaveContainer();
        this.f1328d = this.h.getLoadingProgressNumber();
        PAGLogoView loadingLogo = this.h.getLoadingLogo();
        this.l = loadingLogo;
        loadingLogo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.k.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.a(k.this.f1330f, k.this.f1329e, k.this.m);
            }
        });
    }

    private void h() {
        PAGPAGLoadingFourLayout pAGPAGLoadingFourLayout = new PAGPAGLoadingFourLayout(this.f1330f);
        this.h = pAGPAGLoadingFourLayout;
        this.j = pAGPAGLoadingFourLayout.getInnerCircle();
        this.k = this.h.getOuterCircle();
        this.j.setRadius(ad.b(this.f1330f, 80.0f));
        Paint paintTwo = this.j.getPaintTwo();
        paintTwo.setColor(Color.parseColor("#C4C4C4"));
        this.j.setPaintTwo(paintTwo);
        this.k.setRadius(ad.b(this.f1330f, 95.0f));
        Paint paintTwo2 = this.k.getPaintTwo();
        paintTwo2.setStrokeWidth(6.0f);
        paintTwo2.setColor(Color.parseColor("#118BFF"));
        this.k.setPaintTwo(paintTwo2);
        this.f1328d = this.h.getLoadingProgressNumber();
        PAGLogoView loadingLogo = this.h.getLoadingLogo();
        this.l = loadingLogo;
        loadingLogo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.k.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.a(k.this.f1330f, k.this.f1329e, k.this.m);
            }
        });
    }

    private void i() {
        n();
    }

    private void j() {
        Context context = this.f1330f;
        this.a.setAnimation(AnimationUtils.loadAnimation(context, s.j(context, "tt_loading_two_icon_scale")));
        n();
    }

    private void k() {
        this.o = new AnimatorSet();
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(linearLayout.getChildAt(0), "translationY", -9.0f, 9.0f).setDuration(300L);
            duration.setRepeatMode(2);
            duration.setRepeatCount(-1);
            AnimatorSet.Builder builderPlay = this.o.play(duration);
            for (int i = 1; i < this.i.getChildCount(); i++) {
                float f2 = i % 2 == 0 ? 9.0f : -9.0f;
                ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.i.getChildAt(i), "translationY", -f2, f2).setDuration(300L);
                duration2.setRepeatMode(2);
                duration2.setRepeatCount(-1);
                builderPlay = builderPlay.with(duration2);
            }
            this.o.start();
        }
        n();
    }

    private void l() {
        this.o = new AnimatorSet();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.j, Key.ROTATION, 0.0f, 360.0f).setDuration(1500L);
        duration.setInterpolator(new LinearInterpolator());
        duration.setRepeatCount(-1);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.k, Key.ROTATION, 0.0f, 360.0f).setDuration(2500L);
        duration2.setRepeatCount(-1);
        this.o.playTogether(duration, duration2);
        this.o.start();
        n();
    }

    private void m() {
        if (this.f1329e.N() == null || TextUtils.isEmpty(this.f1329e.N().a())) {
            this.a.setVisibility(8);
            return;
        }
        try {
            com.bytedance.sdk.component.d.j jVarA = com.bytedance.sdk.openadsdk.f.d.a(this.f1329e.N());
            q qVar = this.f1329e;
            jVarA.a(new com.bytedance.sdk.openadsdk.f.b(qVar, qVar.N().a(), new a(this.a)));
        } catch (Throwable unused) {
            this.a.setVisibility(8);
        }
    }

    private void n() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(1, 80);
        valueAnimatorOfInt.setDuration(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.k.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                PAGProgressBar pAGProgressBar = k.this.c;
                if (pAGProgressBar != null) {
                    pAGProgressBar.setProgress(iIntValue);
                }
                k.this.f1328d.setText(String.valueOf(iIntValue));
            }
        });
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(81, 99);
        valueAnimatorOfInt2.setDuration(3000L);
        valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.k.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                PAGProgressBar pAGProgressBar = k.this.c;
                if (pAGProgressBar != null) {
                    pAGProgressBar.setProgress(iIntValue);
                }
                k.this.f1328d.setText(String.valueOf(iIntValue));
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.p = animatorSet;
        animatorSet.play(valueAnimatorOfInt).before(valueAnimatorOfInt2);
        this.p.start();
    }

    public void a() {
        try {
            if (!q.c(this.f1329e) || t.k(this.f1329e)) {
                return;
            }
            try {
                this.f1331g = new JSONObject(this.f1329e.I().j()).optInt("loading_page_type", 0);
            } catch (JSONException unused) {
            }
            int i = this.f1331g;
            if (i == 1) {
                e();
                return;
            }
            if (i == 2) {
                f();
            } else if (i == 3) {
                g();
            } else {
                if (i != 4) {
                    return;
                }
                h();
            }
        } catch (Throwable unused2) {
        }
    }

    public void b() {
        try {
            int i = this.f1331g;
            if (i == 1) {
                i();
            } else if (i == 2) {
                j();
            } else if (i == 3) {
                k();
            } else if (i == 4) {
                l();
            }
        } catch (Throwable unused) {
        }
    }

    public void c() {
        AnimatorSet animatorSet = this.o;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.p;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
    }

    public View d() {
        return this.h;
    }
}
