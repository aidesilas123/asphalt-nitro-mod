package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Intent;
import android.webkit.WebView;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinUserService;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class m implements l.a, AppLovinWebViewActivity.EventListener {
    private static final AtomicBoolean aAw = new AtomicBoolean();
    private static WeakReference<AppLovinWebViewActivity> aAx;
    private AtomicBoolean aAA = new AtomicBoolean();
    private AppLovinUserService.OnConsentDialogDismissListener aAy;
    private l aAz;
    private com.applovin.impl.sdk.utils.a aiO;
    private WeakReference<Activity> aiy;
    private final x logger;
    private final n sdk;

    m(n nVar) {
        this.aiy = new WeakReference<>(null);
        this.sdk = nVar;
        this.logger = nVar.BN();
        if (nVar.BK() != null) {
            this.aiy = new WeakReference<>(nVar.BK());
        }
        n.E(n.getApplicationContext()).a(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.sdk.m.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                m.this.aiy = new WeakReference(activity);
            }
        });
        this.aAz = new l(this, nVar);
    }

    private void Bh() {
        this.sdk.BM().b(this.aiO);
        if (Bg()) {
            AppLovinWebViewActivity appLovinWebViewActivity = aAx.get();
            aAx = null;
            if (appLovinWebViewActivity != null) {
                appLovinWebViewActivity.finish();
                AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener = this.aAy;
                if (onConsentDialogDismissListener != null) {
                    onConsentDialogDismissListener.onDismiss();
                    this.aAy = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener, Activity activity) {
        if (!p(this.sdk) || aAw.getAndSet(true)) {
            if (onConsentDialogDismissListener != null) {
                onConsentDialogDismissListener.onDismiss();
                return;
            }
            return;
        }
        this.aiy = new WeakReference<>(activity);
        this.aAy = onConsentDialogDismissListener;
        this.aiO = new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.sdk.m.2
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity2) {
                if (activity2 instanceof AppLovinWebViewActivity) {
                    if (!m.this.Bg() || m.aAx.get() != activity2) {
                        AppLovinWebViewActivity appLovinWebViewActivity = (AppLovinWebViewActivity) activity2;
                        WeakReference unused = m.aAx = new WeakReference(appLovinWebViewActivity);
                        appLovinWebViewActivity.loadUrl((String) m.this.sdk.a(com.applovin.impl.sdk.c.b.aKT), m.this);
                    }
                    m.aAw.set(false);
                }
            }
        };
        this.sdk.BM().a(this.aiO);
        Intent intent = new Intent(activity, (Class<?>) AppLovinWebViewActivity.class);
        intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.sdk.getSdkKey());
        intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, (Serializable) this.sdk.a(com.applovin.impl.sdk.c.b.aKU));
        activity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void bM(long j) {
        if (x.Fn()) {
            this.logger.f("ConsentDialogManager", "Scheduling repeating consent alert");
        }
        this.aAz.a(j, this.sdk, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void cy(String str) {
        WebView webViewA = com.applovin.impl.sdk.utils.u.a(n.getApplicationContext(), "preloading consent dialog", true);
        if (webViewA == null) {
            return;
        }
        webViewA.loadUrl(str);
    }

    private void f(boolean z, long j) {
        Bh();
        if (z) {
            bL(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Activity activity) {
        a(activity, (AppLovinUserService.OnConsentDialogDismissListener) null);
    }

    private boolean p(n nVar) {
        if (Bg()) {
            x.H("AppLovinSdk", "Consent dialog already showing");
            return false;
        }
        if (!com.applovin.impl.sdk.utils.i.aa(n.getApplicationContext())) {
            x.H("AppLovinSdk", "No internet available, skip showing of consent dialog");
            return false;
        }
        if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aKS)).booleanValue()) {
            if (x.Fn()) {
                this.logger.i("ConsentDialogManager", "Blocked publisher from showing consent dialog");
            }
            return false;
        }
        if (StringUtils.isValidString((String) nVar.a(com.applovin.impl.sdk.c.b.aKT))) {
            return true;
        }
        if (x.Fn()) {
            this.logger.i("ConsentDialogManager", "AdServer returned empty consent dialog URL");
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.l.a
    public void Be() {
        final Activity activity = this.aiy.get();
        if (activity != null) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.c1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.h(activity);
                }
            }, ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aKV)).longValue());
        }
    }

    @Override // com.applovin.impl.sdk.l.a
    public void Bf() {
    }

    boolean Bg() {
        WeakReference<AppLovinWebViewActivity> weakReference = aAx;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public void a(final Activity activity, final AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener) {
        activity.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(onConsentDialogDismissListener, activity);
            }
        });
    }

    public void bL(final long j) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.d1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.bM(j);
            }
        });
    }

    @Override // com.applovin.sdk.AppLovinWebViewActivity.EventListener
    public void onReceivedEvent(String str) {
        if ("accepted".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(true, n.getApplicationContext());
            Bh();
        } else if ("rejected".equalsIgnoreCase(str)) {
            AppLovinPrivacySettings.setHasUserConsent(false, n.getApplicationContext());
            f(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKW)).booleanValue(), ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aLb)).longValue());
        } else if ("closed".equalsIgnoreCase(str)) {
            f(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKX)).booleanValue(), ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aLc)).longValue());
        } else if (AppLovinWebViewActivity.EVENT_DISMISSED_VIA_BACK_BUTTON.equalsIgnoreCase(str)) {
            f(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKY)).booleanValue(), ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aLd)).longValue());
        }
    }

    public void preloadConsentDialog() {
        if (this.aAA.getAndSet(true)) {
            return;
        }
        final String str = (String) this.sdk.a(com.applovin.impl.sdk.c.b.aKT);
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.cy(str);
            }
        });
    }
}
