package com.applovin.impl.adview.activity.b;

import android.R;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.applovin.impl.adview.activity.b.a implements com.applovin.impl.adview.g {
    private final AtomicBoolean ajD;
    private long ajE;
    private long ajF;
    private final com.applovin.impl.adview.activity.a.d ajR;
    private double ajS;
    private double ajT;
    private final AtomicBoolean ajU;

    @Nullable
    private final com.applovin.impl.adview.a aju;

    @Nullable
    private final com.applovin.impl.adview.n ajv;
    private boolean isVideoMuted;
    private final boolean isVideoStream;

    @Nullable
    private final ImageView muteButtonImageView;

    private class a implements View.OnClickListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == g.this.ajv) {
                g.this.th();
                return;
            }
            if (view == g.this.muteButtonImageView) {
                g.this.tb();
                return;
            }
            com.applovin.impl.sdk.x xVar = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.i("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }
    }

    public g(com.applovin.impl.sdk.ad.e eVar, Activity activity, @Nullable Map<String, Object> map, com.applovin.impl.sdk.n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.ajR = new com.applovin.impl.adview.activity.a.d(this.aiL, this.ahM, this.sdk);
        boolean zFF = this.aiL.FF();
        this.isVideoStream = zFF;
        this.ajU = new AtomicBoolean();
        this.ajD = new AtomicBoolean();
        this.isVideoMuted = com.applovin.impl.sdk.utils.u.P(this.sdk);
        this.ajE = -2L;
        this.ajF = 0L;
        if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aMb, nVar)) {
            checkCachedAdResourcesAsync(false);
        }
        a aVar = new a();
        if (eVar.Gc() >= 0) {
            com.applovin.impl.adview.n nVar2 = new com.applovin.impl.adview.n(eVar.Gj(), activity);
            this.ajv = nVar2;
            nVar2.setVisibility(8);
            nVar2.setOnClickListener(aVar);
        } else {
            this.ajv = null;
        }
        if (a(this.isVideoMuted, nVar)) {
            ImageView imageView = new ImageView(activity);
            this.muteButtonImageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setClickable(true);
            imageView.setOnClickListener(aVar);
            av(this.isVideoMuted);
        } else {
            this.muteButtonImageView = null;
        }
        if (!zFF) {
            this.aju = null;
            return;
        }
        com.applovin.impl.adview.a aVar2 = new com.applovin.impl.adview.a(activity, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aNp)).intValue(), R.attr.progressBarStyleLarge);
        this.aju = aVar2;
        aVar2.setColor(Color.parseColor("#75FFFFFF"));
        aVar2.setBackgroundColor(Color.parseColor("#00000000"));
        aVar2.setVisibility(8);
    }

    private static boolean a(boolean z, com.applovin.impl.sdk.n nVar) {
        if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNe)).booleanValue()) {
            return false;
        }
        if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNf)).booleanValue() || z) {
            return true;
        }
        return ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNh)).booleanValue();
    }

    private void av(boolean z) {
        if (com.applovin.impl.sdk.utils.h.KX()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.ahM.getDrawable(z ? com.applovin.sdk.R.drawable.applovin_ic_unmute_to_mute : com.applovin.sdk.R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.muteButtonImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                this.muteButtonImageView.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri uriHv = z ? this.aiL.Hv() : this.aiL.Hw();
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.muteButtonImageView.setImageURI(uriHv);
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
    }

    private void sT() {
        this.ajR.a(this.aiS);
        this.aiV = SystemClock.elapsedRealtime();
        this.ajS = 100.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void sX() {
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.n nVar = this.aiR;
        if (nVar != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(nVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.v vVar = this.agn;
        if (vVar != null && vVar.sh()) {
            com.applovin.impl.adview.v vVar2 = this.agn;
            arrayList.add(new com.applovin.impl.sdk.a.d(vVar2, FriendlyObstructionPurpose.NOT_VISIBLE, vVar2.getIdentifier()));
        }
        this.aiL.getAdEventTracker().a(this.aiQ, arrayList);
    }

    private void sY() {
        this.ajd++;
        this.agj.JQ();
        if (this.aiL.Gk()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "Dismissing ad on video skip...");
            }
            dismiss();
        } else {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "Skipping video...");
            }
            tc();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void te() {
        if (this.ajD.compareAndSet(false, true)) {
            a(this.ajv, this.aiL.Gc(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.n0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.tn();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void tn() {
        this.ajE = -1L;
        this.ajF = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ts() {
        this.aiV = SystemClock.elapsedRealtime();
    }

    @Override // com.applovin.impl.adview.g
    public void a(double d2) {
        bu("javascript:al_setVideoMuted(" + this.isVideoMuted + ");");
        com.applovin.impl.adview.a aVar = this.aju;
        if (aVar != null) {
            aVar.qO();
        }
        if (this.ajv != null) {
            te();
        }
        this.aiQ.getController().qV();
        this.ajT = d2;
        sL();
        if (this.aiL.Hc()) {
            this.ajh.a(this.aiL, null);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(@Nullable ViewGroup viewGroup) {
        this.ajR.a(this.muteButtonImageView, this.ajv, this.aiR, this.aju, this.agn, this.aiQ, viewGroup);
        this.aiQ.getController().a(this);
        if (!com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aMb, this.sdk)) {
            checkCachedAdResourcesImmediately(false);
        }
        com.applovin.impl.adview.a aVar = this.aju;
        if (aVar != null) {
            aVar.qN();
        }
        com.applovin.impl.adview.v vVar = this.agn;
        if (vVar != null) {
            vVar.sg();
        }
        this.aiQ.renderAd(this.aiL);
        if (this.ajv != null) {
            this.sdk.BO().a(new ab(this.sdk, "scheduleSkipButton", new Runnable() { // from class: com.applovin.impl.adview.activity.b.m0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.te();
                }
            }), q.b.MAIN, this.aiL.Gd(), true);
        }
        this.sdk.BO().a(new ab(this.sdk, "updateMainViewOM", new Runnable() { // from class: com.applovin.impl.adview.activity.b.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.sX();
            }
        }), q.b.MAIN, 500L);
        super.au(this.isVideoMuted);
    }

    @Override // com.applovin.impl.adview.g
    public void b(double d2) {
        this.ajS = d2;
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void bE(long j) {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void dismiss() {
        sD();
        super.dismiss();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void pauseVideo() {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void rl() {
        super.rl();
        sT();
    }

    @Override // com.applovin.impl.adview.g
    public void ru() {
        tc();
    }

    @Override // com.applovin.impl.adview.g
    public void rv() {
        com.applovin.impl.adview.a aVar = this.aju;
        if (aVar != null) {
            aVar.qN();
        }
    }

    @Override // com.applovin.impl.adview.g
    public void rw() {
        com.applovin.impl.adview.a aVar = this.aju;
        if (aVar != null) {
            aVar.qO();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void sA() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void sD() {
        super.a((int) this.ajS, this.isVideoStream, sI(), this.ajE);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean sI() {
        return this.ajS >= ((double) this.aiL.GE());
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean sJ() {
        return sK() && !sI();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void sL() {
        long jGU;
        long millis;
        if (this.aiL.GT() >= 0 || this.aiL.GU() >= 0) {
            if (this.aiL.GT() >= 0) {
                jGU = this.aiL.GT();
            } else {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.aiL;
                double d2 = this.ajT;
                long millis2 = d2 > 0.0d ? 0 + TimeUnit.SECONDS.toMillis((long) d2) : 0L;
                if (aVar.GV()) {
                    int iFM = (int) ((com.applovin.impl.sdk.ad.a) this.aiL).FM();
                    if (iFM > 0) {
                        millis = TimeUnit.SECONDS.toMillis(iFM);
                    } else {
                        int iGe = (int) aVar.Ge();
                        if (iGe > 0) {
                            millis = TimeUnit.SECONDS.toMillis(iGe);
                        }
                    }
                    millis2 += millis;
                }
                jGU = (long) (millis2 * (((double) this.aiL.GU()) / 100.0d));
            }
            bF(jGU);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void sN() {
        super.sN();
        sT();
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void sR() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
        }
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void sS() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Skipping video from prompt");
        }
        sY();
    }

    protected void tb() {
        this.isVideoMuted = !this.isVideoMuted;
        bu("javascript:al_setVideoMuted(" + this.isVideoMuted + ");");
        av(this.isVideoMuted);
        d(this.isVideoMuted, 0L);
    }

    public void tc() {
        if (this.ajU.compareAndSet(false, true)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "Showing postitial...");
            }
            bu("javascript:al_showPostitial();");
            com.applovin.impl.adview.n nVar = this.ajv;
            if (nVar != null) {
                nVar.setVisibility(8);
            }
            ImageView imageView = this.muteButtonImageView;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            com.applovin.impl.adview.a aVar = this.aju;
            if (aVar != null) {
                aVar.qO();
            }
            if (this.aiR != null) {
                if (this.aiL.Ge() >= 0) {
                    a(this.aiR, this.aiL.Ge(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.l0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.a.ts();
                        }
                    });
                } else {
                    this.aiR.setVisibility(0);
                }
            }
            this.aiQ.getController().qW();
            sM();
        }
    }

    public void th() {
        this.ajE = SystemClock.elapsedRealtime() - this.ajF;
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Attempting to skip video with skip time: " + this.ajE + "ms");
        }
        if (!sJ()) {
            sY();
            return;
        }
        sG();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Prompting incentivized ad close warning");
        }
        this.ajh.Jx();
    }
}
