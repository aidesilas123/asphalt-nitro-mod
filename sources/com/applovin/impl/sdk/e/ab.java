package com.applovin.impl.sdk.e;

/* JADX INFO: loaded from: classes.dex */
public class ab extends d {
    private final Runnable v;

    public ab(com.applovin.impl.sdk.n nVar, String str, Runnable runnable) {
        this(nVar, false, str, runnable);
    }

    public ab(com.applovin.impl.sdk.n nVar, boolean z, String str, Runnable runnable) {
        super("TaskRunnable:" + str, nVar, z);
        this.v = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.v.run();
    }
}
