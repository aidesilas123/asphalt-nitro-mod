package com.applovin.adview;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.applovin.impl.adview.q;
import com.applovin.impl.sdk.n;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinFullscreenAdViewObserver implements LifecycleObserver {
    private com.applovin.impl.adview.activity.b.a p;
    private q parentInterstitialWrapper;
    private final AtomicBoolean q = new AtomicBoolean(true);
    private final n sdk;

    public AppLovinFullscreenAdViewObserver(Lifecycle lifecycle, q qVar, n nVar) {
        this.parentInterstitialWrapper = qVar;
        this.sdk = nVar;
        lifecycle.addObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        q qVar = this.parentInterstitialWrapper;
        if (qVar != null) {
            qVar.rO();
            this.parentInterstitialWrapper = null;
        }
        com.applovin.impl.adview.activity.b.a aVar = this.p;
        if (aVar != null) {
            aVar.dismiss();
            this.p.onDestroy();
            this.p = null;
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        com.applovin.impl.adview.activity.b.a aVar = this.p;
        if (aVar != null) {
            aVar.onPause();
            this.p.pauseVideo();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        com.applovin.impl.adview.activity.b.a aVar;
        if (this.q.getAndSet(false) || (aVar = this.p) == null) {
            return;
        }
        aVar.onResume();
        this.p.bE(0L);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        com.applovin.impl.adview.activity.b.a aVar = this.p;
        if (aVar != null) {
            aVar.onStop();
        }
    }

    public void setPresenter(com.applovin.impl.adview.activity.b.a aVar) {
        this.p = aVar;
    }
}
