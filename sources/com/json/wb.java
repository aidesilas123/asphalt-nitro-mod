package com.json;

import android.os.Handler;
import android.os.HandlerThread;
import com.json.mediationsdk.logger.d;

/* JADX INFO: loaded from: classes2.dex */
public class wb extends Thread {
    private static wb a;
    private a b;

    private class a extends HandlerThread {
        private Handler a;

        a(String str) {
            super(str);
            setUncaughtExceptionHandler(new d());
        }

        Handler a() {
            return this.a;
        }

        void b() {
            this.a = new Handler(getLooper());
        }
    }

    private wb() {
        a aVar = new a(getClass().getSimpleName());
        this.b = aVar;
        aVar.start();
        this.b.b();
    }

    public static synchronized wb a() {
        if (a == null) {
            a = new wb();
        }
        return a;
    }

    public synchronized void a(Runnable runnable) {
        a aVar = this.b;
        if (aVar == null) {
            return;
        }
        Handler handlerA = aVar.a();
        if (handlerA != null) {
            handlerA.post(runnable);
        }
    }
}
