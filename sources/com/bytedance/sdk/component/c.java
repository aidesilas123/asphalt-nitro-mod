package com.bytedance.sdk.component;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: compiled from: TTQueuedWork.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    @GuardedBy("sLock")
    private static volatile Handler b;
    private static final Object a = new Object();

    @GuardedBy("sLock")
    private static final LinkedList<Runnable> c = new LinkedList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Object f931d = new Object();

    /* JADX INFO: compiled from: TTQueuedWork.java */
    private static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                try {
                    c.c();
                } catch (OutOfMemoryError unused) {
                }
            }
        }
    }

    public static void a(Runnable runnable, boolean z) {
        try {
            Handler handlerB = b();
            synchronized (a) {
                c.add(runnable);
                if (z) {
                    handlerB.sendEmptyMessageDelayed(1, 100L);
                } else {
                    handlerB.sendEmptyMessage(1);
                }
            }
        } catch (OutOfMemoryError unused) {
        }
    }

    private static Handler b() {
        Handler handler;
        if (b != null) {
            return b;
        }
        synchronized (a) {
            if (b == null) {
                HandlerThread handlerThread = new HandlerThread("queued-work-looper", -2);
                handlerThread.start();
                b = new a(handlerThread.getLooper());
            }
            handler = b;
        }
        return handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        LinkedList linkedList;
        synchronized (f931d) {
            synchronized (a) {
                LinkedList<Runnable> linkedList2 = c;
                linkedList = (LinkedList) linkedList2.clone();
                linkedList2.clear();
                b().removeMessages(1);
            }
            if (linkedList.size() > 0) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
            }
        }
    }
}
