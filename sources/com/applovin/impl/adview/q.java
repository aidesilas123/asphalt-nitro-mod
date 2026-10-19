package com.applovin.impl.adview;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenAdViewObserver;
import com.applovin.adview.AppLovinFullscreenThemedActivity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.adview.activity.b.a;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.drive.DriveFile;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class q implements AppLovinInterstitialAdDialog {
    private volatile AppLovinAdDisplayListener agA;
    private volatile AppLovinAdClickListener agC;
    private volatile AppLovinAdVideoPlaybackListener agR;
    private final Map<String, Object> agg = Collections.synchronizedMap(new HashMap());
    private volatile com.applovin.impl.sdk.ad.e agq;
    private volatile AppLovinAdLoadListener agz;
    private final WeakReference<Context> ahT;
    protected final com.applovin.impl.sdk.n sdk;

    public q(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.sdk = appLovinSdk.a();
        this.ahT = new WeakReference<>(context);
    }

    @Nullable
    private String a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2, Context context) {
        if (context == null) {
            com.applovin.impl.sdk.x.H("InterstitialAdDialogWrapper", "Failed to show interstitial: stale activity reference provided");
            return "Failed to show interstitial: stale activity reference provided";
        }
        if (appLovinAd == null) {
            com.applovin.impl.sdk.x.H("InterstitialAdDialogWrapper", "Unable to retrieve the loaded ad: " + appLovinAd2);
            return "Unable to retrieve the loaded ad";
        }
        if (!((AppLovinAdImpl) appLovinAd).hasShown() || !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aMJ)).booleanValue()) {
            return null;
        }
        com.applovin.impl.sdk.x.H("InterstitialAdDialogWrapper", "Attempting to show ad again: " + appLovinAd);
        return "Attempting to show ad again";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final Context context, long j) {
        new Handler(context.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.adview.a1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.u(context);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final Context context, final ViewGroup viewGroup, final AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, long j) {
        new Handler(context.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.adview.v0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(viewGroup, context, appLovinFullscreenAdViewObserver);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final ViewGroup viewGroup, final Context context, final AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver) {
        this.sdk.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.sdk.BN().f("InterstitialAdDialogWrapper", "Presenting ad in a containerView(" + viewGroup + ")");
        }
        viewGroup.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.applovin.impl.adview.activity.b.a.a(this.agq, this.agC, this.agA, this.agR, this.agg, this.sdk, (Activity) context, new a.InterfaceC0055a() { // from class: com.applovin.impl.adview.q.2
            @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0055a
            public void a(com.applovin.impl.adview.activity.b.a aVar) {
                if (com.applovin.impl.sdk.utils.b.i((Activity) context)) {
                    com.applovin.impl.sdk.x.H("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad when parent activity is finishing");
                    q.a(q.this.agq, q.this.agA, "Failed to show interstitial: attempting to show ad when parent activity is finishing", null, null);
                    return;
                }
                appLovinFullscreenAdViewObserver.setPresenter(aVar);
                try {
                    aVar.a(viewGroup);
                } catch (Throwable th) {
                    String str = "Failed to show interstitial: presenter threw exception " + th;
                    com.applovin.impl.sdk.x.H("InterstitialAdDialogWrapper", str);
                    q.a(q.this.agq, q.this.agA, str, null, null);
                }
            }

            @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0055a
            public void a(String str, Throwable th) {
                q.a(q.this.agq, q.this.agA, str, th, null);
            }
        });
    }

    private void a(com.applovin.impl.sdk.ad.e eVar, final Context context) {
        rP();
        this.sdk.Cb().a(eVar);
        this.agq = eVar;
        final long jMax = Math.max(0L, ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aNa)).longValue());
        this.sdk.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.sdk.BN().f("InterstitialAdDialogWrapper", "Presenting ad with delay of " + jMax);
        }
        a(eVar, context, new Runnable() { // from class: com.applovin.impl.adview.x0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(context, jMax);
            }
        });
    }

    private void a(com.applovin.impl.sdk.ad.e eVar, Context context, final Runnable runnable) {
        if (!TextUtils.isEmpty(eVar.GB()) || !eVar.GX() || com.applovin.impl.sdk.utils.i.aa(context) || !(context instanceof Activity)) {
            runnable.run();
            return;
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setTitle(eVar.GY()).setMessage(eVar.GZ()).setPositiveButton(eVar.Ha(), (DialogInterface.OnClickListener) null).create();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.w0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                runnable.run();
            }
        });
        alertDialogCreate.show();
    }

    private void a(com.applovin.impl.sdk.ad.e eVar, final ViewGroup viewGroup, final AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, final Context context) {
        rP();
        this.sdk.Cb().a(eVar);
        this.agq = eVar;
        final long jMax = Math.max(0L, ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aNa)).longValue());
        this.sdk.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.sdk.BN().f("InterstitialAdDialogWrapper", "Presenting ad with delay of " + jMax);
        }
        a(eVar, context, new Runnable() { // from class: com.applovin.impl.adview.b1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(context, viewGroup, appLovinFullscreenAdViewObserver, jMax);
            }
        });
    }

    public static void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, @Nullable Throwable th, @Nullable AppLovinFullscreenActivity appLovinFullscreenActivity) {
        com.applovin.impl.sdk.x.e("InterstitialAdDialogWrapper", str, th);
        if (appLovinAdDisplayListener instanceof com.applovin.impl.sdk.ad.h) {
            com.applovin.impl.sdk.utils.m.a(appLovinAdDisplayListener, str);
        } else {
            com.applovin.impl.sdk.utils.m.b(appLovinAdDisplayListener, eVar);
        }
        if (appLovinFullscreenActivity != null) {
            appLovinFullscreenActivity.dismiss();
        }
    }

    private void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.sdk.BD().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
    }

    private void b(AppLovinAd appLovinAd, String str) {
        if (this.agA != null) {
            if (this.agA instanceof com.applovin.impl.sdk.ad.h) {
                ((com.applovin.impl.sdk.ad.h) this.agA).onAdDisplayFailed(str);
            } else {
                this.agA.adHidden(appLovinAd);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final AppLovinAd appLovinAd) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.z0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d(appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(AppLovinAd appLovinAd) {
        if (this.agz != null) {
            this.agz.adReceived(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gb(final int i) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.y0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.gc(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void gc(int i) {
        if (this.agz != null) {
            this.agz.failedToReceiveAd(i);
        }
    }

    private void rP() {
        if (this.sdk.BM().AA() == null) {
            this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTg);
        }
    }

    private Context rQ() {
        return this.ahT.get();
    }

    private void t(Context context) {
        Intent intent = new Intent(context, (Class<?>) (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNz)).booleanValue() ? AppLovinFullscreenThemedActivity.class : AppLovinFullscreenActivity.class));
        intent.putExtra("com.applovin.interstitial.sdk_key", this.sdk.getSdkKey());
        AppLovinFullscreenActivity.parentInterstitialWrapper = this;
        if (this.sdk.BM().AA() == null && ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNu)).booleanValue()) {
            intent.addFlags(8388608);
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (context instanceof Activity) {
            context.startActivity(intent);
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        }
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(Context context) {
        this.sdk.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.sdk.BN().f("InterstitialAdDialogWrapper", "Presenting ad in a fullscreen activity");
        }
        t(context);
    }

    public com.applovin.impl.sdk.ad.e getCurrentAd() {
        return this.agq;
    }

    public void rO() {
        this.agC = null;
        this.agz = null;
        this.agR = null;
        this.agA = null;
    }

    public Map<String, Object> rR() {
        return this.agg;
    }

    public AppLovinAdDisplayListener rS() {
        return this.agA;
    }

    public AppLovinAdVideoPlaybackListener rT() {
        return this.agR;
    }

    public AppLovinAdClickListener rU() {
        return this.agC;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.agC = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.agA = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.agz = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.agR = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setExtraInfo(String str, @Nullable Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("No key specified");
        }
        this.agg.put(str, obj);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        a(new AppLovinAdLoadListener() { // from class: com.applovin.impl.adview.q.1
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd appLovinAd) {
                q.this.c(appLovinAd);
                q.this.showAndRender(appLovinAd);
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int i) {
                q.this.gb(i);
            }
        });
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        AppLovinAd appLovinAdA = com.applovin.impl.sdk.utils.u.a(appLovinAd, this.sdk);
        Context contextRQ = rQ();
        String strA = a(appLovinAdA, appLovinAd, contextRQ);
        if (StringUtils.isValidString(strA)) {
            b(appLovinAd, strA);
        } else {
            a((com.applovin.impl.sdk.ad.e) appLovinAdA, contextRQ);
        }
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle) {
        if (viewGroup == null || lifecycle == null) {
            com.applovin.impl.sdk.x.H("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
            b(appLovinAd, "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
            return;
        }
        AppLovinAd appLovinAdA = com.applovin.impl.sdk.utils.u.a(appLovinAd, this.sdk);
        Context contextRQ = rQ();
        String strA = a(appLovinAdA, appLovinAd, contextRQ);
        if (StringUtils.isValidString(strA)) {
            b(appLovinAd, strA);
            return;
        }
        AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver = new AppLovinFullscreenAdViewObserver(lifecycle, this, this.sdk);
        lifecycle.addObserver(appLovinFullscreenAdViewObserver);
        a((com.applovin.impl.sdk.ad.e) appLovinAdA, viewGroup, appLovinFullscreenAdViewObserver, contextRQ);
    }

    @NonNull
    public String toString() {
        return "AppLovinInterstitialAdDialog{}";
    }
}
