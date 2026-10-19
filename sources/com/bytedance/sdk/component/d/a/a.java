package com.bytedance.sdk.component.d.a;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: DefaultThreadFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements ThreadFactory {
    private final ThreadGroup a;
    private final AtomicInteger b = new AtomicInteger(1);

    public a(String str) {
        this.a = new ThreadGroup("tt_img_" + str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.a, runnable, "tt_img_" + this.b.getAndIncrement());
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        return thread;
    }
}
