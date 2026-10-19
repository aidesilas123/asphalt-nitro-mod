package com.bytedance.sdk.component.g.a;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.x;

/* JADX INFO: compiled from: HandlerPool.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private final d<b> a;
    private Handler b;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.g.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: HandlerPool.java */
    private static class C0121a {
        private static final a a = new a();
    }

    private a() {
        this.a = d.a(2);
    }

    public static a a() {
        return C0121a.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Handler handler, final Handler handler2) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (!handler.getLooper().getQueue().isIdle()) {
                handler2.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.g.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.a(handler, handler2);
                    }
                }, 1000L);
            } else {
                handler.removeCallbacksAndMessages(null);
                handler.getLooper().quit();
            }
        }
    }

    private b b(x.a aVar, String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        return new b(handlerThread, aVar);
    }

    public x a(x.a aVar, final String str) {
        b bVar = (b) this.a.a();
        if (bVar == null) {
            return b(aVar, str);
        }
        bVar.a(aVar);
        bVar.post(new Runnable() { // from class: com.bytedance.sdk.component.g.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                Thread.currentThread().setName(str);
            }
        });
        return bVar;
    }

    public x a(String str) {
        return a((x.a) null, str);
    }

    public boolean a(x xVar) {
        if (!(xVar instanceof b)) {
            return false;
        }
        b bVar = (b) xVar;
        if (this.a.a(bVar)) {
            return true;
        }
        bVar.b();
        return true;
    }

    public Handler b() {
        if (this.b == null) {
            synchronized (a.class) {
                if (this.b == null) {
                    this.b = a("csj_io_handler");
                }
            }
        }
        return this.b;
    }
}
