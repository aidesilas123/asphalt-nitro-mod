package com.applovin.impl.adview.activity.b;

import android.R;
import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.aw;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.u;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.f;
import com.applovin.exoplayer2.w1;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.k;
import com.applovin.impl.adview.x;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.applovin.impl.adview.activity.b.a implements AppLovinCommunicatorSubscriber {

    @Nullable
    protected final ProgressBar agb;
    private final Handler ajA;
    protected final com.applovin.impl.adview.k ajB;
    protected boolean ajC;
    private final AtomicBoolean ajD;
    private long ajE;
    private long ajF;
    private final com.applovin.impl.adview.activity.a.c ajt;
    protected final com.applovin.impl.adview.a aju;

    @Nullable
    protected final com.applovin.impl.adview.n ajv;

    @Nullable
    protected com.applovin.impl.adview.h ajw;

    @Nullable
    protected com.applovin.impl.adview.w ajx;

    @Nullable
    protected ProgressBar ajy;
    private final a ajz;
    private final Handler countdownHandler;
    protected final com.applovin.impl.adview.k countdownManager;
    protected boolean isVideoMuted;
    private final boolean isVideoStream;
    private long lastVideoPositionFromPauseMillis;
    private final AtomicBoolean mediaErrorHandled;
    protected final aw mediaPlayer;

    @Nullable
    protected final ImageView muteButtonImageView;
    protected int savedVideoPercentViewed;
    protected long videoDurationMillis;
    protected final com.applovin.exoplayer2.ui.g videoView;
    protected boolean videoWasCompleted;

    private class a implements x.a {
        private a() {
        }

        @Override // com.applovin.impl.adview.x.a
        public void a(Uri uri, com.applovin.impl.adview.w wVar) {
            com.applovin.impl.sdk.x xVar = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "Attempting to load a url from video button...");
            }
            com.applovin.impl.sdk.utils.s.a(uri, e.this.aiQ.getController(), e.this.sdk);
        }

        @Override // com.applovin.impl.adview.x.a
        public void a(com.applovin.impl.adview.w wVar) {
            com.applovin.impl.sdk.x xVar = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "Clicking through from video button...");
            }
            e.this.a(wVar.getAndClearLastClickEvent(), (Bundle) null);
        }

        @Override // com.applovin.impl.adview.x.a
        public void a(com.applovin.impl.adview.w wVar, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x xVar = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "Attempting to launch Direct Download from video button...");
            }
            e.this.a(wVar.getAndClearLastClickEvent(), bundle);
        }

        @Override // com.applovin.impl.adview.x.a
        public void b(Uri uri, com.applovin.impl.adview.w wVar) {
            com.applovin.impl.sdk.x xVar = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "Attempting to report a template error from video button...");
            }
            com.applovin.impl.sdk.utils.s.b(uri, e.this.aiQ.getController().getCurrentAd(), e.this.sdk);
        }

        @Override // com.applovin.impl.adview.x.a
        public void b(com.applovin.impl.adview.w wVar) {
            com.applovin.impl.sdk.x xVar = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "Closing ad from video button...");
            }
            e.this.dismiss();
        }

        @Override // com.applovin.impl.adview.x.a
        public void c(com.applovin.impl.adview.w wVar) {
            com.applovin.impl.sdk.x xVar = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "Skipping video from video button...");
            }
            e.this.th();
        }
    }

    private class b implements an.b, f.d, AppLovinTouchToClickListener.OnClickListener {
        private b() {
        }

        @Override // com.applovin.exoplayer2.an.b
        public void Z(int i) {
            com.applovin.impl.sdk.x xVar = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "Player state changed to state " + i + " and will play when ready: " + e.this.mediaPlayer.aE());
            }
            if (i == 2) {
                e.this.sZ();
                e.this.agj.JR();
                return;
            }
            if (i != 3) {
                if (i == 4) {
                    com.applovin.impl.sdk.x xVar2 = e.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        e.this.logger.f("AppLovinFullscreenActivity", "Video completed");
                    }
                    e eVar = e.this;
                    eVar.videoWasCompleted = true;
                    if (!eVar.aiY) {
                        eVar.tc();
                        return;
                    } else {
                        if (eVar.sK()) {
                            e.this.sT();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            e eVar2 = e.this;
            eVar2.mediaPlayer.h(!eVar2.isVideoMuted ? 1 : 0);
            e eVar3 = e.this;
            eVar3.aiZ = (int) TimeUnit.MILLISECONDS.toSeconds(eVar3.mediaPlayer.aM());
            e eVar4 = e.this;
            eVar4.bG(eVar4.mediaPlayer.aM());
            e.this.sL();
            com.applovin.impl.sdk.x xVar3 = e.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.f("AppLovinFullscreenActivity", "MediaPlayer prepared: " + e.this.mediaPlayer);
            }
            e.this.countdownManager.start();
            e eVar5 = e.this;
            if (eVar5.ajv != null) {
                eVar5.te();
            }
            e.this.ta();
            if (e.this.ajh.Jy()) {
                e.this.pauseVideo();
            }
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ab abVar, int i) {
            w1.b(this, abVar, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ac acVar) {
            w1.c(this, acVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public void a(ak akVar) {
            e.this.handleMediaError("Video view error (" + com.applovin.impl.sdk.utils.u.a(akVar, e.this.sdk) + ")");
            e.this.dismiss();
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an.e eVar, an.e eVar2, int i) {
            w1.e(this, eVar, eVar2, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an anVar, an.c cVar) {
            w1.f(this, anVar, cVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ad adVar, com.applovin.exoplayer2.j.h hVar) {
            w1.g(this, adVar, hVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void aa(int i) {
            w1.h(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void ab(int i) {
            w1.i(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void ac(int i) {
            w1.j(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ak akVar) {
            w1.k(this, akVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(am amVar) {
            w1.l(this, amVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ba baVar, int i) {
            w1.m(this, baVar, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void cD() {
            w1.n(this);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(an.a aVar) {
            w1.o(this, aVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(boolean z, int i) {
            w1.p(this, z, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void e(boolean z, int i) {
            w1.q(this, z, i);
        }

        @Override // com.applovin.exoplayer2.ui.f.d
        public void eZ(int i) {
            if (i == 0) {
                e.this.videoView.nG();
            }
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, MotionEvent motionEvent) {
            e.this.a(motionEvent, (Bundle) null);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void w(boolean z) {
            w1.r(this, z);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void x(boolean z) {
            w1.s(this, z);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void y(boolean z) {
            w1.t(this, z);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void z(boolean z) {
            w1.u(this, z);
        }
    }

    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e eVar = e.this;
            if (view == eVar.ajv) {
                eVar.th();
                return;
            }
            if (view == eVar.muteButtonImageView) {
                eVar.tb();
                return;
            }
            com.applovin.impl.sdk.x xVar = eVar.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                e.this.logger.i("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }
    }

    public e(com.applovin.impl.sdk.ad.e eVar, Activity activity, @Nullable Map<String, Object> map, com.applovin.impl.sdk.n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.ajt = new com.applovin.impl.adview.activity.a.c(this.aiL, this.ahM, this.sdk);
        a aVar = new a();
        this.ajz = aVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.countdownHandler = handler;
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.ajA = handler2;
        com.applovin.impl.adview.k kVar = new com.applovin.impl.adview.k(handler, this.sdk);
        this.countdownManager = kVar;
        this.ajB = new com.applovin.impl.adview.k(handler2, this.sdk);
        boolean zFF = this.aiL.FF();
        this.isVideoStream = zFF;
        this.isVideoMuted = com.applovin.impl.sdk.utils.u.P(this.sdk);
        this.lastVideoPositionFromPauseMillis = -1L;
        this.mediaErrorHandled = new AtomicBoolean();
        this.ajD = new AtomicBoolean();
        this.ajE = -2L;
        this.ajF = 0L;
        if (!eVar.hasVideoUrl()) {
            throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
        }
        if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aMb, nVar)) {
            checkCachedAdResourcesAsync(!zFF);
        }
        c cVar = new c();
        if (eVar.Gc() >= 0) {
            com.applovin.impl.adview.n nVar2 = new com.applovin.impl.adview.n(eVar.Gj(), activity);
            this.ajv = nVar2;
            nVar2.setVisibility(8);
            nVar2.setOnClickListener(cVar);
        } else {
            this.ajv = null;
        }
        if (a(this.isVideoMuted, nVar)) {
            ImageView imageView = new ImageView(activity);
            this.muteButtonImageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setClickable(true);
            imageView.setOnClickListener(cVar);
            av(this.isVideoMuted);
        } else {
            this.muteButtonImageView = null;
        }
        String strGo = eVar.Go();
        if (StringUtils.isValidString(strGo)) {
            com.applovin.impl.adview.x xVar = new com.applovin.impl.adview.x(nVar);
            xVar.a(new WeakReference<>(aVar));
            com.applovin.impl.adview.w wVar = new com.applovin.impl.adview.w(xVar, activity);
            this.ajx = wVar;
            wVar.bs(strGo);
        } else {
            this.ajx = null;
        }
        if (zFF) {
            com.applovin.impl.adview.a aVar2 = new com.applovin.impl.adview.a(activity, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aNp)).intValue(), R.attr.progressBarStyleLarge);
            this.aju = aVar2;
            aVar2.setColor(Color.parseColor("#75FFFFFF"));
            aVar2.setBackgroundColor(Color.parseColor("#00000000"));
            aVar2.setVisibility(8);
            AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
        } else {
            this.aju = null;
        }
        final int iSC = sC();
        boolean z = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aMZ)).booleanValue() && iSC > 0;
        if (this.ajw == null && z) {
            this.ajw = new com.applovin.impl.adview.h(activity);
            int iGu = eVar.Gu();
            this.ajw.setTextColor(iGu);
            this.ajw.setTextSize(((Integer) nVar.a(com.applovin.impl.sdk.c.b.aMY)).intValue());
            this.ajw.setFinishedStrokeColor(iGu);
            this.ajw.setFinishedStrokeWidth(((Integer) nVar.a(com.applovin.impl.sdk.c.b.aMX)).intValue());
            this.ajw.setMax(iSC);
            this.ajw.setProgress(iSC);
            kVar.a("COUNTDOWN_CLOCK", TimeUnit.SECONDS.toMillis(1L), new k.a() { // from class: com.applovin.impl.adview.activity.b.e.1
                @Override // com.applovin.impl.adview.k.a
                public void rB() {
                    e eVar2 = e.this;
                    if (eVar2.ajw != null) {
                        long seconds = ((long) iSC) - TimeUnit.MILLISECONDS.toSeconds(eVar2.videoView.getPlayer().aN());
                        if (seconds <= 0) {
                            e.this.aja = true;
                        } else if (e.this.tg()) {
                            e.this.ajw.setProgress((int) seconds);
                        }
                    }
                }

                @Override // com.applovin.impl.adview.k.a
                public boolean rC() {
                    return e.this.tg();
                }
            });
        }
        if (eVar.GC()) {
            Long l = (Long) nVar.a(com.applovin.impl.sdk.c.b.aNm);
            final Integer num = (Integer) nVar.a(com.applovin.impl.sdk.c.b.aNn);
            ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleHorizontal);
            this.agb = progressBar;
            a(progressBar, eVar.GD(), num.intValue());
            kVar.a("PROGRESS_BAR", l.longValue(), new k.a() { // from class: com.applovin.impl.adview.activity.b.e.2
                @Override // com.applovin.impl.adview.k.a
                public void rB() {
                    e eVar2 = e.this;
                    if (eVar2.ajC) {
                        eVar2.agb.setVisibility(8);
                    } else {
                        e.this.agb.setProgress((int) ((eVar2.mediaPlayer.aN() / e.this.videoDurationMillis) * num.intValue()));
                    }
                }

                @Override // com.applovin.impl.adview.k.a
                public boolean rC() {
                    return !e.this.ajC;
                }
            });
        } else {
            this.agb = null;
        }
        aw awVarCY = new aw.a(activity).cY();
        this.mediaPlayer = awVarCY;
        b bVar = new b();
        awVarCY.f(bVar);
        awVarCY.u(0);
        com.applovin.exoplayer2.ui.g gVar = new com.applovin.exoplayer2.ui.g(activity);
        this.videoView = gVar;
        gVar.nG();
        gVar.setControllerVisibilityListener(bVar);
        gVar.setPlayer(awVarCY);
        gVar.setOnTouchListener(new AppLovinTouchToClickListener(nVar, com.applovin.impl.sdk.c.b.aLm, activity, bVar));
        prepareMediaPlayer();
    }

    private void a(ProgressBar progressBar, int i, int i2) {
        progressBar.setMax(i2);
        progressBar.setPadding(0, 0, 0, 0);
        if (com.applovin.impl.sdk.utils.h.KX()) {
            progressBar.setProgressTintList(ColorStateList.valueOf(i));
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(boolean z, long j) {
        if (z) {
            com.applovin.impl.sdk.utils.v.a(this.ajx, j, null);
        } else {
            com.applovin.impl.sdk.utils.v.b(this.ajx, j, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sT() {
        this.ajt.a(this.aiS);
        this.aiV = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void sX() {
        bE(250L);
    }

    private void tf() {
        com.applovin.impl.adview.w wVar;
        com.applovin.impl.adview.u uVarGp = this.aiL.Gp();
        if (uVarGp == null || !uVarGp.sa() || this.ajC || (wVar = this.ajx) == null) {
            return;
        }
        final boolean z = wVar.getVisibility() == 4;
        final long jSb = uVarGp.sb();
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.e(z, jSb);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void tk() {
        this.aiV = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void tl() {
        com.applovin.impl.adview.a aVar = this.aju;
        if (aVar != null) {
            aVar.qO();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void tm() {
        com.applovin.impl.adview.a aVar = this.aju;
        if (aVar != null) {
            aVar.qN();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void tn() {
        this.ajE = -1L;
        this.ajF = SystemClock.elapsedRealtime();
    }

    protected void a(MotionEvent motionEvent, @Nullable Bundle bundle) {
        if (!this.aiL.Gq()) {
            tf();
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Clicking through video");
        }
        Uri uriFL = this.aiL.FL();
        if (uriFL != null) {
            AppLovinAdView appLovinAdView = this.aiQ;
            this.sdk.BD().trackAndLaunchVideoClick(this.aiL, uriFL, motionEvent, bundle, this, appLovinAdView != null ? appLovinAdView.getContext() : com.applovin.impl.sdk.n.getApplicationContext());
            com.applovin.impl.sdk.utils.m.a(this.agC, this.aiL);
            this.agj.JN();
            this.aje++;
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(@Nullable ViewGroup viewGroup) {
        this.ajt.a(this.muteButtonImageView, this.ajv, this.ajx, this.aju, this.agb, this.ajw, this.videoView, this.aiQ, this.agn, null, viewGroup);
        com.applovin.impl.adview.v vVar = this.agn;
        if (vVar != null) {
            vVar.sg();
        }
        this.mediaPlayer.k(true);
        if (this.aiL.Hc()) {
            this.ajh.a(this.aiL, new Runnable() { // from class: com.applovin.impl.adview.activity.b.a0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.sX();
                }
            });
        }
        if (this.isVideoStream) {
            sZ();
        }
        this.aiQ.renderAd(this.aiL);
        this.agj.bT(this.isVideoStream ? 1L : 0L);
        if (this.ajv != null) {
            this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, "scheduleSkipButton", new Runnable() { // from class: com.applovin.impl.adview.activity.b.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.te();
                }
            }), q.b.MAIN, this.aiL.Gd(), true);
        }
        super.au(this.isVideoMuted);
    }

    protected void av(boolean z) {
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

    @Override // com.applovin.impl.adview.activity.b.a
    public void bE(long j) {
        a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.p0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.tj();
            }
        }, j);
    }

    protected void bG(long j) {
        this.videoDurationMillis = j;
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void dismiss() {
        this.countdownManager.rA();
        this.ajB.rA();
        this.countdownHandler.removeCallbacksAndMessages(null);
        this.ajA.removeCallbacksAndMessages(null);
        sD();
        super.dismiss();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdExoPlayerPresenter";
    }

    protected int getVideoPercentViewed() {
        aw awVar = this.mediaPlayer;
        if (awVar == null) {
            return 0;
        }
        long jAN = awVar.aN();
        if (this.videoWasCompleted) {
            return 100;
        }
        return jAN > 0 ? (int) ((jAN / this.videoDurationMillis) * 100.0f) : this.savedVideoPercentViewed;
    }

    protected void handleMediaError(String str) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.aiL);
        }
        if (this.mediaErrorHandled.compareAndSet(false, true)) {
            if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aLV, this.sdk)) {
                this.sdk.Cc().c(this.aiL, com.applovin.impl.sdk.n.getApplicationContext());
            }
            AppLovinAdDisplayListener appLovinAdDisplayListener = this.agA;
            if (appLovinAdDisplayListener instanceof com.applovin.impl.sdk.ad.h) {
                ((com.applovin.impl.sdk.ad.h) appLovinAdDisplayListener).onAdDisplayFailed(str);
            }
            dismiss();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void onDestroy() {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQM)).booleanValue()) {
            com.applovin.impl.sdk.utils.x.k(this.ajx);
            this.ajx = null;
        }
        this.mediaPlayer.release();
        if (this.isVideoStream) {
            AppLovinCommunicator.getInstance(this.ahM).unsubscribe(this, "video_caching_failed");
        }
        super.onDestroy();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            if (messageData.getLong("ad_id") == this.aiL.getAdIdNumber() && this.isVideoStream) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string == null && i >= 200 && i < 300) || this.videoWasCompleted || this.mediaPlayer.v()) {
                    return;
                }
                handleMediaError("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
            }
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            bE(0L);
            if (this.ajC) {
                this.ajB.start();
                return;
            }
            return;
        }
        if (this.ajC) {
            this.ajB.W();
        } else {
            pauseVideo();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void pauseVideo() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Pausing video");
        }
        if (!this.mediaPlayer.v()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "Nothing to pause");
                return;
            }
            return;
        }
        this.lastVideoPositionFromPauseMillis = this.mediaPlayer.aN();
        this.mediaPlayer.k(false);
        this.countdownManager.W();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Paused video at position " + this.lastVideoPositionFromPauseMillis + "ms");
        }
    }

    protected void prepareMediaPlayer() {
        if (!com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aMb, this.sdk)) {
            checkCachedAdResourcesImmediately(!this.isVideoStream);
        }
        Activity activity = this.ahM;
        com.applovin.exoplayer2.h.u uVarC = new u.a(new com.applovin.exoplayer2.k.p(activity, ai.a(activity, "com.applovin.sdk"))).c(ab.a(this.aiL.FI()));
        this.mediaPlayer.h(!this.isVideoMuted ? 1 : 0);
        this.mediaPlayer.a(uVarC);
        this.mediaPlayer.aD();
        this.mediaPlayer.k(false);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void rl() {
        super.rl();
        sT();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void sA() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void sD() {
        super.a(getVideoPercentViewed(), this.isVideoStream, sI(), this.ajE);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean sI() {
        return this.aiL != null && getVideoPercentViewed() >= this.aiL.GE();
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
                long j = this.videoDurationMillis;
                long j2 = j > 0 ? 0 + j : 0L;
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
                    j2 += millis;
                }
                jGU = (long) (j2 * (((double) this.aiL.GU()) / 100.0d));
            }
            bF(jGU);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void sN() {
        super.sN();
        this.ajt.k(this.ajx);
        this.ajt.k(this.ajv);
        if (!sK() || this.ajC) {
            sT();
        }
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

    public void sY() {
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

    protected void sZ() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.w
            @Override // java.lang.Runnable
            public final void run() {
                this.a.tm();
            }
        });
    }

    protected void ta() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.z
            @Override // java.lang.Runnable
            public final void run() {
                this.a.tl();
            }
        });
    }

    protected void tb() {
        boolean z = !this.isVideoMuted;
        this.isVideoMuted = z;
        this.mediaPlayer.h(!z ? 1 : 0);
        av(this.isVideoMuted);
        d(this.isVideoMuted, 0L);
    }

    public void tc() {
        ti();
        final long jGH = this.aiL.GH();
        if (jGH > 0) {
            this.aiW = 0L;
            final Long l = (Long) this.sdk.a(com.applovin.impl.sdk.c.b.aNv);
            final Integer num = (Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNy);
            ProgressBar progressBar = new ProgressBar(this.ahM, null, R.attr.progressBarStyleHorizontal);
            this.ajy = progressBar;
            a(progressBar, this.aiL.GG(), num.intValue());
            this.ajB.a("POSTITIAL_PROGRESS_BAR", l.longValue(), new k.a() { // from class: com.applovin.impl.adview.activity.b.e.3
                @Override // com.applovin.impl.adview.k.a
                public void rB() {
                    e.this.ajy.setProgress((int) ((e.this.aiW / jGH) * num.intValue()));
                    e.this.aiW += l.longValue();
                }

                @Override // com.applovin.impl.adview.k.a
                public boolean rC() {
                    return e.this.aiW < jGH;
                }
            });
            this.ajB.start();
        }
        this.ajt.a(this.aiR, this.agn, this.aiQ, this.ajy);
        d("javascript:al_onPoststitialShow(" + this.ajd + "," + this.aje + ");", this.aiL.GI());
        if (this.aiR != null) {
            if (this.aiL.Ge() >= 0) {
                a(this.aiR, this.aiL.Ge(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.tk();
                    }
                });
            } else {
                this.aiR.setVisibility(0);
            }
        }
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
        ProgressBar progressBar2 = this.ajy;
        if (progressBar2 != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        this.aiL.getAdEventTracker().a(this.aiQ, arrayList);
        sM();
        this.ajC = true;
    }

    protected void te() {
        if (this.ajD.compareAndSet(false, true)) {
            a(this.ajv, this.aiL.Gc(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.y
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.tn();
                }
            });
        }
    }

    protected boolean tg() {
        return (this.aja || this.ajC || !this.videoView.getPlayer().v()) ? false : true;
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
        pauseVideo();
        sG();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Prompting incentivized ad close warning");
        }
        this.ajh.Jx();
    }

    protected void ti() {
        this.savedVideoPercentViewed = getVideoPercentViewed();
        this.mediaPlayer.k(false);
    }

    protected void tj() {
        if (this.ajC) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h("AppLovinFullscreenActivity", "Skip video resume - postitial shown");
                return;
            }
            return;
        }
        if (this.sdk.Ce().isApplicationPaused()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.h("AppLovinFullscreenActivity", "Skip video resume - app paused");
                return;
            }
            return;
        }
        long j = this.lastVideoPositionFromPauseMillis;
        if (j < 0) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "Invalid last video position, isVideoPlaying=" + this.mediaPlayer.v());
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Resuming video at position " + j + "ms for MediaPlayer: " + this.mediaPlayer);
        }
        this.mediaPlayer.k(true);
        this.countdownManager.start();
        this.lastVideoPositionFromPauseMillis = -1L;
        if (this.mediaPlayer.v()) {
            return;
        }
        sZ();
    }
}
