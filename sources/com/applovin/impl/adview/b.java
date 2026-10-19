package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.adview.v;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class b implements AppLovinCommunicatorSubscriber {
    private volatile AppLovinAdDisplayListener agA;
    private volatile AppLovinAdViewEventListener agB;
    private volatile AppLovinAdClickListener agC;
    private Context agc;
    private ViewGroup agd;
    private AppLovinAdServiceImpl age;
    private AppLovinCommunicator agf;
    private AppLovinAdSize agh;
    private String agi;
    private com.applovin.impl.sdk.d.d agj;
    private e agk;
    private c agl;
    private d agm;

    @Nullable
    private v agn;
    private Runnable ago;
    private Runnable agp;
    private volatile AppLovinAdLoadListener agz;
    private com.applovin.impl.sdk.x logger;
    private com.applovin.impl.sdk.n sdk;
    private final Map<String, Object> agg = Collections.synchronizedMap(new HashMap());
    private volatile com.applovin.impl.sdk.ad.e agq = null;
    private volatile AppLovinAd agr = null;
    private m ags = null;
    private m agt = null;
    private final AtomicReference<AppLovinAd> agu = new AtomicReference<>();
    private final AtomicBoolean agv = new AtomicBoolean();
    private volatile boolean agw = false;
    private volatile boolean agx = false;
    private volatile boolean agy = false;
    private volatile g agD = null;

    private class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.agm != null) {
                b.this.agm.setVisibility(8);
            }
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.adview.b$b, reason: collision with other inner class name */
    private class RunnableC0056b implements Runnable {
        private RunnableC0056b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.agq != null) {
                if (b.this.agm == null) {
                    com.applovin.impl.sdk.x.H("AppLovinAdView", "Unable to render advertisement for ad #" + b.this.agq.getAdIdNumber() + ". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
                    com.applovin.impl.sdk.utils.m.a(b.this.agB, b.this.agq, (AppLovinAdView) null, AppLovinAdViewDisplayErrorCode.WEBVIEW_NOT_FOUND);
                    return;
                }
                b.this.rc();
                com.applovin.impl.sdk.x unused = b.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    b.this.logger.f("AppLovinAdView", "Rendering advertisement ad for #" + b.this.agq.getAdIdNumber() + "...");
                }
                b.a(b.this.agm, b.this.agq.getSize());
                if (b.this.agn != null) {
                    com.applovin.impl.sdk.utils.v.B(b.this.agn);
                    b.this.agn = null;
                }
                p pVar = new p(b.this.agg, b.this.sdk);
                if (pVar.rN()) {
                    b.this.agn = new v(pVar, b.this.agc);
                    b.this.agn.a(new v.a() { // from class: com.applovin.impl.adview.b.b.1
                        @Override // com.applovin.impl.adview.v.a
                        public void onFailure() {
                            com.applovin.impl.sdk.x unused2 = b.this.logger;
                            if (com.applovin.impl.sdk.x.Fn()) {
                                b.this.logger.i("AppLovinAdView", "Watermark failed to render.");
                            }
                        }

                        @Override // com.applovin.impl.adview.v.a
                        public void rj() {
                            b.this.agm.addView(b.this.agn, new ViewGroup.LayoutParams(-1, -1));
                        }
                    });
                }
                b.this.agm.setAdHtmlLoaded(false);
                b.this.agm.a(b.this.agq);
                if (b.this.agq.getSize() != AppLovinAdSize.INTERSTITIAL && !b.this.agx) {
                    b bVar = b.this;
                    bVar.agj = new com.applovin.impl.sdk.d.d(bVar.agq, b.this.sdk);
                    b.this.agj.JM();
                    b.this.agm.setStatsManagerHelper(b.this.agj);
                    b.this.agq.setHasShown(true);
                }
                if (b.this.agm.getStatsManagerHelper() != null) {
                    b.this.agm.getStatsManagerHelper().bS(b.this.agq.Gm() ? 0L : 1L);
                }
            }
        }
    }

    static class c implements AppLovinAdLoadListener {
        private final b agG;

        c(b bVar, com.applovin.impl.sdk.n nVar) {
            if (bVar == null) {
                throw new IllegalArgumentException("No view specified");
            }
            if (nVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.agG = bVar;
        }

        private b rk() {
            return this.agG;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            b bVarRk = rk();
            if (bVarRk != null) {
                bVarRk.a(appLovinAd);
            } else {
                com.applovin.impl.sdk.x.H("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            b bVarRk = rk();
            if (bVarRk != null) {
                bVarRk.fW(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        qT();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(View view, AppLovinAdSize appLovinAdSize) {
        if (view == null) {
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        String label = appLovinAdSize.getLabel();
        AppLovinAdSize appLovinAdSize2 = AppLovinAdSize.INTERSTITIAL;
        int iApplyDimension = label.equals(appLovinAdSize2.getLabel()) ? -1 : appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        int iApplyDimension2 = appLovinAdSize.getLabel().equals(appLovinAdSize2.getLabel()) ? -1 : appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = iApplyDimension;
        layoutParams.height = iApplyDimension2;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
        }
        view.setLayoutParams(layoutParams);
    }

    private void a(AppLovinAdView appLovinAdView, com.applovin.impl.sdk.n nVar, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        this.sdk = nVar;
        this.age = nVar.BD();
        this.logger = nVar.BN();
        this.agf = AppLovinCommunicator.getInstance(context);
        this.agh = appLovinAdSize;
        this.agi = str;
        if (!(context instanceof AppLovinFullscreenActivity)) {
            context = context.getApplicationContext();
        }
        this.agc = context;
        this.agd = appLovinAdView;
        this.agk = new e(this, nVar);
        this.agp = new a();
        this.ago = new RunnableC0056b();
        this.agl = new c(this, nVar);
        a(appLovinAdSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinAd appLovinAd) {
        if (this.agv.compareAndSet(true, false)) {
            a(this.agh);
        }
        try {
            if (this.agz != null) {
                this.agz.adReceived(appLovinAd);
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.H("AppLovinAdView", "Exception while running ad load callback: " + th.getMessage());
            com.applovin.impl.sdk.n nVar = this.sdk;
            if (nVar != null) {
                nVar.Cs().d("AppLovinAdView", "notifyAdLoaded", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(MotionEvent motionEvent) {
        if (this.ags == null && (this.agq instanceof com.applovin.impl.sdk.ad.a) && this.agm != null) {
            com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.agq;
            Context context = this.agc;
            Activity activityA = context instanceof Activity ? (Activity) context : com.applovin.impl.sdk.utils.u.a((View) this.agm, this.sdk);
            if (activityA == null || activityA.isFinishing()) {
                com.applovin.impl.sdk.x.H("AppLovinAdView", "Unable to expand ad. No Activity found.");
                Uri uriFK = aVar.FK();
                if (uriFK != null) {
                    this.age.trackAndLaunchClick(aVar, qY(), this, uriFK, motionEvent, this.agy, null);
                    com.applovin.impl.sdk.d.d dVar = this.agj;
                    if (dVar != null) {
                        dVar.JN();
                    }
                }
                this.agm.bq("javascript:al_onFailedExpand();");
                return;
            }
            ViewGroup viewGroup = this.agd;
            if (viewGroup != null) {
                viewGroup.removeView(this.agm);
            }
            m mVar = new m(aVar, this.agm, activityA, this.sdk);
            this.ags = mVar;
            mVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.c0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.a.a(dialogInterface);
                }
            });
            this.ags.show();
            com.applovin.impl.sdk.utils.m.a(this.agB, this.agq, (AppLovinAdView) this.agd);
            com.applovin.impl.sdk.d.d dVar2 = this.agj;
            if (dVar2 != null) {
                dVar2.JO();
            }
            if (this.agq.isOpenMeasurementEnabled()) {
                this.agq.getAdEventTracker().x(this.ags.rJ());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(WebView webView) {
        this.agq.getAdEventTracker().i(webView);
        v vVar = this.agn;
        if (vVar == null || !vVar.sh()) {
            this.agq.getAdEventTracker().x(webView);
        } else {
            com.applovin.impl.sdk.a.b adEventTracker = this.agq.getAdEventTracker();
            v vVar2 = this.agn;
            adEventTracker.a(webView, Collections.singletonList(new com.applovin.impl.sdk.a.d(vVar2, FriendlyObstructionPurpose.NOT_VISIBLE, vVar2.getIdentifier())));
        }
        this.agq.getAdEventTracker().IK();
        this.agq.getAdEventTracker().IL();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void fX(int i) {
        try {
            if (this.agz != null) {
                this.agz.failedToReceiveAd(i);
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("AppLovinAdView", "Exception while running app load callback", th);
            com.applovin.impl.sdk.n nVar = this.sdk;
            if (nVar != null) {
                nVar.Cs().d("AppLovinAdView", "notifyAdLoadFailed", th);
            }
        }
    }

    private void qP() {
        if (this.logger != null && com.applovin.impl.sdk.x.Fn() && com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinAdView", "Destroying...");
        }
        com.applovin.impl.sdk.utils.x.k(this.agm);
        this.agm = null;
        this.agz = null;
        this.agA = null;
        this.agC = null;
        this.agB = null;
        this.agx = true;
    }

    private void qS() {
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.g0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.rg();
            }
        });
    }

    private void ra() {
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.l0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.re();
            }
        });
    }

    private void rb() {
        com.applovin.impl.sdk.d.d dVar = this.agj;
        if (dVar != null) {
            dVar.rb();
            this.agj = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rc() {
        com.applovin.impl.sdk.ad.e eVar = this.agq;
        com.applovin.impl.sdk.utils.n nVar = new com.applovin.impl.sdk.utils.n();
        nVar.Lo().g(eVar).a(qY());
        if (!com.applovin.impl.sdk.utils.u.c(eVar.getSize())) {
            nVar.Lo().dz("Fullscreen Ad Properties").h(eVar);
        }
        nVar.L(this.sdk);
        nVar.Lo();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinAdView", nVar.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void rd() {
        qZ().loadUrl("chrome://crash");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void re() {
        com.applovin.impl.sdk.ad.a aVarRI;
        m mVar = this.agt;
        if (mVar == null && this.ags == null) {
            return;
        }
        if (mVar != null) {
            aVarRI = mVar.rI();
            this.agt.dismiss();
            this.agt = null;
        } else {
            aVarRI = this.ags.rI();
            this.ags.dismiss();
            this.ags = null;
        }
        com.applovin.impl.sdk.utils.m.b(this.agB, aVarRI, (AppLovinAdView) this.agd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void rf() {
        d dVar;
        ra();
        if (this.agd == null || (dVar = this.agm) == null || dVar.getParent() != null) {
            return;
        }
        this.agd.addView(this.agm);
        a(this.agm, this.agq.getSize());
        if (this.agq.isOpenMeasurementEnabled()) {
            this.agq.getAdEventTracker().x(this.agm);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void rg() {
        if (this.ags != null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinAdView", "Detaching expanded ad: " + this.ags.rI());
            }
            this.agt = this.ags;
            this.ags = null;
            a(this.agh);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void rh() {
        if (this.agm != null && this.ags != null) {
            qT();
        }
        qP();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ri() {
        this.agm.loadDataWithBaseURL("/", "<html></html>", "text/html", null, "");
    }

    private void runOnUiThread(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    public void a(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            com.applovin.impl.sdk.x.H("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = com.applovin.impl.sdk.utils.c.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk != null) {
            a(appLovinAdView, appLovinSdk.a(), appLovinAdSize2, str, context);
            if (com.applovin.impl.sdk.utils.c.b(attributeSet)) {
                loadNextAd();
            }
        }
    }

    public void a(g gVar) {
        this.agD = gVar;
    }

    void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdView appLovinAdView, Uri uri, MotionEvent motionEvent, @Nullable Bundle bundle) {
        if (appLovinAdView != null) {
            this.age.trackAndLaunchClick(eVar, appLovinAdView, this, uri, motionEvent, this.agy, bundle);
        } else if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
        }
        com.applovin.impl.sdk.utils.m.a(this.agC, eVar);
    }

    void a(final AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i("AppLovinAdView", "No provided when to the view controller");
            }
            fW(-1);
        } else {
            if (this.agx) {
                this.agu.set(appLovinAd);
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
                }
            } else {
                renderAd(appLovinAd);
            }
            runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.d0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(appLovinAd);
                }
            });
        }
    }

    public void a(AppLovinAd appLovinAd, String str) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        com.applovin.impl.sdk.utils.u.b(appLovinAd, this.sdk);
        if (!this.agw) {
            com.applovin.impl.sdk.x.E("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        com.applovin.impl.sdk.ad.e eVar = (com.applovin.impl.sdk.ad.e) com.applovin.impl.sdk.utils.u.a(appLovinAd, this.sdk);
        if (eVar == null) {
            com.applovin.impl.sdk.x.H("AppLovinAdView", "Unable to retrieve the loaded ad: " + appLovinAd);
            com.applovin.impl.sdk.utils.m.a(this.agA, "Unable to retrieve the loaded ad");
            return;
        }
        if (eVar == this.agq) {
            com.applovin.impl.sdk.x.H("AppLovinAdView", "Attempting to show ad again: " + eVar);
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aMJ)).booleanValue()) {
                if (!(this.agA instanceof com.applovin.impl.sdk.ad.h)) {
                    throw new IllegalStateException("Attempting to show ad again");
                }
                com.applovin.impl.sdk.utils.m.a(this.agA, "Attempting to show ad again");
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinAdView", "Rendering ad #" + eVar.getAdIdNumber() + " (" + eVar.getSize() + ")");
        }
        com.applovin.impl.sdk.utils.m.b(this.agA, this.agq);
        if (eVar.getSize() != AppLovinAdSize.INTERSTITIAL) {
            rb();
        }
        if (this.agq != null && this.agq.isOpenMeasurementEnabled()) {
            this.agq.getAdEventTracker().IM();
        }
        this.agu.set(null);
        this.agr = null;
        this.agq = eVar;
        if (!this.agx && com.applovin.impl.sdk.utils.u.c(this.agh)) {
            this.sdk.BD().trackImpression(eVar);
        }
        if (this.ags != null) {
            qS();
        }
        runOnUiThread(this.ago);
    }

    protected void a(AppLovinAdSize appLovinAdSize) {
        try {
            d dVar = new d(this.agk, this.sdk, this.agc);
            this.agm = dVar;
            dVar.setBackgroundColor(0);
            this.agm.setWillNotCacheDrawing(false);
            this.agd.setBackgroundColor(0);
            this.agd.addView(this.agm);
            a(this.agm, appLovinAdSize);
            if (!this.agw) {
                runOnUiThread(this.agp);
            }
            runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.a0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.ri();
                }
            });
            this.agw = true;
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("AppLovinAdView", "Failed to initialize AdWebView", th);
            this.sdk.Cs().d("AppLovinAdView", "initAdWebView", th);
            this.agv.set(true);
        }
    }

    public void b(final MotionEvent motionEvent) {
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(motionEvent);
            }
        });
    }

    public void b(WebView webView) {
        d(webView, null);
    }

    public void d(final WebView webView, String str) {
        if (this.agq == null) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.k0
            @Override // java.lang.Runnable
            public final void run() {
                webView.setVisibility(0);
            }
        });
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQS)).booleanValue() || (str != null && str.startsWith(this.agq.Hn()))) {
            try {
                if (this.agq != this.agr) {
                    this.agr = this.agq;
                    this.agm.setAdHtmlLoaded(true);
                    if (this.agA != null) {
                        this.sdk.Co().V(this.agq);
                        com.applovin.impl.sdk.utils.m.a(this.agA, this.agq);
                        this.agm.bq("javascript:al_onAdViewRendered();");
                    }
                    if (com.applovin.impl.sdk.utils.u.c(this.agh) && this.agq.isOpenMeasurementEnabled()) {
                        this.sdk.BO().a(new ab(this.sdk, "StartOMSDK", new Runnable() { // from class: com.applovin.impl.adview.j0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.a.c(webView);
                            }
                        }), q.b.MAIN, 500L);
                    }
                }
            } catch (Throwable th) {
                com.applovin.impl.sdk.x.e("AppLovinAdView", "Exception while notifying ad display listener", th);
                com.applovin.impl.sdk.n nVar = this.sdk;
                if (nVar != null) {
                    nVar.Cs().d("AppLovinAdView", "onAdHtmlLoaded", th);
                }
            }
        }
    }

    public void destroy() {
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.i0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.rh();
            }
        });
    }

    void fW(final int i) {
        if (!this.agx) {
            runOnUiThread(this.agp);
        }
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.f0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.fX(i);
            }
        });
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return b.class.getSimpleName();
    }

    @Nullable
    public com.applovin.impl.sdk.ad.e getCurrentAd() {
        return this.agq;
    }

    public com.applovin.impl.sdk.n getSdk() {
        return this.sdk;
    }

    public AppLovinAdSize getSize() {
        return this.agh;
    }

    public String getZoneId() {
        return this.agi;
    }

    public void loadNextAd() {
        if (this.sdk == null || this.agl == null || this.agc == null || !this.agw) {
            com.applovin.impl.sdk.x.E("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
        } else {
            this.age.loadNextAd(this.agi, this.agh, this.agl);
        }
    }

    public void onAttachedToWindow() {
        if (com.applovin.impl.sdk.utils.c.z(this.agm)) {
            this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTg);
        }
    }

    public void onDetachedFromWindow() {
        if (this.agw) {
            com.applovin.impl.sdk.utils.m.b(this.agA, this.agq);
            if (this.agq != null && this.agq.isOpenMeasurementEnabled() && com.applovin.impl.sdk.utils.u.c(this.agq.getSize())) {
                this.agq.getAdEventTracker().IM();
            }
            if (this.agm == null || this.ags == null) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
                }
            } else {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
                }
                qS();
            }
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.e0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.rd();
                }
            });
        }
    }

    public void pause() {
        if (!this.agw || this.agx) {
            return;
        }
        this.agx = true;
    }

    public AppLovinAdViewEventListener qQ() {
        return this.agB;
    }

    @Nullable
    public g qR() {
        return this.agD;
    }

    public void qT() {
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.h0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.rf();
            }
        });
    }

    public void qU() {
        if (this.ags != null || this.agt != null) {
            qT();
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinAdView", "Ad: " + this.agq + " closed.");
        }
        runOnUiThread(this.agp);
        com.applovin.impl.sdk.utils.m.b(this.agA, this.agq);
        this.agq = null;
    }

    public void qV() {
        this.agy = true;
    }

    public void qW() {
        this.agy = false;
    }

    public void qX() {
        if (!(this.agc instanceof l) || this.agq == null) {
            return;
        }
        if (this.agq.Gv() == e.a.DISMISS) {
            ((l) this.agc).dismiss();
        }
    }

    public AppLovinAdView qY() {
        return (AppLovinAdView) this.agd;
    }

    public d qZ() {
        return this.agm;
    }

    public void renderAd(AppLovinAd appLovinAd) {
        a(appLovinAd, (String) null);
    }

    public void resume() {
        if (this.agw) {
            AppLovinAd andSet = this.agu.getAndSet(null);
            if (andSet != null) {
                renderAd(andSet);
            }
            this.agx = false;
        }
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.agC = appLovinAdClickListener;
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.agA = appLovinAdDisplayListener;
    }

    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.agz = appLovinAdLoadListener;
    }

    public void setAdViewEventListener(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.agB = appLovinAdViewEventListener;
    }

    public void setExtraInfo(String str, Object obj) {
        this.agg.put(str, obj);
    }

    public void setStatsManagerHelper(com.applovin.impl.sdk.d.d dVar) {
        d dVar2 = this.agm;
        if (dVar2 != null) {
            dVar2.setStatsManagerHelper(dVar);
        }
    }
}
