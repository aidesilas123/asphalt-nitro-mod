package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Window;
import androidx.work.WorkRequest;
import com.bytedance.sdk.openadsdk.ApmHelper;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: ActivityLifecycleListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements Application.ActivityLifecycleCallbacks {
    public static boolean a;
    public static long b;
    public static long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f1855d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RunnableC0148a f1856e = new RunnableC0148a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d f1857f = new d();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c f1858g = new c();
    private final b h = new b();
    private int i = 0;
    private volatile CopyOnWriteArrayList<WeakReference<com.bytedance.sdk.component.adexpress.a>> j = new CopyOnWriteArrayList<>();
    private HandlerThread k = null;
    private Handler l = null;
    private volatile WeakReference<Activity> m;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.utils.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityLifecycleListener.java */
    static class RunnableC0148a implements Runnable {
        RunnableC0148a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.g.f.d().execute(new com.bytedance.sdk.component.g.h("reportPvFromBackGround") { // from class: com.bytedance.sdk.openadsdk.utils.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    ApmHelper.reportPvFromBackGround();
                }
            });
        }
    }

    /* JADX INFO: compiled from: ActivityLifecycleListener.java */
    private static class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.bytedance.sdk.component.utils.o.h(com.bytedance.sdk.openadsdk.core.o.a())) {
                com.bytedance.sdk.openadsdk.b.a.d.a(com.bytedance.sdk.openadsdk.core.j.a(com.bytedance.sdk.openadsdk.core.o.a()));
            }
        }
    }

    /* JADX INFO: compiled from: ActivityLifecycleListener.java */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ApmHelper.isIsInit()) {
                Handler handlerB = com.bytedance.sdk.openadsdk.core.l.b();
                Message messageObtain = Message.obtain(handlerB, a.this.f1856e);
                messageObtain.what = 1001;
                handlerB.sendMessageDelayed(messageObtain, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
            }
        }
    }

    /* JADX INFO: compiled from: ActivityLifecycleListener.java */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.core.l.b().removeMessages(1001);
            if (com.bytedance.sdk.openadsdk.core.o.a() == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.f.a.b();
        }
    }

    /* JADX INFO: compiled from: ActivityLifecycleListener.java */
    public class e implements Runnable {
        private long b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1859d;

        public e(long j, long j2, boolean z) {
            this.b = 0L;
            this.c = 0L;
            this.f1859d = false;
            this.b = j;
            this.c = j2;
            this.f1859d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1859d) {
                com.bytedance.sdk.openadsdk.j.b.a().a(this.b / 1000, this.c / 1000);
            }
            a.this.c();
        }
    }

    public a() {
        b();
    }

    private void a(Runnable runnable) {
        if (!this.k.isAlive()) {
            b();
        }
        this.l.post(runnable);
    }

    private void b() {
        HandlerThread handlerThread = new HandlerThread("lifecycle", 10);
        this.k = handlerThread;
        handlerThread.start();
        this.l = new Handler(this.k.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.bytedance.sdk.openadsdk.b.a.a.a();
    }

    public void a(com.bytedance.sdk.component.adexpress.a aVar) {
        this.j.add(new WeakReference<>(aVar));
    }

    public boolean a() {
        return this.f1855d.get();
    }

    public boolean a(boolean z) {
        Activity activity;
        Window window;
        return (this.m == null || (activity = this.m.get()) == null || (window = activity.getWindow()) == null) ? z : window.getDecorView().hasWindowFocus();
    }

    public boolean b(com.bytedance.sdk.component.adexpress.a aVar) {
        return this.j.remove(new WeakReference(aVar));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.j != null && this.j.size() > 0) {
            for (WeakReference<com.bytedance.sdk.component.adexpress.a> weakReference : this.j) {
                if (weakReference != null && weakReference.get() != null) {
                    try {
                        weakReference.get().a(activity);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        }
        if (this.m == null || this.m.get() != activity) {
            return;
        }
        this.m = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        int i = this.i - 1;
        this.i = i;
        if (i < 0) {
            this.i = 0;
        }
        if (ApmHelper.isIsInit()) {
            a(this.f1858g);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        a(this.f1857f);
        if (!a) {
            b = System.currentTimeMillis();
            a = true;
        }
        this.m = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.i++;
        if (this.f1855d.get()) {
            a(this.h);
        }
        this.f1855d.set(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.i <= 0) {
            this.f1855d.set(true);
        }
        if (a()) {
            a = false;
            com.bytedance.sdk.openadsdk.core.l.b.set(false);
            c = System.currentTimeMillis();
            a(this.h);
        }
        a(new e(b, c, a()));
    }
}
