package com.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import com.json.f3;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.c;
import com.json.mediationsdk.demandOnly.e;
import com.json.mediationsdk.demandOnly.h;
import com.json.mediationsdk.demandOnly.i;
import com.json.mediationsdk.demandOnly.o;
import com.json.mediationsdk.e;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceAES;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.p7;
import com.json.u5;
import com.json.w3;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class f implements i.b {
    private final f3 a;
    private final ConcurrentHashMap<String, g> b;
    private final u5<ISDemandOnlyInterstitialListener> c;

    public f(List<NetworkSettings> list, p7 p7Var, c cVar, u5<ISDemandOnlyInterstitialListener> u5Var, String str, String str2, f3 f3Var) {
        String sessionId = IronSourceUtils.getSessionId();
        boolean zK = p7Var.k();
        com.json.mediationsdk.f fVar = new com.json.mediationsdk.f(p7Var.g(), zK, sessionId);
        this.b = new ConcurrentHashMap<>();
        this.a = f3Var;
        this.c = u5Var;
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.isIronSource()) {
                AbstractAdapter abstractAdapterA = cVar.a(networkSettings, networkSettings.getInterstitialSettings(), true);
                if (abstractAdapterA != null) {
                    g gVar = new g(str, str2, networkSettings, this.c.a(networkSettings.getSubProviderId()), p7Var.e(), abstractAdapterA, new e(fVar));
                    gVar.a(zK);
                    this.b.put(networkSettings.getSubProviderId(), gVar);
                }
            } else {
                IronLog.INTERNAL.error("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    public ConcurrentHashMap<String, g> a() {
        return this.b;
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.b
    public void a(h.d dVar) {
        String instanceId = dVar.getInstanceId();
        String adMarkup = dVar.getAdMarkup();
        try {
            g gVar = this.b.get(instanceId);
            if (gVar == null) {
                this.a.a(e.b.INSTANCE_NOT_FOUND_IN_LOAD, instanceId);
                IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError("Interstitial");
                IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
                this.c.a(instanceId).onInterstitialAdLoadFailed(instanceId, ironSourceErrorBuildNonExistentInstanceError);
                return;
            }
            if (TextUtils.isEmpty(adMarkup)) {
                gVar.c();
            } else {
                gVar.a(new o.a(IronSourceAES.decode(w3.b().c(), adMarkup)));
            }
        } catch (Exception e2) {
            IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitial exception " + e2.getMessage());
            IronLog.API.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
            this.c.a(instanceId).onInterstitialAdLoadFailed(instanceId, ironSourceErrorBuildLoadFailedError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.b
    public void a(String str) {
        try {
            g gVar = this.b.get(str);
            if (gVar != null) {
                gVar.b();
                return;
            }
            this.a.a(e.b.INSTANCE_NOT_FOUND_IN_SHOW, str);
            IronSourceError ironSourceErrorBuildNonExistentInstanceError = ErrorBuilder.buildNonExistentInstanceError("Interstitial");
            IronLog.API.error(ironSourceErrorBuildNonExistentInstanceError.getErrorMessage());
            this.c.a(str).onInterstitialAdShowFailed(str, ironSourceErrorBuildNonExistentInstanceError);
        } catch (Exception e2) {
            IronSourceError ironSourceErrorBuildShowFailedError = ErrorBuilder.buildShowFailedError("Interstitial", "showInterstitial exception " + e2.getMessage());
            IronLog.API.error(ironSourceErrorBuildShowFailedError.getErrorMessage());
            this.c.a(str).onInterstitialAdShowFailed(str, ironSourceErrorBuildShowFailedError);
        }
    }

    @Override // com.ironsource.mediationsdk.demandOnly.i.b
    public boolean b(String str) {
        g gVar = this.b.get(str);
        if (gVar != null) {
            return gVar.a();
        }
        this.a.a(2500, str);
        return false;
    }
}
