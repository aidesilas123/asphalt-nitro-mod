package com.kidoz.sdk.api.general.cache;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CustomAsyncExecutor<S, T> {
    private Runnable currentThreadRunnable;
    private Handler handler;
    private Looper looper;
    private Thread thread;
    private Runnable workerThreadRunnable;
    private S input = null;
    private T result = null;

    private void init() {
        this.looper = Looper.getMainLooper();
        this.handler = new Handler(this.looper);
        this.currentThreadRunnable = new Runnable() { // from class: com.kidoz.sdk.api.general.cache.CustomAsyncExecutor.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                CustomAsyncExecutor customAsyncExecutor = CustomAsyncExecutor.this;
                customAsyncExecutor.postExecute(customAsyncExecutor.result);
            }
        };
        this.workerThreadRunnable = new Runnable() { // from class: com.kidoz.sdk.api.general.cache.CustomAsyncExecutor.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                CustomAsyncExecutor customAsyncExecutor = CustomAsyncExecutor.this;
                customAsyncExecutor.result = customAsyncExecutor.executeAsync(customAsyncExecutor.input);
                Thread thread = CustomAsyncExecutor.this.handler.getLooper().getThread();
                if (thread == null || !thread.isAlive()) {
                    return;
                }
                CustomAsyncExecutor.this.handler.post(CustomAsyncExecutor.this.currentThreadRunnable);
            }
        };
        this.thread = new Thread(this.workerThreadRunnable);
    }

    public void execute() {
        init();
        this.thread.start();
    }

    public void execute(S s) {
        this.input = s;
        execute();
    }

    public abstract T executeAsync(S s);

    public abstract void postExecute(T t);
}
