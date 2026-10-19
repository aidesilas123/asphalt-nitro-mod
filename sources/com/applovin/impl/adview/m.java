package com.applovin.impl.adview;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.j;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
class m extends Dialog implements l {
    private final Activity ahM;
    private final d ahN;
    private final com.applovin.impl.sdk.ad.a ahO;
    private RelativeLayout ahP;
    private j ahQ;
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    m(com.applovin.impl.sdk.ad.a aVar, d dVar, Activity activity, com.applovin.impl.sdk.n nVar) {
        super(activity, R.style.Theme.Translucent.NoTitleBar);
        if (aVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (dVar == null) {
            throw new IllegalArgumentException("No main view specified");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.ahM = activity;
        this.ahN = dVar;
        this.ahO = aVar;
        requestWindowFeature(1);
        setCancelable(false);
    }

    private void a(j.a aVar) {
        if (this.ahQ != null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h("ExpandedAdDialog", "Attempting to create duplicate close button");
                return;
            }
            return;
        }
        j jVarA = j.a(aVar, this.ahM);
        this.ahQ = jVarA;
        jVarA.setVisibility(8);
        this.ahQ.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.a.j(view);
            }
        });
        this.ahQ.setClickable(false);
        int iGa = ga(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aME)).intValue());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iGa, iGa);
        layoutParams.addRule(10);
        com.applovin.impl.sdk.n nVar = this.sdk;
        com.applovin.impl.sdk.c.b<Boolean> bVar = com.applovin.impl.sdk.c.b.aMH;
        layoutParams.addRule(((Boolean) nVar.a(bVar)).booleanValue() ? 9 : 11);
        this.ahQ.fZ(iGa);
        int iGa2 = ga(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aMG)).intValue());
        int iGa3 = ga(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aMF)).intValue());
        layoutParams.setMargins(iGa3, iGa2, iGa3, 0);
        this.ahP.addView(this.ahQ, layoutParams);
        this.ahQ.bringToFront();
        int iGa4 = ga(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aMI)).intValue());
        View view = new View(this.ahM);
        view.setBackgroundColor(0);
        int i = iGa + iGa4;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i, i);
        layoutParams2.addRule(10);
        layoutParams2.addRule(((Boolean) this.sdk.a(bVar)).booleanValue() ? 9 : 11);
        layoutParams2.setMargins(iGa3 - ga(5), iGa2 - ga(5), iGa3 - ga(5), 0);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.a.i(view2);
            }
        });
        this.ahP.addView(view, layoutParams2);
        view.bringToFront();
    }

    private int ga(int i) {
        return AppLovinSdkUtils.dpToPx(this.ahM, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        if (this.ahQ.isClickable()) {
            this.ahQ.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        rG();
    }

    private void rF() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.ahN.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(this.ahM);
        this.ahP = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.ahP.setBackgroundColor(-1157627904);
        this.ahP.addView(this.ahN);
        if (!this.ahO.FN()) {
            a(this.ahO.FO());
            rH();
        }
        setContentView(this.ahP);
    }

    private void rG() {
        this.ahN.bq("javascript:al_onCloseTapped();");
        dismiss();
    }

    private void rH() {
        this.ahM.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.r0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.rK();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void rK() {
        try {
            if (this.ahQ == null) {
                rG();
            }
            this.ahQ.setVisibility(0);
            this.ahQ.bringToFront();
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.adview.m.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    m.this.ahQ.setClickable(true);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            this.ahQ.startAnimation(alphaAnimation);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c("ExpandedAdDialog", "Unable to fade in close button", th);
            }
            rG();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void rL() {
        this.ahP.removeView(this.ahN);
        super.dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.applovin.impl.adview.l
    public void dismiss() {
        com.applovin.impl.sdk.d.d statsManagerHelper = this.ahN.getStatsManagerHelper();
        if (statsManagerHelper != null) {
            statsManagerHelper.JP();
        }
        this.ahM.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.u0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.rL();
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.ahN.bq("javascript:al_onBackPressed();");
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        rF();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        try {
            Window window = getWindow();
            if (window != null) {
                window.setFlags(this.ahM.getWindow().getAttributes().flags, this.ahM.getWindow().getAttributes().flags);
                window.addFlags(16777216);
            } else if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("ExpandedAdDialog", "Unable to turn on hardware acceleration - window is null");
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c("ExpandedAdDialog", "Setting window flags failed.", th);
            }
        }
    }

    public com.applovin.impl.sdk.ad.a rI() {
        return this.ahO;
    }

    public d rJ() {
        return this.ahN;
    }
}
