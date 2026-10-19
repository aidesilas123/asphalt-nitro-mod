package com.kidoz.sdk.omid;

import com.iab.omid.library.kidoznet.adsession.AdSession;

/* JADX INFO: compiled from: OMSessionAdapterImpl.java */
/* JADX INFO: loaded from: classes4.dex */
public class d implements c {
    private AdSession a;

    d(AdSession adSession) {
        this.a = adSession;
    }

    @Override // com.kidoz.sdk.omid.c
    public void finish() {
        this.a.finish();
    }

    @Override // com.kidoz.sdk.omid.c
    public void start() {
        this.a.start();
    }
}
