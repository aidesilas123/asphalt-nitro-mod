package com.moat.analytics.mobile.glft;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
class a {
    static WeakReference<Activity> a;
    private static boolean b;
    private static Application c;

    /* JADX INFO: renamed from: com.moat.analytics.mobile.glft.a$a, reason: collision with other inner class name */
    private static class C0438a implements Application.ActivityLifecycleCallbacks {
        C0438a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            try {
                n.a(3, "MoatActivityState", this, "Activity destroyed: " + activity.getClass() + "@" + activity.hashCode());
                if (a.b(activity)) {
                    a.a = new WeakReference<>(null);
                }
            } catch (Exception e2) {
                l.a(e2);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            try {
                if (a.b(activity)) {
                    a.a = new WeakReference<>(null);
                }
                n.a(3, "MoatActivityState", this, "Activity paused: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e2) {
                l.a(e2);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            try {
                a.a = new WeakReference<>(activity);
                u.d().f();
                n.a(3, "MoatActivityState", this, "Activity resumed: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e2) {
                l.a(e2);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            try {
                a.a = new WeakReference<>(activity);
                n.a(3, "MoatActivityState", this, "Activity started: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e2) {
                l.a(e2);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            try {
                if (a.b(activity)) {
                    a.a = new WeakReference<>(null);
                }
                n.a(3, "MoatActivityState", this, "Activity stopped: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e2) {
                l.a(e2);
            }
        }
    }

    a() {
    }

    static Application a() {
        return c;
    }

    static void a(Application application) {
        c = application;
        if (b) {
            return;
        }
        b = true;
        application.registerActivityLifecycleCallbacks(new C0438a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Activity activity) {
        WeakReference<Activity> weakReference = a;
        return weakReference != null && weakReference.get() == activity;
    }
}
