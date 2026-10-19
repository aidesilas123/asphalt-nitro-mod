package com.fyber.inneractive.sdk.ignite;

import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class e implements Runnable {
    public final /* synthetic */ c a;

    public e(c cVar) {
        this.a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar = this.a;
        IAlog.a("onInstallTimeout after %d msec", Long.valueOf(cVar.p));
        for (n nVar : cVar.i) {
            if (nVar != null) {
                nVar.b(null, i.INSTALL_TIMEOUT.e(), null);
            }
        }
    }
}
