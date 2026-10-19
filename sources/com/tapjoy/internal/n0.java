package com.tapjoy.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public final class n0 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ HashSet a;

    public n0(HashSet hashSet) {
        this.a = hashSet;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.a.add(activity.getClass().getName() + "@" + System.identityHashCode(activity));
        if (this.a.size() == 1) {
            v1 v1Var = v1.a;
            if (v1Var.i() && v1Var.k()) {
                q.a(null);
            }
        }
        t.c.a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.a.remove(activity.getClass().getName() + "@" + System.identityHashCode(activity));
        if (this.a.size() <= 0) {
            v1 v1Var = v1.a;
            if (v1Var.i()) {
                e9 e9Var = v1Var.j;
                if (e9Var.b.get()) {
                    e9Var.c.run();
                }
            }
        }
    }
}
