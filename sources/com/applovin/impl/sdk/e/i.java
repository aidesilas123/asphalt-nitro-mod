package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.d;

/* JADX INFO: loaded from: classes.dex */
public class i extends d {
    private a aTY;

    public interface a {
        void b(d.a aVar);
    }

    public i(com.applovin.impl.sdk.n nVar, a aVar) {
        super("TaskCollectAdvertisingId", nVar, true);
        this.aTY = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.aTY.b(this.sdk.BS().Di());
    }
}
