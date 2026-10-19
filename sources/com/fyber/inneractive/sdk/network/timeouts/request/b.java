package com.fyber.inneractive.sdk.network.timeouts.request;

import com.fyber.inneractive.sdk.config.global.features.j;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a {
    public b(String str, j jVar) {
        super(str, jVar, null);
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int a(j jVar) {
        return jVar.d();
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int a(j jVar, String str) {
        return jVar.e(str);
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int b(j jVar, String str) {
        jVar.getClass();
        String strA = j.a(str, "min", "rat");
        jVar.h(str);
        return jVar.a(strA, 5000);
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int c(j jVar, String str) {
        jVar.getClass();
        return jVar.a(j.a(str, "rat_perc"), "read".equalsIgnoreCase(str) ? 15 : 10);
    }
}
