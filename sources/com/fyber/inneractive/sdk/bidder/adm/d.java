package com.fyber.inneractive.sdk.bidder.adm;

import com.fyber.inneractive.sdk.network.c0;

/* JADX INFO: loaded from: classes2.dex */
public class d implements c0.a {
    public final /* synthetic */ f a;

    public d(f fVar) {
        this.a = fVar;
    }

    @Override // com.fyber.inneractive.sdk.network.c0.a
    public void a(String str) {
        str.getClass();
        switch (str) {
            case "sdkInitNetworkRequest":
                com.fyber.inneractive.sdk.metrics.c cVar = com.fyber.inneractive.sdk.metrics.c.f2066d;
                cVar.a(this.a.f1914d).f();
                cVar.b(this.a.f1914d).b();
                break;
            case "sdkGotServerResponse":
                com.fyber.inneractive.sdk.metrics.c.f2066d.a(this.a.f1914d).h();
                break;
            case "sdkParsedResponse":
                com.fyber.inneractive.sdk.metrics.c.f2066d.a(this.a.f1914d).d();
                break;
            case "sdkRequestEndedButWillBeRetried":
                com.fyber.inneractive.sdk.metrics.c.f2066d.b(this.a.f1914d).b("retrying");
                break;
        }
    }
}
