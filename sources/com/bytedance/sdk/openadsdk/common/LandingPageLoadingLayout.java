package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.p;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public class LandingPageLoadingLayout extends PAGFrameLayout {
    View a;
    private e b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1249d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f1250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f1251f;

    public LandingPageLoadingLayout(@NonNull Context context) {
        super(context);
        this.f1249d = 10L;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        e eVar = this.b;
        if (eVar != null) {
            eVar.a(i);
        }
        if (i == 100) {
            b();
        }
    }

    private void c() {
        setBackgroundColor(-1);
        this.a = new PAGLogoView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, ad.b(getContext(), 14.0f));
        this.a.setVisibility(8);
        this.a.setId(520093739);
        layoutParams.gravity = 8388691;
        layoutParams.leftMargin = ad.b(getContext(), 16.0f);
        layoutParams.bottomMargin = ad.b(getContext(), 16.0f);
        addView(this.a, layoutParams);
        setVisibility(8);
    }

    public void a() {
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.2
            @Override // java.lang.Runnable
            public void run() {
                if (LandingPageLoadingLayout.this.b != null) {
                    LandingPageLoadingLayout.this.setVisibility(0);
                    LandingPageLoadingLayout.this.b.b();
                }
            }
        });
        if (this.f1250e == null) {
            this.f1250e = new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    LandingPageLoadingLayout.this.b();
                }
            };
        }
        postDelayed(this.f1250e, this.f1249d * 1000);
    }

    public void a(int i) {
        if (i == 100 || i - this.c >= 7) {
            this.c = i;
            if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
                b(this.c);
                return;
            }
            if (this.f1251f == null) {
                this.f1251f = new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        LandingPageLoadingLayout landingPageLoadingLayout = LandingPageLoadingLayout.this;
                        landingPageLoadingLayout.b(landingPageLoadingLayout.c);
                    }
                };
            }
            post(this.f1251f);
        }
    }

    public void a(q qVar, String str) {
        a(qVar, str, false);
    }

    public void a(final q qVar, final String str, boolean z) {
        String str2;
        String[] strArr;
        n nVar;
        p pVar;
        int iAE;
        n nVarN = null;
        if (qVar != null) {
            p pVarI = qVar.i();
            if (pVarI != null) {
                this.f1249d = pVarI.a();
            }
            String strAF = qVar.aF();
            String[] strArrAG = qVar.aG();
            iAE = qVar.aE();
            if (qVar.N() != null && !TextUtils.isEmpty(qVar.N().a())) {
                nVarN = qVar.N();
            }
            nVar = nVarN;
            pVar = pVarI;
            str2 = strAF;
            strArr = strArrAG;
        } else {
            str2 = null;
            strArr = null;
            nVar = null;
            pVar = null;
            iAE = 0;
        }
        if (iAE == 1) {
            this.b = new d(getContext(), str2, strArr, nVar, pVar);
        } else {
            this.b = new c(getContext(), str2, strArr, nVar, pVar);
        }
        View viewE = this.b.e();
        if (viewE.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewE.getParent()).removeView(viewE);
        }
        addView(viewE);
        View view = this.a;
        if (view != null) {
            if (z) {
                view.setVisibility(0);
            }
            this.a.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TTWebsiteActivity.a(LandingPageLoadingLayout.this.getContext(), qVar, str);
                }
            });
        }
    }

    public void b() {
        this.c = 0;
        e eVar = this.b;
        if (eVar != null) {
            removeView(eVar.f1259e);
            this.b.d();
        }
        setVisibility(8);
        this.b = null;
        Runnable runnable = this.f1250e;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1251f;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        this.f1251f = null;
        this.f1250e = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1250e;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1250e = null;
        }
    }
}
