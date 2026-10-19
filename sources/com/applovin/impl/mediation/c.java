package com.applovin.impl.mediation;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final a akU;
    private com.applovin.impl.sdk.utils.f akV;
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    public interface a {
        void c(com.applovin.impl.mediation.b.c cVar);
    }

    c(com.applovin.impl.sdk.n nVar, a aVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.akU = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(com.applovin.impl.mediation.b.c cVar) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AdHiddenCallbackTimeoutManager", "Timing out...");
        }
        this.akU.c(cVar);
    }

    public void a(final com.applovin.impl.mediation.b.c cVar, long j) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AdHiddenCallbackTimeoutManager", "Scheduling in " + j + "ms...");
        }
        this.akV = com.applovin.impl.sdk.utils.f.a(j, this.sdk, new Runnable() { // from class: com.applovin.impl.mediation.o
            @Override // java.lang.Runnable
            public final void run() {
                this.a.f(cVar);
            }
        });
    }

    public void tT() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        }
        com.applovin.impl.sdk.utils.f fVar = this.akV;
        if (fVar != null) {
            fVar.tT();
            this.akV = null;
        }
    }
}
