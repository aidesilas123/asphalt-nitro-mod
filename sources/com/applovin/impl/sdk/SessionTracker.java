package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.json.o2;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class SessionTracker {
    public static final String ACTION_APPLICATION_PAUSED = "com.applovin.application_paused";
    public static final String ACTION_APPLICATION_RESUMED = "com.applovin.application_resumed";
    private final AtomicBoolean aFD = new AtomicBoolean();
    private final AtomicBoolean aFE = new AtomicBoolean();
    private final AtomicInteger aFF = new AtomicInteger();
    private final AtomicLong aFG = new AtomicLong();
    private final AtomicLong aFH = new AtomicLong();
    private Date aFI;
    private Date aFJ;
    final n mSdk;

    SessionTracker(n nVar) {
        this.mSdk = nVar;
        Application application = (Application) n.getApplicationContext();
        application.registerActivityLifecycleCallbacks(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.sdk.SessionTracker.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                super.onActivityResumed(activity);
                SessionTracker.this.AC();
            }
        });
        application.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.applovin.impl.sdk.SessionTracker.2
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int i) {
                SessionTracker.this.aFF.set(i);
                if (i == 20) {
                    SessionTracker.this.AB();
                }
            }
        });
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new BroadcastReceiver() { // from class: com.applovin.impl.sdk.SessionTracker.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.USER_PRESENT".equals(action)) {
                    if (com.applovin.impl.sdk.utils.u.Ly()) {
                        SessionTracker.this.AC();
                    }
                } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    SessionTracker.this.AB();
                }
            }
        }, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void AB() {
        if (this.aFE.compareAndSet(false, true)) {
            Fu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void AC() {
        if (this.aFE.compareAndSet(true, false)) {
            Fv();
        }
    }

    private void Fu() {
        this.mSdk.BN();
        if (x.Fn()) {
            this.mSdk.BN().f("SessionTracker", "Application Paused");
        }
        this.aFG.set(System.currentTimeMillis());
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_PAUSED), null);
        if (this.aFD.get()) {
            return;
        }
        boolean zBooleanValue = ((Boolean) this.mSdk.a(com.applovin.impl.sdk.c.b.aOl)).booleanValue();
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.mSdk.a(com.applovin.impl.sdk.c.b.aOn)).longValue());
        if (this.aFI == null || System.currentTimeMillis() - this.aFI.getTime() >= millis) {
            this.mSdk.BF().trackEvent(o2.h.f0);
            if (zBooleanValue) {
                this.aFI = new Date();
            }
        }
        if (zBooleanValue) {
            return;
        }
        this.aFI = new Date();
    }

    private void Fv() {
        this.mSdk.BN();
        if (x.Fn()) {
            this.mSdk.BN().f("SessionTracker", "Application Resumed");
        }
        this.aFH.set(System.currentTimeMillis());
        boolean zBooleanValue = ((Boolean) this.mSdk.a(com.applovin.impl.sdk.c.b.aOl)).booleanValue();
        long jLongValue = ((Long) this.mSdk.a(com.applovin.impl.sdk.c.b.aOm)).longValue();
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_RESUMED), null);
        if (this.aFD.getAndSet(false)) {
            return;
        }
        long millis = TimeUnit.MINUTES.toMillis(jLongValue);
        if (this.aFJ == null || System.currentTimeMillis() - this.aFJ.getTime() >= millis) {
            this.mSdk.BF().trackEvent("resumed");
            if (zBooleanValue) {
                this.aFJ = new Date();
            }
        }
        if (!zBooleanValue) {
            this.aFJ = new Date();
        }
        this.mSdk.BR().a(com.applovin.impl.sdk.d.f.aTe);
    }

    public long getAppEnteredBackgroundTimeMillis() {
        return this.aFG.get();
    }

    public long getAppEnteredForegroundTimeMillis() {
        return this.aFH.get();
    }

    public int getLastTrimMemoryLevel() {
        return this.aFF.get();
    }

    public boolean isApplicationPaused() {
        return this.aFE.get();
    }

    public void pauseForClick() {
        this.aFD.set(true);
    }

    public void resumeForClick() {
        this.aFD.set(false);
    }
}
