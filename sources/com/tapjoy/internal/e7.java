package com.tapjoy.internal;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e7 {
    public static final ScheduledExecutorService a = Executors.newScheduledThreadPool(1);
    public static final CountDownLatch b = new CountDownLatch(1);
    public static final m0 c = new m0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final CountDownLatch f7894d = new CountDownLatch(1);

    public static void a() {
        a.execute(c);
    }
}
