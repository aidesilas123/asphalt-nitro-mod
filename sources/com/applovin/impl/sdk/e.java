package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class e implements AppLovinBroadcastManager.Receiver {
    private com.applovin.impl.sdk.utils.r ayU;
    private final Object ayX = new Object();
    private final AtomicBoolean ayY = new AtomicBoolean();
    private boolean ayZ;
    private final WeakReference<a> aza;
    private long azb;
    private final n sdk;

    public interface a {
        void onAdRefresh();
    }

    public e(n nVar, a aVar) {
        this.aza = new WeakReference<>(aVar);
        this.sdk = nVar;
    }

    private void AM() {
        synchronized (this.ayX) {
            com.applovin.impl.sdk.utils.r rVar = this.ayU;
            if (rVar != null) {
                rVar.pause();
            } else {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f("AdRefreshManager", "An ad load is in progress. Will pause refresh once the ad finishes loading.");
                }
                this.ayY.set(true);
            }
        }
    }

    private void AN() {
        synchronized (this.ayX) {
            com.applovin.impl.sdk.utils.r rVar = this.ayU;
            if (rVar != null) {
                rVar.resume();
            } else {
                this.ayY.set(false);
            }
        }
    }

    private void AO() {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJu)).booleanValue()) {
            AM();
        }
    }

    private void AP() {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJu)).booleanValue()) {
            synchronized (this.ayX) {
                if (this.ayZ) {
                    this.sdk.BN();
                    if (x.Fn()) {
                        this.sdk.BN().f("AdRefreshManager", "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                    }
                } else if (this.sdk.Ce().isApplicationPaused()) {
                    this.sdk.BN();
                    if (x.Fn()) {
                        this.sdk.BN().f("AdRefreshManager", "Waiting for the application to enter foreground to resume the timer.");
                    }
                } else {
                    com.applovin.impl.sdk.utils.r rVar = this.ayU;
                    if (rVar != null) {
                        rVar.resume();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AQ() {
        Y();
        a aVar = this.aza.get();
        if (aVar != null) {
            aVar.onAdRefresh();
        }
    }

    private void Y() {
        synchronized (this.ayX) {
            this.ayU = null;
            if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJv)).booleanValue()) {
                AppLovinBroadcastManager.unregisterReceiver(this);
            }
        }
    }

    public void AB() {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJt)).booleanValue()) {
            AM();
        }
    }

    public void AC() {
        a aVar;
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJt)).booleanValue()) {
            synchronized (this.ayX) {
                if (this.ayZ) {
                    this.sdk.BN();
                    if (x.Fn()) {
                        this.sdk.BN().f("AdRefreshManager", "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                    }
                    return;
                }
                if (this.sdk.Cf().Fc()) {
                    this.sdk.BN();
                    if (x.Fn()) {
                        this.sdk.BN().f("AdRefreshManager", "Waiting for the full screen ad to be dismissed to resume the timer.");
                    }
                    return;
                }
                boolean z = false;
                if (this.ayU != null) {
                    long jAH = this.azb - AH();
                    long jLongValue = ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJs)).longValue();
                    if (jLongValue < 0 || jAH <= jLongValue) {
                        this.ayU.resume();
                    } else {
                        AI();
                        z = true;
                    }
                }
                if (!z || (aVar = this.aza.get()) == null) {
                    return;
                }
                aVar.onAdRefresh();
            }
        }
    }

    public boolean AG() {
        boolean z;
        synchronized (this.ayX) {
            z = this.ayU != null;
        }
        return z;
    }

    public long AH() {
        long jAH;
        synchronized (this.ayX) {
            com.applovin.impl.sdk.utils.r rVar = this.ayU;
            jAH = rVar != null ? rVar.AH() : -1L;
        }
        return jAH;
    }

    public void AI() {
        synchronized (this.ayX) {
            com.applovin.impl.sdk.utils.r rVar = this.ayU;
            if (rVar != null) {
                rVar.tT();
                Y();
            }
        }
    }

    public void AJ() {
        synchronized (this.ayX) {
            AM();
            this.ayZ = true;
        }
    }

    public void AK() {
        synchronized (this.ayX) {
            AN();
            this.ayZ = false;
        }
    }

    public boolean AL() {
        return this.ayZ;
    }

    public void bK(long j) {
        synchronized (this.ayX) {
            AI();
            this.azb = j;
            this.ayU = com.applovin.impl.sdk.utils.r.b(j, this.sdk, new Runnable() { // from class: com.applovin.impl.sdk.q0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.AQ();
                }
            });
            if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJv)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_displayed"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_hidden"));
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJu)).booleanValue() && (this.sdk.Cf().Fc() || this.sdk.Ce().isApplicationPaused())) {
                this.ayU.pause();
            }
            if (this.ayY.compareAndSet(true, false) && ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJw)).booleanValue()) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f("AdRefreshManager", "Pausing refresh for a previous request.");
                }
                this.ayU.pause();
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            AB();
            return;
        }
        if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            AC();
        } else if ("com.applovin.fullscreen_ad_displayed".equals(action)) {
            AO();
        } else if ("com.applovin.fullscreen_ad_hidden".equals(action)) {
            AP();
        }
    }
}
