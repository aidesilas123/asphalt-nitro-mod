package com.fyber.inneractive.sdk.config.global.features;

import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class l extends g {
    public l() {
        super("omsdk");
    }

    @Override // com.fyber.inneractive.sdk.config.global.features.g
    public g b() {
        l lVar = new l();
        a(lVar);
        return lVar;
    }

    public boolean d() {
        boolean zA = a(com.json.mediationsdk.metadata.a.i, false);
        IAlog.a("OMSDK AB %s", String.valueOf(zA));
        return zA;
    }
}
