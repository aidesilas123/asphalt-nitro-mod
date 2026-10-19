package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class b implements AppLovinBroadcastManager.Receiver {
    private static final long ayP = TimeUnit.SECONDS.toMillis(2);
    private final HashSet<c> ayQ = new HashSet<>();
    private final Object ayR = new Object();
    private final x logger;
    private final n sdk;

    public interface a {
        void onAdExpired(com.applovin.impl.sdk.ad.g gVar);
    }

    public b(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
    }

    private void AB() {
        synchronized (this.ayR) {
            Iterator<c> it = this.ayQ.iterator();
            while (it.hasNext()) {
                it.next().tT();
            }
        }
    }

    private void AC() {
        HashSet<c> hashSet = new HashSet();
        synchronized (this.ayR) {
            for (c cVar : this.ayQ) {
                com.applovin.impl.sdk.ad.g gVarAD = cVar.AD();
                if (gVarAD == null) {
                    hashSet.add(cVar);
                } else {
                    long timeToLiveMillis = gVarAD.getTimeToLiveMillis();
                    if (timeToLiveMillis <= 0) {
                        if (x.Fn()) {
                            this.logger.f("AdExpirationManager", "Ad expired while app was paused. Preparing to notify listener for ad: " + gVarAD);
                        }
                        hashSet.add(cVar);
                    } else {
                        if (x.Fn()) {
                            this.logger.f("AdExpirationManager", "Rescheduling expiration with remaining " + TimeUnit.MILLISECONDS.toSeconds(timeToLiveMillis) + " seconds for ad: " + gVarAD);
                        }
                        cVar.bJ(timeToLiveMillis);
                    }
                }
            }
        }
        for (c cVar2 : hashSet) {
            a(cVar2);
            cVar2.AE();
        }
    }

    @Nullable
    private c b(com.applovin.impl.sdk.ad.g gVar) {
        synchronized (this.ayR) {
            if (gVar == null) {
                return null;
            }
            for (c cVar : this.ayQ) {
                if (gVar == cVar.AD()) {
                    return cVar;
                }
            }
            return null;
        }
    }

    public void a(com.applovin.impl.sdk.ad.g gVar) {
        synchronized (this.ayR) {
            c cVarB = b(gVar);
            if (cVarB != null) {
                if (x.Fn()) {
                    this.logger.f("AdExpirationManager", "Cancelling expiration timer for ad: " + gVar);
                }
                cVarB.tT();
                a(cVarB);
            }
        }
    }

    public void a(c cVar) {
        synchronized (this.ayR) {
            this.ayQ.remove(cVar);
            if (this.ayQ.isEmpty()) {
                AppLovinBroadcastManager.unregisterReceiver(this);
            }
        }
    }

    public boolean a(com.applovin.impl.sdk.ad.g gVar, a aVar) {
        synchronized (this.ayR) {
            if (b(gVar) != null) {
                if (x.Fn()) {
                    this.logger.f("AdExpirationManager", "Ad expiration already scheduled for ad: " + gVar);
                }
                return true;
            }
            if (gVar.getTimeToLiveMillis() <= ayP) {
                if (x.Fn()) {
                    this.logger.f("AdExpirationManager", "Ad has already expired: " + gVar);
                }
                gVar.setExpired();
                return false;
            }
            if (x.Fn()) {
                this.logger.f("AdExpirationManager", "Scheduling ad expiration " + TimeUnit.MILLISECONDS.toSeconds(gVar.getTimeToLiveMillis()) + " seconds from now for " + gVar + "...");
            }
            if (this.ayQ.isEmpty()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
            this.ayQ.add(c.a(gVar, aVar, this.sdk));
            return true;
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            AB();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            AC();
        }
    }
}
