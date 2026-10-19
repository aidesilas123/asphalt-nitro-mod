package com.fyber.marketplace.fairbid.impl;

import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.ImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.flow.h;
import com.fyber.inneractive.sdk.interfaces.a;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.m;
import com.fyber.marketplace.fairbid.bridge.MarketplaceAdLoadError;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public c a;
    private boolean b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.marketplace.fairbid.bridge.b f2779d;

    /* JADX INFO: renamed from: com.fyber.marketplace.fairbid.impl.a$a, reason: collision with other inner class name */
    public class RunnableC0204a implements Runnable {
        public final /* synthetic */ e a;
        public final /* synthetic */ com.fyber.inneractive.sdk.interfaces.a b;
        public final /* synthetic */ InneractiveUnitController c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ com.fyber.marketplace.fairbid.bridge.a f2780d;

        /* JADX INFO: renamed from: com.fyber.marketplace.fairbid.impl.a$a$a, reason: collision with other inner class name */
        public class C0205a implements a.InterfaceC0163a {
            public C0205a() {
            }

            @Override // com.fyber.inneractive.sdk.interfaces.a.InterfaceC0163a
            public void a(InneractiveAdRequest inneractiveAdRequest) {
                RunnableC0204a runnableC0204a = RunnableC0204a.this;
                a.this.a = new c(runnableC0204a.c, ((h) runnableC0204a.b).c);
                a aVar = a.this;
                aVar.a(aVar, aVar.a);
            }

            @Override // com.fyber.inneractive.sdk.interfaces.a.InterfaceC0163a
            public void a(InneractiveInfrastructureError inneractiveInfrastructureError) {
                RunnableC0204a.this.f2780d.a(MarketplaceAdLoadError.FAILED_TO_LOAD_AD);
            }
        }

        public RunnableC0204a(e eVar, com.fyber.inneractive.sdk.interfaces.a aVar, InneractiveUnitController inneractiveUnitController, com.fyber.marketplace.fairbid.bridge.a aVar2) {
            this.a = eVar;
            this.b = aVar;
            this.c = inneractiveUnitController;
            this.f2780d = aVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            s sVarA = aVar.f2779d.a(aVar.c);
            if (sVarA == null) {
                sVarA = s.b();
            }
            s sVar = sVarA;
            e eVar = this.a;
            com.fyber.inneractive.sdk.config.global.e eVar2 = new com.fyber.inneractive.sdk.config.global.e();
            ImpressionData impressionData = eVar.r;
            eVar2.a = impressionData != null ? impressionData.getDemandId() : null;
            try {
                eVar2.b = Long.valueOf(IAConfigManager.M.f1933d);
            } catch (NumberFormatException unused) {
                IAlog.a("invalid publisherId", new Object[0]);
            }
            sVar.a(eVar2);
            com.fyber.inneractive.sdk.interfaces.a aVar2 = this.b;
            e eVar3 = this.a;
            boolean z = a.this.b;
            C0205a c0205a = new C0205a();
            h hVar = (h) aVar2;
            hVar.h = z;
            hVar.a(null, eVar3, sVar, c0205a, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(InneractiveUnitController<?> inneractiveUnitController, com.fyber.marketplace.fairbid.bridge.a<?> aVar, e eVar, com.fyber.inneractive.sdk.interfaces.a aVar2) {
        if (eVar == null || aVar2 == null) {
            return;
        }
        m.b.post(new RunnableC0204a(eVar, aVar2, inneractiveUnitController, aVar));
    }

    public abstract void a(a aVar, c cVar);
}
