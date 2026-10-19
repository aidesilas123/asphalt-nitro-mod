package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;

/* JADX INFO: loaded from: classes2.dex */
public class i implements IAConfigManager.OnConfigurationReadyAndValidListener {
    public final /* synthetic */ InneractiveAdRequest a;
    public final /* synthetic */ j b;

    public i(j jVar, InneractiveAdRequest inneractiveAdRequest) {
        this.b = jVar;
        this.a = inneractiveAdRequest;
    }

    @Override // com.fyber.inneractive.sdk.config.IAConfigManager.OnConfigurationReadyAndValidListener
    public void onConfigurationReadyAndValid(IAConfigManager iAConfigManager, boolean z, Exception exc) {
        IAConfigManager.removeListener(this);
        if (z) {
            this.b.c(this.a);
            return;
        }
        InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(exc instanceof com.fyber.inneractive.sdk.network.b ? InneractiveErrorCode.CONNECTION_ERROR : InneractiveErrorCode.SDK_NOT_INITIALIZED_OR_CONFIG_ERROR, g.NO_APP_CONFIG_AVAILABLE, exc);
        j jVar = this.b;
        jVar.b(this.a, jVar.a(), inneractiveInfrastructureError);
    }
}
