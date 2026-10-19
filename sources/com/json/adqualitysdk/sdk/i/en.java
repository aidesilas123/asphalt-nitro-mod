package com.json.adqualitysdk.sdk.i;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class en extends ed {
    public en(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    abstract boolean d(Object obj, Object obj2);

    abstract boolean e(int i);

    abstract boolean f(String str, String str2);

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        Object objM674 = m710().m702(drVar, cjVar).m674();
        Object objM6742 = m708().m702(drVar, cjVar).m674();
        try {
            return new dp(Boolean.valueOf(e(new BigDecimal(objM674.toString()).compareTo(new BigDecimal(objM6742.toString())))));
        } catch (Exception unused) {
            return ((objM674 instanceof String) && (objM6742 instanceof String)) ? new dp(Boolean.valueOf(f((String) objM674, (String) objM6742))) : new dp(Boolean.valueOf(d(objM674, objM6742)));
        }
    }
}
