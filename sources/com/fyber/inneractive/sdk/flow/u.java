package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.flow.k;
import com.fyber.inneractive.sdk.flow.t;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class u implements k.a {
    public final /* synthetic */ t a;

    public u(t tVar) {
        this.a = tVar;
    }

    public void a(InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar, InneractiveInfrastructureError inneractiveInfrastructureError) {
        com.fyber.inneractive.sdk.config.global.s sVar;
        if (this.a.b != null) {
            if (inneractiveInfrastructureError.getErrorCode().shouldSendTimeMetric()) {
                this.a.a(inneractiveAdRequest, eVar);
            }
            t tVar = this.a;
            if (!tVar.j) {
                t.c cVar = tVar.i;
                if (cVar != null) {
                    cVar.onAdRefreshFailed(tVar, inneractiveInfrastructureError.getErrorCode());
                    return;
                }
                return;
            }
            j jVar = tVar.h;
            l lVar = tVar.l;
            JSONArray jSONArrayC = null;
            com.fyber.inneractive.sdk.config.global.s sVar2 = lVar != null ? lVar.c : null;
            if (jVar != null && (sVar = jVar.c) != null) {
                jSONArrayC = sVar.c();
            } else if (sVar2 != null) {
                jSONArrayC = sVar2.c();
            }
            a.a(inneractiveAdRequest, inneractiveInfrastructureError, tVar.f2027e, eVar, jSONArrayC);
            t tVar2 = this.a;
            InneractiveAdSpot.RequestListener requestListener = tVar2.b;
            if (requestListener != null) {
                requestListener.onInneractiveFailedAdRequest(tVar2, inneractiveInfrastructureError.getErrorCode());
            }
        }
    }
}
