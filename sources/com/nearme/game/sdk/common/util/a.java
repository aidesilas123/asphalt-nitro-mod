package com.nearme.game.sdk.common.util;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: GCExecutor.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements Executor {
    private static final int a;
    private static final int b;
    private final Executor c = Executors.newFixedThreadPool(b);

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        a = iAvailableProcessors;
        b = (iAvailableProcessors * 2) + 1;
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.c.execute(runnable);
    }
}
