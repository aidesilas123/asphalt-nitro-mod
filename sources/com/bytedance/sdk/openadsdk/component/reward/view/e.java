package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.content.res.ResourcesCompat;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.reward.a.k;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.model.o;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullVideoLayout.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    final Activity b;
    final q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ImageView f1433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    RelativeLayout f1434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    FrameLayout f1435f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View f1436g;
    View h;
    PAGLogoView i;
    ImageView j;
    RelativeLayout k;
    k l;
    public o o;
    PAGProgressBar p;
    private final com.bytedance.sdk.openadsdk.component.reward.a.a r;
    private final boolean s;
    private final String t;
    private int u;
    private boolean v;
    private RFDownloadBarLayout w;
    int a = 3;
    protected int m = 0;
    protected final AtomicBoolean n = new AtomicBoolean(false);
    Runnable q = new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.e.2
        @Override // java.lang.Runnable
        public void run() {
            RelativeLayout relativeLayout;
            try {
                q qVar = e.this.c;
                if ((qVar == null || !qVar.bd()) && (relativeLayout = e.this.f1434e) != null) {
                    int[] iArr = new int[2];
                    relativeLayout.getLocationOnScreen(iArr);
                    e.this.r.R.b(iArr[0]);
                }
            } catch (Exception unused) {
            }
        }
    };

    public e(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.r = aVar;
        this.b = aVar.V;
        this.c = aVar.a;
        this.t = aVar.f1317g;
        this.s = aVar.f1316f;
    }

    private int a(String str) {
        Resources resources = this.b.getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier(str, "dimen", "android"));
        }
        return 0;
    }

    private void a(com.bytedance.sdk.openadsdk.core.b.c cVar) {
        ad.a((View) this.f1435f, (View.OnTouchListener) cVar, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    private void s() {
        RelativeLayout relativeLayout;
        RFDownloadBarLayout rFDownloadBarLayout = (RFDownloadBarLayout) this.b.findViewById(i.l);
        this.w = rFDownloadBarLayout;
        rFDownloadBarLayout.a(this.r);
        this.i = (PAGLogoView) this.b.findViewById(520093757);
        this.j = (ImageView) this.b.findViewById(i.bh);
        this.f1433d = (ImageView) this.b.findViewById(520093706);
        this.f1434e = (RelativeLayout) this.b.findViewById(520093708);
        this.f1435f = (FrameLayout) this.b.findViewById(i.k);
        this.f1436g = this.b.findViewById(i.p);
        this.h = this.b.findViewById(i.aq);
        this.k = (RelativeLayout) this.b.findViewById(i.bg);
        k kVar = this.l;
        if (kVar == null || kVar.d() == null || (relativeLayout = this.k) == null) {
            return;
        }
        relativeLayout.addView(this.l.d(), new LinearLayout.LayoutParams(-1, -1));
        this.l.b();
    }

    public void a(float f2) {
        ad.a(this.f1433d, f2);
        ad.a(this.f1434e, f2);
    }

    public void a(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.i.getLayoutParams();
        marginLayoutParams.setMargins(16, 0, 0, i);
        this.i.setLayoutParams(marginLayoutParams);
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
        marginLayoutParams2.setMargins(0, 0, 7, i);
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams2.setMarginStart(0);
            marginLayoutParams2.setMarginEnd(7);
        }
        this.j.setLayoutParams(marginLayoutParams2);
    }

    public void a(int i, int i2) {
        FrameLayout frameLayout;
        if (this.c.B() == 1 && (frameLayout = this.f1435f) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            int iC = ad.c((Context) this.b);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f1435f.getLayoutParams();
            layoutParams.width = iC;
            int i3 = (iC * 9) / 16;
            layoutParams.height = i3;
            this.f1435f.setLayoutParams(layoutParams);
            this.m = (ad.d((Context) this.b) - i3) / 2;
            l.e("TTAD.RFullVideoLayout", "NonContentAreaHeight:" + this.m);
        }
    }

    public void a(View.OnClickListener onClickListener) {
        ad.a(this.f1435f, onClickListener, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    public void a(Animation animation) {
        RelativeLayout relativeLayout = this.k;
        if (relativeLayout != null) {
            relativeLayout.startAnimation(animation);
        }
    }

    public void a(com.bytedance.sdk.openadsdk.core.b.c cVar, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        View view;
        View view2;
        q qVar;
        if (this.f1435f != null && (qVar = this.c) != null && qVar.C() != null) {
            if (!this.c.C().f1564f || o.b(this.c)) {
                a(onClickListener);
            } else {
                a((View.OnClickListener) cVar);
                a(cVar);
            }
        }
        q qVar2 = this.c;
        if (qVar2 != null && qVar2.B() == 1) {
            if (this.c.C() != null && (view2 = this.f1436g) != null) {
                ad.a(view2, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f1436g.getLayoutParams();
                layoutParams.height = this.m;
                this.f1436g.setLayoutParams(layoutParams);
                if (this.c.C().b) {
                    this.f1436g.setOnClickListener(cVar);
                    this.f1436g.setOnTouchListener(onTouchListener);
                } else {
                    this.f1436g.setOnClickListener(onClickListener);
                }
            }
            if (this.c.C() != null && (view = this.h) != null) {
                ad.a(view, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.h.getLayoutParams();
                layoutParams2.height = this.m;
                this.h.setLayoutParams(layoutParams2);
                if (this.c.C().f1562d) {
                    this.h.setOnClickListener(cVar);
                    this.h.setOnTouchListener(onTouchListener);
                } else {
                    this.h.setOnClickListener(onClickListener);
                }
            }
        }
        PAGLogoView pAGLogoView = this.i;
        if (pAGLogoView != null) {
            pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.e.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    l.c("mAdLogo", "mAdLogo,,,,,,,onClick,,,,,");
                    try {
                        e eVar = e.this;
                        TTWebsiteActivity.a(eVar.b, eVar.c, eVar.t);
                    } catch (Throwable th) {
                        l.e("TTAD.RFullVideoLayout", th.getMessage());
                    }
                }
            });
        }
        ImageView imageView = this.j;
        if (imageView != null) {
            imageView.setClickable(true);
            com.bytedance.sdk.openadsdk.k.c.a().a((int) ad.a(com.bytedance.sdk.openadsdk.core.o.a(), 14.0f, true), this.j, this.r.a);
        }
    }

    public void a(boolean z) {
        int i = 8;
        ad.a((View) this.i, t.k(this.c) ? 8 : 0);
        ImageView imageView = this.j;
        if (this.c.at() && this.c.h()) {
            i = 0;
        }
        ad.a((View) imageView, i);
        b(z);
        if (this.s) {
            e();
        }
    }

    protected boolean a() {
        return true;
    }

    public void b() {
        if (this.v) {
            return;
        }
        this.v = true;
        this.u = this.r.j;
        if (a()) {
            k kVar = new k(this.r);
            this.l = kVar;
            kVar.a();
        }
        s();
        o oVar = new o(this.b, this.c, this.t, this.f1435f);
        this.o = oVar;
        oVar.a();
    }

    public void b(int i) {
        if (this.p == null) {
            this.p = new PAGProgressBar(this.r.V);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.p.setLayoutParams(layoutParams);
            this.p.setIndeterminateDrawable(ResourcesCompat.getDrawable(this.r.V.getResources(), s.d(this.r.V, "tt_video_loading_progress_bar"), null));
            this.r.T.f().addView(this.p);
        }
        this.p.setVisibility(i);
    }

    void b(boolean z) {
        RelativeLayout relativeLayout;
        if (this.u != 1 && (relativeLayout = this.f1434e) != null && z) {
            ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                int iA = a("status_bar_height");
                int iA2 = a("navigation_bar_height");
                if (iA > 0) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    if (iA > marginLayoutParams.topMargin) {
                        marginLayoutParams.topMargin = iA;
                        this.r.R.a(iA);
                    }
                }
                if (iA2 > 0) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                    if (iA2 > marginLayoutParams2.rightMargin) {
                        marginLayoutParams2.rightMargin = iA2;
                    }
                }
            }
        }
        if (this.r.Y instanceof com.bytedance.sdk.openadsdk.component.reward.b.c) {
            return;
        }
        c(0);
    }

    public void c() {
        this.f1435f.removeAllViews();
    }

    public void c(int i) {
        q qVar = this.c;
        if (qVar != null && qVar.at() && com.bytedance.sdk.openadsdk.core.model.l.a(this.c)) {
            ad.a((View) this.w, 8);
        } else {
            ad.a((View) this.w, i);
        }
    }

    public void d() {
        ad.a((View) this.f1435f, 8);
        ad.a(this.f1436g, 8);
        ad.a(this.h, 8);
        c(8);
        ad.a((View) this.f1433d, 8);
        ad.a((View) this.f1434e, 8);
        ad.a((View) this.i, 8);
        ad.a((View) this.k, 8);
        ad.a((View) this.j, 8);
    }

    public void d(int i) {
        ad.a((View) this.i, i);
    }

    void e() {
        int iE = this.c.E();
        this.a = iE;
        if (iE == -200) {
            this.a = com.bytedance.sdk.openadsdk.core.o.d().n(String.valueOf(this.c.aZ()));
        }
        if (this.a != -1 || a() || (this.r.Y instanceof com.bytedance.sdk.openadsdk.component.reward.b.c)) {
            return;
        }
        c(0);
    }

    public void e(int i) {
        int i2 = this.a;
        if (i2 == -1 || i != i2 || this.n.get()) {
            return;
        }
        c(0);
        this.n.set(true);
        h();
    }

    public FrameLayout f() {
        return this.f1435f;
    }

    public void f(int i) {
        RelativeLayout relativeLayout;
        ad.a((View) this.f1433d, i);
        ad.a((View) this.f1434e, i);
        if (!com.bytedance.sdk.component.adexpress.c.b.a(this.r.W) && (relativeLayout = this.f1434e) != null) {
            relativeLayout.post(this.q);
        }
        if (i == 0 && !this.r.u.get() && t.b(this.r.a)) {
            com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.r;
            com.bytedance.sdk.openadsdk.b.c.a(aVar.a, aVar.f1317g, "show_close_button", (JSONObject) null, System.currentTimeMillis() - this.r.r);
        }
    }

    public void g() {
        if (this.j.getVisibility() == 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
            marginLayoutParams.setMargins(0, 0, 11, 16);
            if (Build.VERSION.SDK_INT >= 17) {
                marginLayoutParams.setMarginStart(0);
                marginLayoutParams.setMarginEnd(11);
            }
            this.j.setLayoutParams(marginLayoutParams);
        }
    }

    protected void h() {
        RFDownloadBarLayout rFDownloadBarLayout = this.w;
        if (rFDownloadBarLayout == null) {
            return;
        }
        rFDownloadBarLayout.a();
    }

    public boolean i() {
        ImageView imageView = this.f1433d;
        return imageView != null && this.f1434e != null && imageView.getVisibility() == 0 && this.f1434e.getVisibility() == 0;
    }

    public View j() {
        return this.f1434e;
    }

    public View k() {
        return this.w;
    }

    public void l() {
        try {
            k kVar = this.l;
            if (kVar != null) {
                kVar.c();
            }
            RelativeLayout relativeLayout = this.k;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
        } catch (Throwable unused) {
            RelativeLayout relativeLayout2 = this.k;
            if (relativeLayout2 != null) {
                relativeLayout2.setAlpha(0.0f);
            }
        }
    }

    public void m() {
        try {
            TTBaseVideoActivity tTBaseVideoActivity = this.r.V;
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(tTBaseVideoActivity, s.j(tTBaseVideoActivity, "tt_fade_out"));
            if (animationLoadAnimation != null) {
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.e.3
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        e.this.r.T.l();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                this.r.T.a(animationLoadAnimation);
            } else {
                this.r.T.l();
            }
        } catch (Throwable unused) {
            this.r.T.l();
        }
    }

    public void n() {
        o oVar = this.o;
        if (oVar != null) {
            oVar.e();
        }
        RelativeLayout relativeLayout = this.f1434e;
        if (relativeLayout != null) {
            relativeLayout.removeCallbacks(this.q);
        }
    }

    public void o() {
        o oVar = this.o;
        if (oVar != null) {
            oVar.f();
        }
    }

    public void p() {
        o oVar = this.o;
        if (oVar != null) {
            oVar.g();
        }
    }

    public void q() {
        o oVar = this.o;
        if (oVar != null) {
            oVar.h();
        }
    }

    public void r() {
        this.r.L.e().onClick(this.w);
    }
}
