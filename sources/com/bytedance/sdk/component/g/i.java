package com.bytedance.sdk.component.g;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: TTThreadFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class i implements ThreadFactory {
    public static final String THREAD_GROUP_NAME_PRE = "csj_g_";
    public static final String THREAD_NAME_PRE = "csj_";
    protected final ThreadGroup a;
    protected final String b;
    protected int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicInteger f1080d;

    public i(int i, String str) {
        this.f1080d = new AtomicInteger(1);
        this.c = i;
        this.a = new ThreadGroup(THREAD_GROUP_NAME_PRE + str);
        this.b = THREAD_NAME_PRE + str;
    }

    public i(String str) {
        this(5, str);
    }

    protected Thread a(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new Thread(threadGroup, runnable, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadA = a(this.a, runnable, this.b + this.f1080d.getAndIncrement());
        if (threadA.isDaemon()) {
            threadA.setDaemon(false);
        }
        int i = this.c;
        if (i > 10 || i < 1) {
            this.c = 5;
        }
        threadA.setPriority(this.c);
        return threadA;
    }
}
