package com.fyber.inneractive.sdk.flow;

import android.os.Build;
import android.os.Handler;
import com.fyber.inneractive.sdk.interfaces.a;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public Handler a;
    public final a.b b;
    public final Runnable c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f1999d = new RunnableC0160b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IAlog.a("%s : ContentLoadTimeoutHandler Executing timeout task", IAlog.a(b.this));
            b.this.b.b();
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.flow.b$b, reason: collision with other inner class name */
    public class RunnableC0160b implements Runnable {
        public RunnableC0160b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.fyber.inneractive.sdk.util.m.b.post(b.this.c);
        }
    }

    public b(a.b bVar) {
        this.b = bVar;
    }

    public void a() {
        IAlog.a("%s : ContentLoadTimeoutHandler destroying timeout handler", IAlog.a(this));
        if (this.a != null) {
            b();
            if (Build.VERSION.SDK_INT >= 18) {
                this.a.getLooper().quitSafely();
            } else {
                this.a.getLooper().quit();
            }
            this.a = null;
        }
    }

    public void b() {
        IAlog.a("%s : ContentLoadTimeoutHandler stopping timeout handler", IAlog.a(this));
        Handler handler = this.a;
        if (handler != null) {
            handler.removeCallbacks(this.f1999d);
        }
    }
}
