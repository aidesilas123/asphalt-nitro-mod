package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: compiled from: HandlerPoster.java */
/* JADX INFO: loaded from: classes5.dex */
public class e extends Handler implements j {
    private final i a;
    private final int b;
    private final EventBus c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10941d;

    public e(EventBus eventBus, Looper looper, int i) {
        super(looper);
        this.c = eventBus;
        this.b = i;
        this.a = new i();
    }

    @Override // org.greenrobot.eventbus.j
    public void a(o oVar, Object obj) {
        h hVarA = h.a(oVar, obj);
        synchronized (this) {
            this.a.a(hVarA);
            if (!this.f10941d) {
                this.f10941d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new d("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                h hVarB = this.a.b();
                if (hVarB == null) {
                    synchronized (this) {
                        hVarB = this.a.b();
                        if (hVarB == null) {
                            this.f10941d = false;
                            return;
                        }
                    }
                }
                this.c.f(hVarB);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.b);
            if (!sendMessage(obtainMessage())) {
                throw new d("Could not send handler message");
            }
            this.f10941d = true;
        } finally {
            this.f10941d = false;
        }
    }
}
