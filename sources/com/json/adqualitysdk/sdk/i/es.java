package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public final class es extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ej f5608e;

    public es(ej ejVar, Cdo cdo) {
        super(cdo);
        this.f5608e = ejVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        dp dpVarM702 = this.f5608e.m702(drVar, cjVar);
        drVar.m686(this.f5608e.m712(), Integer.valueOf(dpVarM702.m679().intValue() + 1));
        return dpVarM702;
    }
}
