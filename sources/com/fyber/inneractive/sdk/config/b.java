package com.fyber.inneractive.sdk.config;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.fyber.inneractive.sdk.config.j;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.u0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class b implements j.b {
    public u0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g0 f1944d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final u0.b f1946f;
    public final AtomicBoolean a = new AtomicBoolean(false);
    public boolean b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f1945e = new Handler(Looper.getMainLooper(), new a());

    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 123) {
                return false;
            }
            b bVar = b.this;
            if (bVar.a.compareAndSet(false, true)) {
                if (bVar.a.get() && bVar.c != null) {
                    IAlog.a("startCounting", new Object[0]);
                    bVar.c.c();
                }
                IAlog.a("Pause signal", new Object[0]);
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.config.b$b, reason: collision with other inner class name */
    public class C0151b implements Application.ActivityLifecycleCallbacks {
        public C0151b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (b.this.f1945e.hasMessages(123) || b.this.a.get()) {
                return;
            }
            b.this.f1945e.sendEmptyMessageDelayed(123, 3000L);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            b.this.f1945e.removeMessages(123);
            b bVar = b.this;
            if (bVar.a.compareAndSet(true, false)) {
                if (bVar.b) {
                    IAlog.a("onActivityResumed: restartSession", new Object[0]);
                    bVar.b = false;
                    g0 g0Var = bVar.f1944d;
                    if (g0Var != null) {
                        com.fyber.inneractive.sdk.cache.session.d dVar = ((f0) g0Var).a;
                        if (dVar != null) {
                            dVar.a(dVar.a);
                            com.fyber.inneractive.sdk.util.m.a(new com.fyber.inneractive.sdk.cache.session.c(dVar, com.fyber.inneractive.sdk.cache.session.enums.a.NEW_SESSION, com.fyber.inneractive.sdk.cache.session.enums.b.NONE));
                        }
                        g0 g0Var2 = bVar.f1944d;
                        ((f0) g0Var2).c.put("SESSION_STAMP", Long.toString(SystemClock.elapsedRealtime()));
                        ((f0) bVar.f1944d).b.clear();
                    }
                }
                u0 u0Var = bVar.c;
                if (u0Var != null) {
                    u0Var.f2744d = false;
                    u0Var.f2746f = 0L;
                    Handler handler = u0Var.c;
                    if (handler != null) {
                        handler.removeMessages(1932593528);
                    }
                }
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

    public class c implements u0.b {
        public c() {
        }

        @Override // com.fyber.inneractive.sdk.util.u0.b
        public void a(u0 u0Var) {
            IAlog.a("onVisibleTimeReached: %s", Long.valueOf(System.currentTimeMillis()));
            b.this.b = true;
        }
    }

    public b(g0 g0Var) {
        C0151b c0151b = new C0151b();
        this.f1946f = new c();
        this.f1944d = g0Var;
        Application applicationA = com.fyber.inneractive.sdk.util.l.a();
        if (applicationA != null) {
            applicationA.registerActivityLifecycleCallbacks(c0151b);
        }
    }

    @Override // com.fyber.inneractive.sdk.config.j.b
    public void onGlobalConfigChanged(j jVar, i iVar) {
        u0 u0Var = this.c;
        if (u0Var != null) {
            u0Var.f2744d = false;
            u0Var.f2746f = 0L;
            Handler handler = u0Var.c;
            if (handler != null) {
                handler.removeMessages(1932593528);
            }
            u0 u0Var2 = new u0(TimeUnit.MINUTES, iVar.a("session_duration", 30, 1), this.c.f2746f);
            this.c = u0Var2;
            u0Var2.f2745e = this.f1946f;
        }
        jVar.c.remove(this);
    }
}
