package com.applovin.impl.sdk.utils;

import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class f implements AppLovinBroadcastManager.Receiver {
    private static final Set<f> aVB = new HashSet();
    private final r ayU;
    private final com.applovin.impl.sdk.n sdk;

    private f(long j, com.applovin.impl.sdk.n nVar, final Runnable runnable) {
        this.ayU = r.b(j, nVar, new Runnable() { // from class: com.applovin.impl.sdk.utils.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.j(runnable);
            }
        });
        this.sdk = nVar;
        aVB.add(this);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    public static f a(long j, com.applovin.impl.sdk.n nVar, Runnable runnable) {
        return new f(j, nVar, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(Runnable runnable) {
        tT();
        if (runnable != null) {
            runnable.run();
        }
    }

    public long AH() {
        return this.ayU.AH();
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.ayU.pause();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.ayU.resume();
        }
    }

    public void tT() {
        this.ayU.tT();
        AppLovinBroadcastManager.unregisterReceiver(this);
        aVB.remove(this);
    }
}
