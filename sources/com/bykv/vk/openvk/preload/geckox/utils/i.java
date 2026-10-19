package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: PiecemealSerialExecutor.java */
/* JADX INFO: loaded from: classes.dex */
public class i implements Executor {
    private static volatile i a;
    private ExecutorService b = com.bykv.vk.openvk.preload.geckox.b.a();

    private i() {
    }

    public static i a() {
        if (a == null) {
            synchronized (i.class) {
                if (a == null) {
                    a = new i();
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
