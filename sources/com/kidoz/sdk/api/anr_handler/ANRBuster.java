package com.kidoz.sdk.api.anr_handler;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ANRBuster<T, V> {
    private int ANR_TIMEOUT = 5000;
    private int TIMEOUT_MARGIN = 1500;
    private ExecutorService executorService = Executors.newSingleThreadExecutor();
    Callable<Boolean> mCallable = new Callable<Boolean>() { // from class: com.kidoz.sdk.api.anr_handler.ANRBuster.1
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            ANRBuster aNRBuster = ANRBuster.this;
            aNRBuster.mResult = aNRBuster.onStart(aNRBuster.mParam);
            return Boolean.TRUE;
        }
    };
    private T mParam;
    private V mResult;

    private void execute() {
        try {
            this.executorService.submit(this.mCallable).get(this.ANR_TIMEOUT - this.TIMEOUT_MARGIN, TimeUnit.MILLISECONDS);
            onSuccess();
        } catch (ExecutionException e2) {
            e2.printStackTrace();
        } catch (TimeoutException unused) {
            onANRDetected();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public abstract void onANRDetected();

    public abstract V onStart(T t);

    public abstract void onSuccess();

    public V start() {
        execute();
        return this.mResult;
    }

    public V start(T t) {
        this.mParam = t;
        execute();
        return this.mResult;
    }
}
