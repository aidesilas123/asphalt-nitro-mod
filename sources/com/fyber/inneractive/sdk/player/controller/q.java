package com.fyber.inneractive.sdk.player.controller;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class q implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ n a;

    public q(n nVar) {
        this.a = nVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (activity.equals(this.a.f2176d.getContext())) {
            com.fyber.inneractive.sdk.player.ui.l lVar = this.a.f2176d;
            lVar.h = true;
            if (lVar.G != null) {
                IAlog.a("Autoclick paused", new Object[0]);
                lVar.G.a();
            }
            this.a.f2176d.b();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (activity.equals(this.a.f2176d.getContext())) {
            com.fyber.inneractive.sdk.player.ui.l lVar = this.a.f2176d;
            lVar.h = false;
            if (lVar.G != null) {
                IAlog.a("Autoclick resumed", new Object[0]);
                lVar.G.b();
            }
            this.a.f2176d.b();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
