package com.fyber.inneractive.sdk.flow;

import android.webkit.WebView;
import com.fyber.inneractive.sdk.external.InneractiveError;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.external.InneractiveVideoError;
import com.fyber.inneractive.sdk.player.a;
import com.fyber.inneractive.sdk.player.h;
import com.fyber.inneractive.sdk.util.IAlog;
import com.iab.omid.library.fyber.adsession.AdEvents;
import com.iab.omid.library.fyber.adsession.AdSession;
import com.iab.omid.library.fyber.adsession.AdSessionConfiguration;
import com.iab.omid.library.fyber.adsession.AdSessionContext;
import com.iab.omid.library.fyber.adsession.CreativeType;
import com.iab.omid.library.fyber.adsession.ImpressionType;
import com.iab.omid.library.fyber.adsession.Owner;
import com.iab.omid.library.fyber.adsession.VerificationScriptResource;
import com.iab.omid.library.fyber.adsession.media.MediaEvents;
import com.iab.omid.library.fyber.publisher.AdSessionStatePublisher;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class o extends h<com.fyber.inneractive.sdk.response.g, f0> implements h.b {
    public com.fyber.inneractive.sdk.player.h m;

    public o(String str) {
    }

    @Override // com.fyber.inneractive.sdk.flow.h, com.fyber.inneractive.sdk.interfaces.a
    public void a() {
        d();
        this.k.a();
        this.m.a();
    }

    @Override // com.fyber.inneractive.sdk.flow.h, com.fyber.inneractive.sdk.interfaces.a.b
    public void b() {
        com.fyber.inneractive.sdk.model.vast.b bVar;
        if (this.m != null) {
            Response response = this.b;
            this.m.a((response == 0 || (bVar = ((com.fyber.inneractive.sdk.response.g) response).K) == null) ? null : bVar.f2073d.size() == 0 ? new InneractiveVideoError(InneractiveVideoError.Error.ERROR_FAILED_PLAYING_ALL_MEDIA_FILES, null) : new InneractiveVideoError(InneractiveVideoError.Error.ERROR_FAILED_PLAYING_MEDIA_FILE, null), null, null, true);
        }
        a();
        super.b();
    }

    @Override // com.fyber.inneractive.sdk.flow.h
    public String f() {
        return "send_failed_vast_creatives";
    }

    @Override // com.fyber.inneractive.sdk.flow.h
    public void j() {
        com.fyber.inneractive.sdk.model.vast.b bVar;
        AdSessionConfiguration adSessionConfigurationCreateAdSessionConfiguration;
        com.fyber.inneractive.sdk.model.vast.b bVar2;
        IAlog.a(IAlog.a(this) + "start called", new Object[0]);
        com.fyber.inneractive.sdk.config.b0 b0VarG = g();
        Response response = this.b;
        AdSessionContext adSessionContextCreateNativeAdSessionContext = null;
        com.fyber.inneractive.sdk.model.vast.b bVar3 = response == 0 ? null : ((com.fyber.inneractive.sdk.response.g) response).K;
        if (bVar3 != null && bVar3.f2073d.size() < bVar3.i) {
            bVar3.f2073d.clear();
            bVar3.f2076g.clear();
            bVar3.f2073d.addAll(bVar3.k);
            bVar3.f2076g.addAll(bVar3.l);
        }
        f0 f0Var = new f0(b0VarG, this.f2008g, (com.fyber.inneractive.sdk.response.g) this.b, this.a);
        this.c = f0Var;
        com.fyber.inneractive.sdk.response.g gVar = (com.fyber.inneractive.sdk.response.g) this.b;
        com.fyber.inneractive.sdk.player.h hVar = new com.fyber.inneractive.sdk.player.h(gVar, this.a, f0Var, this);
        this.m = hVar;
        f0 f0Var2 = (f0) this.c;
        f0Var2.i = hVar;
        f0Var2.f2021f = this.h;
        hVar.f2634e = null;
        if (gVar != null && (bVar2 = gVar.K) != null) {
            hVar.f2634e = bVar2.f2073d.poll();
        }
        if (hVar.f2634e == null) {
            hVar.b();
            h.b bVar4 = hVar.f2633d;
            InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, g.VAST_NO_MEDIA_FILES);
            o oVar = (o) bVar4;
            oVar.a((InneractiveError) inneractiveInfrastructureError);
            oVar.a(inneractiveInfrastructureError);
            return;
        }
        hVar.e();
        a.InterfaceC0168a interfaceC0168a = hVar.f2635f;
        if (interfaceC0168a != null) {
            com.fyber.inneractive.sdk.player.e eVar = (com.fyber.inneractive.sdk.player.e) interfaceC0168a;
            if (eVar.f2139g != null) {
                com.fyber.inneractive.sdk.measurement.d dVar = new com.fyber.inneractive.sdk.measurement.d();
                com.fyber.inneractive.sdk.measurement.a aVar = eVar.f2139g;
                List<com.fyber.inneractive.sdk.measurement.f> list = eVar.v.f2074e;
                f0 f0Var3 = eVar.f2137e;
                try {
                    try {
                        CreativeType creativeType = CreativeType.VIDEO;
                        ImpressionType impressionType = ImpressionType.UNSPECIFIED;
                        Owner owner = Owner.NATIVE;
                        adSessionConfigurationCreateAdSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false);
                    } catch (Throwable th) {
                        dVar.a(th);
                        adSessionConfigurationCreateAdSessionConfiguration = null;
                    }
                    List<VerificationScriptResource> listA = dVar.a(list);
                    if (((com.fyber.inneractive.sdk.measurement.b) aVar).f2047e != null && ((com.fyber.inneractive.sdk.measurement.b) aVar).b != null) {
                        try {
                            adSessionContextCreateNativeAdSessionContext = AdSessionContext.createNativeAdSessionContext(((com.fyber.inneractive.sdk.measurement.b) aVar).f2047e, ((com.fyber.inneractive.sdk.measurement.b) aVar).b, listA, "", "");
                        } catch (Throwable th2) {
                            dVar.a(th2);
                        }
                    }
                    AdSession adSessionCreateAdSession = AdSession.createAdSession(adSessionConfigurationCreateAdSessionConfiguration, adSessionContextCreateNativeAdSessionContext);
                    dVar.a = adSessionCreateAdSession;
                    AdSessionStatePublisher adSessionStatePublisher = adSessionCreateAdSession.getAdSessionStatePublisher();
                    if (adSessionStatePublisher != null) {
                        adSessionStatePublisher.getWebView();
                        WebView webView = adSessionStatePublisher.getWebView();
                        if (webView != null) {
                            webView.setWebViewClient(dVar.f2053g);
                        }
                    }
                    dVar.b = AdEvents.createAdEvents(dVar.a);
                    dVar.c = MediaEvents.createMediaEvents(dVar.a);
                    dVar.a.start();
                    dVar.f2052f = f0Var3;
                } catch (Throwable th3) {
                    dVar.a(th3);
                }
                eVar.h = dVar;
                eVar.i = new com.fyber.inneractive.sdk.player.f(dVar);
            }
            if (eVar.h == null && (bVar = eVar.v) != null) {
                for (com.fyber.inneractive.sdk.measurement.f fVar : bVar.f2074e) {
                    com.fyber.inneractive.sdk.measurement.g gVar2 = com.fyber.inneractive.sdk.measurement.g.ERROR_DURING_RESOURCE_LOAD;
                    com.fyber.inneractive.sdk.model.vast.t tVar = com.fyber.inneractive.sdk.model.vast.t.EVENT_VERIFICATION_NOT_EXECUTED;
                    com.fyber.inneractive.sdk.player.e.a(new com.fyber.inneractive.sdk.measurement.e(fVar, fVar.a(tVar), gVar2), tVar);
                }
            }
        }
        hVar.d();
    }
}
