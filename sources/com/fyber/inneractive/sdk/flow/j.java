package com.fyber.inneractive.sdk.flow;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.flow.k;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class j extends k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public IAConfigManager.OnConfigurationReadyAndValidListener f2009g;

    public j(String str) {
        super(str);
    }

    public final void a(boolean z, com.fyber.inneractive.sdk.response.e eVar, InneractiveAdRequest inneractiveAdRequest) {
        String spotId = inneractiveAdRequest.getSpotId();
        IAConfigManager iAConfigManager = IAConfigManager.M;
        String str = iAConfigManager.x.c.get("KEY_MISSMATCH_STATS_SPOTS");
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        if (str.contains(String.format("-%s-", spotId))) {
            return;
        }
        s.a aVar = new s.a(com.fyber.inneractive.sdk.network.q.MISSMATCH_SPOTID, inneractiveAdRequest, eVar, (JSONArray) null);
        String str2 = z ? String.format("There is no %s spot ID in current app config", spotId) : String.format("spot ID %s is not active in current app config", spotId);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("reason", str2);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "reason", str2);
        }
        aVar.f2120f.put(jSONObject);
        aVar.a((String) null);
        iAConfigManager.x.c.put("KEY_MISSMATCH_STATS_SPOTS", String.format("%s -%s-", str, spotId));
    }

    @Override // com.fyber.inneractive.sdk.interfaces.a.b
    public void b() {
        IAlog.a("%s onTimeout()", IAlog.a(this));
    }

    public void b(boolean z) {
        IAConfigManager.OnConfigurationReadyAndValidListener onConfigurationReadyAndValidListener = this.f2009g;
        if (onConfigurationReadyAndValidListener != null) {
            IAConfigManager.removeListener(onConfigurationReadyAndValidListener);
        }
        com.fyber.inneractive.sdk.network.k kVar = this.f2010d;
        if (kVar != null) {
            kVar.a();
            this.f2010d = null;
        }
        a(z);
        this.b = null;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.a.b
    public void c() {
        IAlog.a("%s onRetry()", IAlog.a(this));
    }

    public final void c(InneractiveAdRequest inneractiveAdRequest) {
        com.fyber.inneractive.sdk.config.c0 c0Var;
        UnitDisplayType unitDisplayType;
        k.a aVar;
        if (!InneractiveAdManager.wasInitialized() && (aVar = this.b) != null) {
            ((u) aVar).a(inneractiveAdRequest, a(), new InneractiveInfrastructureError(InneractiveErrorCode.SDK_NOT_INITIALIZED, g.NO_APP_CONFIG_AVAILABLE));
        }
        com.fyber.inneractive.sdk.config.z zVarA = com.fyber.inneractive.sdk.config.a.a(inneractiveAdRequest.getSpotId());
        com.fyber.inneractive.sdk.response.e eVarA = a();
        if (zVarA != null && !zVarA.b) {
            a(false, eVarA, inneractiveAdRequest);
            ((u) this.b).a(inneractiveAdRequest, a(), new InneractiveInfrastructureError(InneractiveErrorCode.SPOT_DISABLED, g.NO_APP_CONFIG_AVAILABLE));
            return;
        }
        boolean z = true;
        if (zVarA == null || !zVarA.a.iterator().hasNext()) {
            if (zVarA == null) {
                a(true, eVarA, inneractiveAdRequest);
                IAConfigManager.a();
            }
            IAlog.e("************************************************************************************************************************", new Object[0]);
            IAlog.e("*** Requested spot id '%s' doesn't exist within this application config - application Id: '%s'", inneractiveAdRequest.getSpotId(), IAConfigManager.M.c);
            IAlog.e("*** Are you sure that you are using the correct application and spot ids, as defined for this application in the Inneractive console?", new Object[0]);
            IAlog.e("************************************************************************************************************************", new Object[0]);
            ((u) this.b).a(inneractiveAdRequest, eVarA, new InneractiveInfrastructureError(InneractiveErrorCode.ERROR_CONFIGURATION_NO_SUCH_SPOT, g.NO_APP_CONFIG_AVAILABLE));
            return;
        }
        com.fyber.inneractive.sdk.config.a0 a0VarC = zVarA.c(0);
        if (a0VarC.c == null && ((c0Var = a0VarC.f1942f) == null || ((unitDisplayType = c0Var.j) != UnitDisplayType.INTERSTITIAL && unitDisplayType != UnitDisplayType.REWARDED))) {
            z = false;
        }
        if (!z) {
            ((u) this.b).a(inneractiveAdRequest, a(), new InneractiveInfrastructureError(InneractiveErrorCode.UNSUPPORTED_SPOT, g.NO_APP_CONFIG_AVAILABLE));
            return;
        }
        com.fyber.inneractive.sdk.config.global.s sVarB = com.fyber.inneractive.sdk.config.global.s.b();
        this.c = sVarB;
        sVarB.a(inneractiveAdRequest.getSpotId(), false);
        com.fyber.inneractive.sdk.network.p pVar = new com.fyber.inneractive.sdk.network.p(inneractiveAdRequest, inneractiveAdRequest.b, this.c, this);
        this.f2010d = pVar;
        pVar.d();
    }

    @Override // com.fyber.inneractive.sdk.flow.k
    public String d() {
        return IAlog.a(this);
    }
}
