package com.mbridge.msdk.foundation.same.c;

import com.mbridge.msdk.foundation.tools.ac;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: ImageLoaderController.java */
/* JADX INFO: loaded from: classes4.dex */
public final class g {
    private static AtomicBoolean a;
    private static AtomicBoolean b;
    private static ThreadPoolExecutor c;

    public static boolean a() {
        if (a == null) {
            a = new AtomicBoolean(ac.a().a("u_i_l_l_n", true));
        }
        AtomicBoolean atomicBoolean = a;
        return atomicBoolean != null && atomicBoolean.get();
    }

    public static boolean b() {
        if (b == null) {
            b = new AtomicBoolean(ac.a().a("u_i_l_l_b_d", false));
        }
        AtomicBoolean atomicBoolean = b;
        return atomicBoolean != null && atomicBoolean.get();
    }

    public static ThreadPoolExecutor c() {
        if (c == null) {
            int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
            c = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 5L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactory() { // from class: com.mbridge.msdk.foundation.same.c.g.1
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable);
                    thread.setName("mb-image-loader-thread");
                    return thread;
                }
            }, new ThreadPoolExecutor.DiscardPolicy());
        }
        c.allowCoreThreadTimeOut(true);
        return c;
    }
}
