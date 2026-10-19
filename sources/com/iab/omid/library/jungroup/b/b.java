package com.iab.omid.library.jungroup.b;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.jungroup.adsession.l;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f4960d = new b();
    public boolean a;
    public boolean b;
    public a c;

    public interface a {
    }

    public final void a() {
        boolean z = !this.b;
        Iterator it = Collections.unmodifiableCollection(com.iab.omid.library.jungroup.b.a.c.a).iterator();
        while (it.hasNext()) {
            com.iab.omid.library.jungroup.publisher.a aVar = ((l) it.next()).f4956e;
            if (aVar.a.get() != null) {
                f.a(aVar.c(), "setState", z ? "foregrounded" : "backgrounded");
            }
        }
    }

    public final void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
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
        if (this.b) {
            this.b = false;
            if (this.a) {
                a();
                if (this.c != null) {
                    com.iab.omid.library.jungroup.walking.b.h.getClass();
                    if (com.iab.omid.library.jungroup.walking.b.j == null) {
                        Handler handler = new Handler(Looper.getMainLooper());
                        com.iab.omid.library.jungroup.walking.b.j = handler;
                        handler.post(com.iab.omid.library.jungroup.walking.b.k);
                        com.iab.omid.library.jungroup.walking.b.j.postDelayed(com.iab.omid.library.jungroup.walking.b.l, 200L);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        View view;
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        boolean z = false;
        boolean z2 = runningAppProcessInfo.importance != 100;
        boolean z3 = true;
        for (l lVar : Collections.unmodifiableCollection(com.iab.omid.library.jungroup.b.a.c.b)) {
            if ((lVar.f4957f && !lVar.f4958g) && (view = lVar.f4955d.get()) != null && view.hasWindowFocus()) {
                z3 = false;
            }
        }
        if (z2 && z3) {
            z = true;
        }
        if (this.b != z) {
            this.b = z;
            if (this.a) {
                a();
                if (this.c != null) {
                    if (!(!z)) {
                        com.iab.omid.library.jungroup.walking.b.h.getClass();
                        Handler handler = com.iab.omid.library.jungroup.walking.b.j;
                        if (handler != null) {
                            handler.removeCallbacks(com.iab.omid.library.jungroup.walking.b.l);
                            com.iab.omid.library.jungroup.walking.b.j = null;
                            return;
                        }
                        return;
                    }
                    com.iab.omid.library.jungroup.walking.b.h.getClass();
                    if (com.iab.omid.library.jungroup.walking.b.j == null) {
                        Handler handler2 = new Handler(Looper.getMainLooper());
                        com.iab.omid.library.jungroup.walking.b.j = handler2;
                        handler2.post(com.iab.omid.library.jungroup.walking.b.k);
                        com.iab.omid.library.jungroup.walking.b.j.postDelayed(com.iab.omid.library.jungroup.walking.b.l, 200L);
                    }
                }
            }
        }
    }
}
