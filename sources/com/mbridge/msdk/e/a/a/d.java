package com.mbridge.msdk.e.a.a;

import com.mbridge.msdk.e.a.m;

/* JADX INFO: compiled from: DefaultCacheKeyGenerator.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d implements com.mbridge.msdk.e.a.c {
    @Override // com.mbridge.msdk.e.a.c
    public final String a(m<?> mVar) {
        String strH = mVar.h();
        int iF = mVar.f();
        if (iF == 0) {
            return strH;
        }
        return Integer.toString(iF) + '-' + strH;
    }
}
