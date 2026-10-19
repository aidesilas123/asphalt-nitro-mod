package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: IOSerialExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements Executor {
    private static volatile e a;
    private ExecutorService b = com.bykv.vk.openvk.preload.geckox.b.a();

    private e() {
    }

    public static e a() {
        if (a == null) {
            synchronized (e.class) {
                if (a == null) {
                    a = new e();
                }
            }
        }
        return a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.b.execute(runnable);
    }
}
