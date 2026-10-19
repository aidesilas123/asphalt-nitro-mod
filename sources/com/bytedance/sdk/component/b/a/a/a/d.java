package com.bytedance.sdk.component.b.a.a.a;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: NetDispatcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends com.bytedance.sdk.component.b.a.d {
    private ExecutorService a;
    private List<com.bytedance.sdk.component.b.a.b> b = new CopyOnWriteArrayList();
    private List<com.bytedance.sdk.component.b.a.b> c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicInteger f894d = new AtomicInteger(64);

    public d() {
        if (this.a == null) {
            this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.component.b.a.a.a.d.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable, "systemHttp Dispatcher");
                    thread.setDaemon(false);
                    thread.setPriority(10);
                    return thread;
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.b.a.d
    public int a() {
        return this.f894d.get();
    }

    @Override // com.bytedance.sdk.component.b.a.d
    public void a(int i) {
        this.f894d.set(i);
    }

    @Override // com.bytedance.sdk.component.b.a.d
    public ExecutorService b() {
        return this.a;
    }

    @Override // com.bytedance.sdk.component.b.a.d
    public List<com.bytedance.sdk.component.b.a.b> c() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.b.a.d
    public List<com.bytedance.sdk.component.b.a.b> d() {
        return this.c;
    }
}
