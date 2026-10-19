package com.fyber.inneractive.sdk.network.timeouts.request;

import com.fyber.inneractive.sdk.config.global.features.j;

/* JADX INFO: loaded from: classes2.dex */
public class e extends a {
    public e(String str, j jVar, String str2) {
        super(str, jVar, str2);
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int a(j jVar) {
        return jVar.f(this.l);
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int a(j jVar, String str) {
        return jVar.c(str, this.l);
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int b(j jVar, String str) {
        String str2 = this.l;
        jVar.getClass();
        String strA = j.a(str, "min", "rat", j.i(str2));
        jVar.h(str);
        return jVar.a(strA, jVar.a(j.a(str, "min", "rat", "all_mediators"), 5000));
    }

    @Override // com.fyber.inneractive.sdk.network.timeouts.request.a
    public int c(j jVar, String str) {
        String str2 = this.l;
        jVar.getClass();
        return jVar.a(j.a(str, "rat", "perc", j.i(str2)), jVar.a(j.a(str, "rat", "perc", "all_mediators"), "read".equalsIgnoreCase(str) ? 15 : 10));
    }
}
