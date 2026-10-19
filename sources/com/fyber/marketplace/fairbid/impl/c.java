package com.fyber.marketplace.fairbid.impl;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdSpotManager;
import com.fyber.inneractive.sdk.external.InneractiveMediationName;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.flow.c0;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.flow.t;
import com.fyber.inneractive.sdk.flow.w;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements w, c0 {
    public InneractiveUnitController<?> a;
    public q b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2786d = false;
    public final String c = UUID.randomUUID().toString();

    public c(InneractiveUnitController<?> inneractiveUnitController, q qVar) {
        this.a = inneractiveUnitController;
        this.b = qVar;
    }

    @Override // com.fyber.inneractive.sdk.flow.w
    public void a() {
        q qVar = this.b;
        if (qVar != null) {
            qVar.a();
        }
        this.b = null;
        this.a = null;
        InneractiveAdSpotManager.get().removeSpot(this);
    }

    @Override // com.fyber.inneractive.sdk.flow.c0
    public void a(t.c cVar) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void addUnitController(InneractiveUnitController inneractiveUnitController) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void destroy() {
        InneractiveUnitController<?> inneractiveUnitController = this.a;
        if (inneractiveUnitController != null) {
            inneractiveUnitController.destroy();
        }
        a();
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public q getAdContent() {
        return this.b;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public InneractiveAdRequest getCurrentProcessedRequest() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getLocalUniqueId() {
        return this.c;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public InneractiveMediationName getMediationName() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getMediationNameString() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getMediationVersion() {
        return "";
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getRequestedSpotId() {
        return "";
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public InneractiveUnitController getSelectedUnitController() {
        return this.a;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public boolean isReady() {
        q qVar = this.b;
        if (qVar == null) {
            return false;
        }
        boolean z = qVar.d() != null && this.b.d().c();
        if (z) {
            q qVar2 = this.b;
            e eVarD = qVar2.d();
            if (!this.f2786d && eVarD != null && eVarD.c != 0 && eVarD.c()) {
                long minutes = TimeUnit.MILLISECONDS.toMinutes(eVarD.a - System.currentTimeMillis());
                long j = eVarD.b;
                IAlog.a(String.format("Firing Event 802 - AdExpired - time passed- %s, sessionTimeOut - %s", Long.valueOf(minutes), Long.valueOf(j)), new Object[0]);
                s.a aVar = new s.a(com.fyber.inneractive.sdk.network.q.IA_AD_EXPIRED, qVar2.a, eVarD, qVar2.c.c());
                JSONObject jSONObject = new JSONObject();
                Long lValueOf = Long.valueOf(minutes);
                try {
                    jSONObject.put("time_passed", lValueOf);
                } catch (Exception unused) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "time_passed", lValueOf);
                }
                Long lValueOf2 = Long.valueOf(j);
                try {
                    jSONObject.put("timeout", lValueOf2);
                } catch (Exception unused2) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "timeout", lValueOf2);
                }
                aVar.f2120f.put(jSONObject);
                aVar.a((String) null);
                this.f2786d = true;
            }
        }
        return !z;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void loadAd(String str) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void removeUnitController(InneractiveUnitController inneractiveUnitController) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void requestAd(InneractiveAdRequest inneractiveAdRequest) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setMediationName(InneractiveMediationName inneractiveMediationName) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setMediationName(String str) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setMediationVersion(String str) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setRequestListener(InneractiveAdSpot.RequestListener requestListener) {
    }
}
