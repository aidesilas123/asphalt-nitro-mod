package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.j;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.b.b;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.i;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.r;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements AppLovinBroadcastManager.Receiver, b.a, u.a {
    protected AppLovinAdDisplayListener agA;
    protected AppLovinAdClickListener agC;
    protected AppLovinAdVideoPlaybackListener agR;
    protected final com.applovin.impl.sdk.d.d agj;

    @Nullable
    protected com.applovin.impl.adview.v agn;
    protected Activity ahM;
    protected final com.applovin.impl.sdk.ad.e aiL;

    @Nullable
    private final com.applovin.impl.sdk.utils.a aiO;

    @Nullable
    private final i.a aiP;
    protected AppLovinAdView aiQ;

    @Nullable
    protected final com.applovin.impl.adview.n aiR;
    protected final com.applovin.impl.adview.n aiS;
    private long aiU;
    protected long aiW;
    private boolean aiX;
    protected boolean aiY;
    protected int aiZ;
    protected boolean aja;
    protected boolean ajg;
    protected final com.applovin.impl.sdk.b.b ajh;

    @Nullable
    protected com.applovin.impl.sdk.utils.r aji;
    private final com.applovin.impl.sdk.j ajj;
    protected final com.applovin.impl.sdk.x logger;
    protected final com.applovin.impl.sdk.n sdk;
    private final Handler acG = new Handler(Looper.getMainLooper());
    protected final long startTimeMillis = SystemClock.elapsedRealtime();
    private final AtomicBoolean videoEndListenerNotified = new AtomicBoolean();
    private final AtomicBoolean aiT = new AtomicBoolean();
    protected long aiV = -1;
    private int ajb = 0;
    private final ArrayList<Long> ajc = new ArrayList<>();
    protected int ajd = 0;
    protected int aje = 0;
    protected int ajf = com.applovin.impl.sdk.i.aAb;
    private boolean ajk = false;

    /* JADX INFO: renamed from: com.applovin.impl.adview.activity.b.a$3, reason: invalid class name */
    class AnonymousClass3 extends com.applovin.impl.sdk.utils.a {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void sP() {
            com.applovin.impl.sdk.x.H("AppLovinFullscreenActivity", "Dismissing on-screen ad due to app relaunched via launcher.");
            try {
                a.this.dismiss();
            } catch (Throwable th) {
                com.applovin.impl.sdk.x.e("AppLovinFullscreenActivity", "Failed to dismiss ad.", th);
                try {
                    a.this.sE();
                } catch (Throwable unused) {
                }
            }
        }

        @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (a.this.aiT.get()) {
                return;
            }
            if (activity.getClass().getName().equals(com.applovin.impl.sdk.utils.u.af(activity.getApplicationContext()))) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.sP();
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.adview.activity.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0055a {
        void a(a aVar);

        void a(String str, Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b implements View.OnClickListener, AppLovinAdClickListener {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void sQ() {
            a.this.aiV = SystemClock.elapsedRealtime();
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.x xVar = a.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                a.this.logger.f("AppLovinFullscreenActivity", "Clicking through graphic");
            }
            com.applovin.impl.sdk.utils.m.a(a.this.agC, appLovinAd);
            a.this.agj.JN();
            a.this.aje++;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            if (view != aVar.aiR || !((Boolean) aVar.sdk.a(com.applovin.impl.sdk.c.b.aNc)).booleanValue()) {
                com.applovin.impl.sdk.x xVar = a.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    a.this.logger.i("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                    return;
                }
                return;
            }
            a.c(a.this);
            if (a.this.aiL.GL()) {
                a.this.bu("javascript:al_onCloseButtonTapped(" + a.this.ajb + "," + a.this.ajd + "," + a.this.aje + ");");
            }
            List<Integer> listGf = a.this.aiL.Gf();
            com.applovin.impl.sdk.x xVar2 = a.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                a.this.logger.f("AppLovinFullscreenActivity", "Handling close button tap " + a.this.ajb + " with multi close delay: " + listGf);
            }
            if (listGf == null || listGf.size() <= a.this.ajb) {
                a.this.dismiss();
                return;
            }
            a.this.ajc.add(Long.valueOf(SystemClock.elapsedRealtime() - a.this.aiV));
            List<j.a> listGh = a.this.aiL.Gh();
            if (listGh != null && listGh.size() > a.this.ajb) {
                a aVar2 = a.this;
                aVar2.aiR.b(listGh.get(aVar2.ajb));
            }
            com.applovin.impl.sdk.x xVar3 = a.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                a.this.logger.f("AppLovinFullscreenActivity", "Scheduling next close button with delay: " + listGf.get(a.this.ajb));
            }
            a.this.aiR.setVisibility(8);
            a aVar3 = a.this;
            aVar3.a(aVar3.aiR, listGf.get(aVar3.ajb).intValue(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.sQ();
                }
            });
        }
    }

    a(com.applovin.impl.sdk.ad.e eVar, Activity activity, @Nullable Map<String, Object> map, com.applovin.impl.sdk.n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.aiL = eVar;
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.ahM = activity;
        this.agC = appLovinAdClickListener;
        this.agA = appLovinAdDisplayListener;
        this.agR = appLovinAdVideoPlaybackListener;
        com.applovin.impl.sdk.b.b bVar = new com.applovin.impl.sdk.b.b(activity, nVar);
        this.ajh = bVar;
        bVar.a(this);
        com.applovin.impl.sdk.d.d dVar = new com.applovin.impl.sdk.d.d(eVar, nVar);
        this.agj = dVar;
        this.ajj = new com.applovin.impl.sdk.j(nVar);
        b bVar2 = new b();
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNt)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
        }
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aNA)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.al_onPoststitialShow_undefined"));
        }
        com.applovin.impl.adview.o oVar = new com.applovin.impl.adview.o(nVar.getWrappingSdk(), AppLovinAdSize.INTERSTITIAL, activity);
        this.aiQ = oVar;
        oVar.setAdClickListener(bVar2);
        this.aiQ.setAdDisplayListener(new AppLovinAdDisplayListener() { // from class: com.applovin.impl.adview.activity.b.a.1
            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adDisplayed(AppLovinAd appLovinAd) {
                com.applovin.impl.sdk.x xVar = a.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    a.this.logger.f("AppLovinFullscreenActivity", "Web content rendered");
                }
            }

            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adHidden(AppLovinAd appLovinAd) {
                com.applovin.impl.sdk.x xVar = a.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    a.this.logger.f("AppLovinFullscreenActivity", "Closing from WebView");
                }
                a.this.dismiss();
            }
        });
        this.aiQ.getController().setStatsManagerHelper(dVar);
        com.applovin.impl.adview.p pVar = new com.applovin.impl.adview.p(map, nVar);
        if (pVar.rN()) {
            this.agn = new com.applovin.impl.adview.v(pVar, activity);
        }
        nVar.BD().trackImpression(eVar);
        List<Integer> listGf = eVar.Gf();
        if (eVar.Ge() >= 0 || listGf != null) {
            com.applovin.impl.adview.n nVar2 = new com.applovin.impl.adview.n(eVar.Gg(), activity);
            this.aiR = nVar2;
            nVar2.setVisibility(8);
            nVar2.setOnClickListener(bVar2);
        } else {
            this.aiR = null;
        }
        com.applovin.impl.adview.n nVar3 = new com.applovin.impl.adview.n(j.a.WHITE_ON_TRANSPARENT, activity);
        this.aiS = nVar3;
        nVar3.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.activity.b.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.a.m(view);
            }
        });
        if (eVar.Hb()) {
            this.aiP = new i.a() { // from class: com.applovin.impl.adview.activity.b.a.2
                @Override // com.applovin.impl.sdk.i.a
                public void ge(int i) {
                    a aVar = a.this;
                    if (aVar.ajf != com.applovin.impl.sdk.i.aAb) {
                        aVar.ajg = true;
                    }
                    com.applovin.impl.adview.d dVarQZ = aVar.aiQ.getController().qZ();
                    if (com.applovin.impl.sdk.i.gx(i) && !com.applovin.impl.sdk.i.gx(a.this.ajf)) {
                        dVarQZ.bq("javascript:al_muteSwitchOn();");
                    } else if (i == 2) {
                        dVarQZ.bq("javascript:al_muteSwitchOff();");
                    }
                    a.this.ajf = i;
                }
            };
        } else {
            this.aiP = null;
        }
        this.aiO = new AnonymousClass3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(final com.applovin.impl.adview.n nVar, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.p
            @Override // java.lang.Runnable
            public final void run() {
                a.b(nVar, runnable);
            }
        });
    }

    public static void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, @Nullable Map<String, Object> map, com.applovin.impl.sdk.n nVar, Activity activity, InterfaceC0055a interfaceC0055a) {
        a bVar;
        boolean zHx = eVar.Hx();
        if (eVar instanceof com.applovin.impl.b.a) {
            if (zHx) {
                try {
                    bVar = new c(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th) {
                    nVar.BN();
                    if (com.applovin.impl.sdk.x.Fn()) {
                        nVar.BN().b("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th);
                    }
                    try {
                        bVar = new d(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                    } catch (Throwable th2) {
                        interfaceC0055a.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + nVar + " and throwable: " + th2.getMessage(), th2);
                        return;
                    }
                }
            } else {
                try {
                    bVar = new d(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th3) {
                    interfaceC0055a.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + nVar + " and throwable: " + th3.getMessage(), th3);
                    return;
                }
            }
        } else if (!eVar.hasVideoUrl()) {
            try {
                bVar = new com.applovin.impl.adview.activity.b.b(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th4) {
                interfaceC0055a.a("Failed to create FullscreenGraphicAdPresenter with sdk: " + nVar + " and throwable: " + th4.getMessage(), th4);
                return;
            }
        } else if (eVar.Hz()) {
            try {
                bVar = new g(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th5) {
                interfaceC0055a.a("Failed to create FullscreenWebVideoAdPresenter with sdk: " + nVar + " and throwable: " + th5.getMessage(), th5);
                return;
            }
        } else if (zHx) {
            try {
                bVar = new e(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th6) {
                nVar.BN();
                if (com.applovin.impl.sdk.x.Fn()) {
                    nVar.BN().b("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th6);
                }
                try {
                    bVar = new f(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th7) {
                    interfaceC0055a.a("Failed to create FullscreenVideoAdExoPlayerPresenter with sdk: " + nVar + " and throwable: " + th7.getMessage(), th7);
                    return;
                }
            }
        } else {
            try {
                bVar = new f(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th8) {
                interfaceC0055a.a("Failed to create FullscreenVideoAdPresenter with sdk: " + nVar + " and throwable: " + th8.getMessage(), th8);
                return;
            }
        }
        bVar.sz();
        interfaceC0055a.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(final com.applovin.impl.adview.n nVar, final Runnable runnable) {
        com.applovin.impl.sdk.utils.v.a(nVar, 400L, new Runnable() { // from class: com.applovin.impl.adview.activity.b.i
            @Override // java.lang.Runnable
            public final void run() {
                a.c(nVar, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void bv(String str) {
        AppLovinAdView appLovinAdView;
        com.applovin.impl.adview.d dVarQZ;
        if (!StringUtils.isValidString(str) || (appLovinAdView = this.aiQ) == null || (dVarQZ = appLovinAdView.getController().qZ()) == null) {
            return;
        }
        dVarQZ.bq(str);
    }

    static /* synthetic */ int c(a aVar) {
        int i = aVar.ajb;
        aVar.ajb = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(com.applovin.impl.adview.n nVar, Runnable runnable) {
        nVar.bringToFront();
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(View view) {
        com.applovin.impl.adview.n nVar;
        if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aLW, this.sdk)) {
            this.sdk.Cc().b(this.aiL, com.applovin.impl.sdk.n.getApplicationContext());
        }
        this.sdk.Cs().a(r.a.BLACK_VIEW, CollectionUtils.map("clcode", this.aiL.getClCode()));
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQF)).booleanValue()) {
            dismiss();
            return;
        }
        this.ajk = ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQG)).booleanValue();
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQH)).booleanValue() || (nVar = this.aiR) == null) {
            return;
        }
        nVar.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void sO() {
        if (this.aiL.GW().getAndSet(true)) {
            return;
        }
        this.sdk.BO().a(new com.applovin.impl.sdk.e.x(this.aiL, this.sdk), q.b.REWARD);
    }

    private void sz() {
        if (this.aiP != null) {
            this.sdk.Cj().a(this.aiP);
        }
        if (this.aiO != null) {
            this.sdk.BM().a(this.aiO);
        }
    }

    public void a(int i, KeyEvent keyEvent) {
        if (this.logger == null || !com.applovin.impl.sdk.x.Fn()) {
            return;
        }
        this.logger.g("AppLovinFullscreenActivity", "onKeyDown(int, KeyEvent) -  " + i + ", " + keyEvent);
    }

    protected void a(int i, boolean z, boolean z2, long j) {
        if (this.videoEndListenerNotified.compareAndSet(false, true)) {
            if (this.aiL.hasVideoUrl() || sK()) {
                com.applovin.impl.sdk.utils.m.a(this.agR, this.aiL, i, z2);
            }
            if (this.aiL.hasVideoUrl()) {
                this.agj.bU(i);
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.startTimeMillis;
            this.sdk.BD().trackVideoEnd(this.aiL, TimeUnit.MILLISECONDS.toSeconds(jElapsedRealtime), i, z);
            long jElapsedRealtime2 = this.aiV != -1 ? SystemClock.elapsedRealtime() - this.aiV : -1L;
            this.sdk.BD().trackFullScreenAdClosed(this.aiL, jElapsedRealtime2, this.ajc, j, this.ajg, this.ajf);
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "Video ad ended at percent: " + i + "%, elapsedTime: " + jElapsedRealtime + "ms, skipTimeMillis: " + j + "ms, closeTimeMillis: " + jElapsedRealtime2 + "ms");
            }
        }
    }

    public abstract void a(@Nullable ViewGroup viewGroup);

    protected void a(final com.applovin.impl.adview.n nVar, long j, final Runnable runnable) {
        if (j >= ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aNb)).longValue()) {
            return;
        }
        this.sdk.BO().a(new ab(this.sdk, "fadeInCloseButton", new Runnable() { // from class: com.applovin.impl.adview.activity.b.m
            @Override // java.lang.Runnable
            public final void run() {
                a.a(nVar, runnable);
            }
        }), q.b.MAIN, TimeUnit.SECONDS.toMillis(j), true);
    }

    protected void a(Runnable runnable, long j) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j, this.acG);
    }

    protected void au(boolean z) {
        d(z, ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aNr)).longValue());
        com.applovin.impl.sdk.utils.m.a(this.agA, this.aiL);
        this.sdk.Cf().ab(this.aiL);
        if (this.aiL.hasVideoUrl() || sK()) {
            com.applovin.impl.sdk.utils.m.a(this.agR, this.aiL);
        }
        new com.applovin.impl.adview.activity.b(this.ahM).c(this.aiL);
        this.agj.JM();
        this.aiL.setHasShown(true);
    }

    public abstract void bE(long j);

    protected void bF(long j) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Scheduling report reward in " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds...");
        }
        this.aji = com.applovin.impl.sdk.utils.r.b(j, this.sdk, new Runnable() { // from class: com.applovin.impl.adview.activity.b.q
            @Override // java.lang.Runnable
            public final void run() {
                this.a.sO();
            }
        });
    }

    protected void bt(String str) {
        if (this.aiL.GM()) {
            d(str, 0L);
        }
    }

    protected void bu(String str) {
        d(str, 0L);
    }

    protected void checkCachedAdResourcesAsync(boolean z) {
        com.applovin.impl.sdk.utils.u.a(z, this.aiL, this.sdk, com.applovin.impl.sdk.n.getApplicationContext(), this);
    }

    protected void checkCachedAdResourcesImmediately(boolean z) {
        List<Uri> listA = com.applovin.impl.sdk.utils.u.a(z, this.aiL, this.sdk, this.ahM);
        if (listA.isEmpty()) {
            return;
        }
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQr)).booleanValue()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("AppLovinFullscreenActivity", "Streaming ad due to missing ad resources: " + listA);
            }
            this.aiL.FA();
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i("AppLovinFullscreenActivity", "Dismissing ad due to missing resources: " + listA);
        }
        com.applovin.impl.adview.q.a(this.aiL, this.agA, "Missing ad resources", null, null);
        dismiss();
    }

    protected void d(final String str, long j) {
        if (j >= 0) {
            a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.bv(str);
                }
            }, j);
        }
    }

    protected void d(boolean z, long j) {
        if (this.aiL.GK()) {
            d(z ? "javascript:al_mute();" : "javascript:al_unmute();", j);
        }
    }

    public void dismiss() {
        this.aiX = true;
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "dismiss()");
        }
        com.applovin.impl.sdk.ad.e eVar = this.aiL;
        if (eVar != null) {
            eVar.getAdEventTracker().IM();
        }
        this.acG.removeCallbacksAndMessages(null);
        d("javascript:al_onPoststitialDismiss();", this.aiL.GJ());
        sE();
        this.agj.rb();
        this.ajj.destroy();
        if (this.aiP != null) {
            this.sdk.Cj().b(this.aiP);
        }
        if (this.aiO != null) {
            this.sdk.BM().b(this.aiO);
        }
        if (sF()) {
            this.ahM.finish();
            return;
        }
        this.sdk.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.sdk.BN().f("AppLovinFullscreenActivity", "Fullscreen ad shown in container view dismissed, destroying the presenter.");
        }
        onDestroy();
    }

    public void onBackPressed() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "onBackPressed()");
        }
        if (this.ajk) {
            dismiss();
        }
        if (this.aiL.GL()) {
            bu("javascript:onBackPressed();");
        }
    }

    @Override // com.applovin.impl.sdk.utils.u.a
    public void onCachedResourcesChecked(boolean z) {
        if (z) {
            return;
        }
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQr)).booleanValue()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("AppLovinFullscreenActivity", "Streaming ad due to unavailable ad resources");
            }
            this.aiL.FA();
        } else {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("AppLovinFullscreenActivity", "Dismissing ad due to unavailable resources");
            }
            com.applovin.impl.adview.q.a(this.aiL, this.agA, "Unavailable ad resources", null, null);
            dismiss();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "onConfigurationChanged(Configuration) -  " + configuration);
        }
    }

    public void onDestroy() {
        AppLovinAdView appLovinAdView = this.aiQ;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            this.aiQ.destroy();
            this.aiQ = null;
            if ((parent instanceof ViewGroup) && sF()) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        sD();
        sE();
        this.agC = null;
        this.agA = null;
        this.agR = null;
        this.ahM = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
    }

    public void onPause() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "onPause()");
        }
        this.aiU = SystemClock.elapsedRealtime();
        bt("javascript:al_onAppPaused();");
        if (this.ajh.Jy()) {
            this.ajh.Jw();
        }
        sG();
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction()) && !this.aiY) {
            sN();
        } else if ("com.applovin.al_onPoststitialShow_undefined".equals(intent.getAction())) {
            rl();
        }
    }

    public void onResume() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "onResume()");
        }
        this.agj.bV(SystemClock.elapsedRealtime() - this.aiU);
        bt("javascript:al_onAppResumed();");
        sH();
        if (this.ajh.Jy()) {
            this.ajh.Jw();
        }
    }

    public void onStop() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "onStop()");
        }
    }

    public void onWindowFocusChanged(boolean z) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "onWindowFocusChanged(boolean) - " + z);
        }
        bt("javascript:al_onWindowFocusChanged( " + z + " );");
    }

    public abstract void pauseVideo();

    public void rl() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "Handling al_onPoststitialShow undefined");
        }
    }

    public abstract void sA();

    public boolean sB() {
        return this.aiX;
    }

    protected int sC() {
        int iGt = this.aiL.Gt();
        return (iGt <= 0 && ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNq)).booleanValue()) ? this.aiZ + 1 : iGt;
    }

    protected abstract void sD();

    protected void sE() {
        if (this.aiT.compareAndSet(false, true)) {
            com.applovin.impl.sdk.utils.m.b(this.agA, this.aiL);
            this.sdk.Cf().ac(this.aiL);
        }
    }

    protected boolean sF() {
        return this.ahM instanceof AppLovinFullscreenActivity;
    }

    protected void sG() {
        com.applovin.impl.sdk.utils.r rVar = this.aji;
        if (rVar != null) {
            rVar.pause();
        }
    }

    protected void sH() {
        com.applovin.impl.sdk.utils.r rVar = this.aji;
        if (rVar != null) {
            rVar.resume();
        }
    }

    protected abstract boolean sI();

    protected abstract boolean sJ();

    protected boolean sK() {
        return AppLovinAdType.INCENTIVIZED == this.aiL.getType() || AppLovinAdType.AUTO_INCENTIVIZED == this.aiL.getType();
    }

    protected abstract void sL();

    protected void sM() {
        com.applovin.impl.adview.d dVarQZ;
        if (this.aiQ == null || !this.aiL.Gs() || (dVarQZ = this.aiQ.getController().qZ()) == null) {
            return;
        }
        this.ajj.a(dVarQZ, new j.a() { // from class: com.applovin.impl.adview.activity.b.o
            @Override // com.applovin.impl.sdk.j.a
            public final void onBlackViewDetected(View view) {
                this.a.l(view);
            }
        });
    }

    public void sN() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("AppLovinFullscreenActivity", "Handling render process crash");
        }
        this.aiY = true;
    }
}
