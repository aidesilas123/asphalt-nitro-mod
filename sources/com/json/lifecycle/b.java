package com.json.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.l8;
import com.json.lifecycle.a;
import com.json.m8;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class b implements Application.ActivityLifecycleCallbacks {
    private static b a = new b();
    private static AtomicBoolean b = new AtomicBoolean(false);
    private String c = "IronsourceLifecycleManager";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6204d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6205e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6206f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f6207g = true;
    private m8 h = m8.NONE;
    private List<l8> i = new CopyOnWriteArrayList();
    private Runnable j = new a();
    private a.InterfaceC0356a k = new f();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a();
            b.this.f();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.lifecycle.b$b, reason: collision with other inner class name */
    class RunnableC0357b implements Runnable {
        RunnableC0357b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = b.this.i.iterator();
            while (it.hasNext()) {
                ((l8) it.next()).c();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = b.this.i.iterator();
            while (it.hasNext()) {
                ((l8) it.next()).a();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = b.this.i.iterator();
            while (it.hasNext()) {
                ((l8) it.next()).d();
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = b.this.i.iterator();
            while (it.hasNext()) {
                ((l8) it.next()).b();
            }
        }
    }

    class f implements a.InterfaceC0356a {
        f() {
        }

        @Override // com.json.lifecycle.a.InterfaceC0356a
        public void a(Activity activity) {
            b.this.j(activity);
        }

        @Override // com.json.lifecycle.a.InterfaceC0356a
        public void b(Activity activity) {
        }

        @Override // com.json.lifecycle.a.InterfaceC0356a
        public void onResume(Activity activity) {
            b.this.g(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f6205e == 0) {
            this.f6206f = true;
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new d());
            this.h = m8.PAUSED;
        }
    }

    public static b d() {
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f6204d == 0 && this.f6206f) {
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new e());
            this.f6207g = true;
            this.h = m8.STOPPED;
        }
    }

    public void a(l8 l8Var) {
        if (!IronsourceLifecycleProvider.a() || l8Var == null || this.i.contains(l8Var)) {
            return;
        }
        this.i.add(l8Var);
    }

    void b(Activity activity) {
        int i = this.f6205e - 1;
        this.f6205e = i;
        if (i == 0) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(this.j, 700L);
        }
    }

    public void b(l8 l8Var) {
        if (this.i.contains(l8Var)) {
            this.i.remove(l8Var);
        }
    }

    public m8 c() {
        return this.h;
    }

    void c(Context context) {
        Application application;
        if (!b.compareAndSet(false, true) || (application = (Application) context.getApplicationContext()) == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
    }

    public boolean e() {
        return this.h == m8.STOPPED;
    }

    void g(Activity activity) {
        int i = this.f6205e + 1;
        this.f6205e = i;
        if (i == 1) {
            if (!this.f6206f) {
                IronSourceThreadManager.INSTANCE.removeUiThreadTask(this.j);
                return;
            }
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new c());
            this.f6206f = false;
            this.h = m8.RESUMED;
        }
    }

    void j(Activity activity) {
        int i = this.f6204d + 1;
        this.f6204d = i;
        if (i == 1 && this.f6207g) {
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new RunnableC0357b());
            this.f6207g = false;
            this.h = m8.STARTED;
        }
    }

    void k(Activity activity) {
        this.f6204d--;
        f();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        com.json.lifecycle.a.c(activity);
        com.json.lifecycle.a aVarA = com.json.lifecycle.a.a(activity);
        if (aVarA != null) {
            aVarA.f(this.k);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        b(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        k(activity);
    }
}
