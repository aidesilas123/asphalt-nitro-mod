package com.fyber.inneractive.sdk.web;

import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class l implements Runnable {
    public final /* synthetic */ i a;

    public l(i iVar) {
        this.a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            i iVar = this.a;
            if (iVar.V != null) {
                IAlog.a("%sunregistering orientation broadcast receiver", IAlog.a(iVar));
                this.a.V.a();
            }
        } catch (IllegalArgumentException e2) {
            if (e2.getMessage() != null && !e2.getMessage().contains("Receiver not registered")) {
                throw e2;
            }
        }
        this.a.V = null;
    }
}
