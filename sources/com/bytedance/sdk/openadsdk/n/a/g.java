package com.bytedance.sdk.openadsdk.n.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.bytedance.sdk.component.utils.l;

/* JADX INFO: compiled from: PAGTimerManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    private static a a;
    private static HandlerThread b;

    /* JADX INFO: compiled from: PAGTimerManager.java */
    private static class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void a(b bVar) {
            if (bVar == null) {
                return;
            }
            int iIntValue = bVar.k().intValue();
            if (hasMessages(iIntValue)) {
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = iIntValue;
            messageObtain.obj = bVar;
            sendMessageDelayed(messageObtain, bVar.f());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            b bVar = (b) message.obj;
            if (bVar == null) {
                return;
            }
            int iB = bVar.b();
            if (iB == 1) {
                bVar.g();
            } else {
                if (iB != 2) {
                    e.b(bVar.k());
                    return;
                }
                bVar.h();
            }
            if (bVar.i()) {
                e.b(bVar.k());
            } else if (bVar.l()) {
                a(bVar);
            }
        }
    }

    public static void a() {
    }

    public static void a(b bVar) {
        if (bVar == null) {
            return;
        }
        b();
        a aVar = a;
        if (aVar != null) {
            aVar.a(bVar);
        }
    }

    public static void b() {
        if (a != null) {
            return;
        }
        try {
            HandlerThread handlerThread = b;
            if (handlerThread == null || !handlerThread.isAlive()) {
                synchronized (g.class) {
                    HandlerThread handlerThread2 = b;
                    if (handlerThread2 == null || !handlerThread2.isAlive()) {
                        HandlerThread handlerThread3 = new HandlerThread("csj_MRC");
                        b = handlerThread3;
                        handlerThread3.start();
                        a = new a(b.getLooper());
                    }
                }
            }
        } catch (Throwable th) {
            l.e("MRC", th.getMessage());
        }
    }

    public static void b(b bVar) {
        if (bVar == null || a == null) {
            return;
        }
        try {
            int iIntValue = bVar.k().intValue();
            if (a.hasMessages(iIntValue)) {
                a.removeMessages(iIntValue);
            }
        } catch (Exception unused) {
        }
    }
}
