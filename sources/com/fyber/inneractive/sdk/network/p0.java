package com.fyber.inneractive.sdk.network;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class p0 extends f0<com.fyber.inneractive.sdk.click.c> {
    public final String r;

    public p0(w<com.fyber.inneractive.sdk.click.c> wVar, String str, g gVar) {
        super(wVar, gVar);
        this.r = str;
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [T, com.fyber.inneractive.sdk.click.c] */
    @Override // com.fyber.inneractive.sdk.network.c0
    public b0 a(j jVar, Map<String, List<String>> map, int i) throws Exception {
        b0 b0Var = new b0();
        ?? cVar = new com.fyber.inneractive.sdk.click.c();
        List<String> list = jVar.f2113f;
        cVar.a.clear();
        cVar.a.addAll(list);
        InputStream inputStream = jVar.c;
        if (inputStream != null) {
            String string = com.fyber.inneractive.sdk.util.q.a(inputStream, false).toString();
            cVar.b = string;
            b0Var.b = string;
        }
        b0Var.a = cVar;
        return b0Var;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String a() {
        return this.r;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public o0 i() {
        return o0.LOW;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean o() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public z r() {
        return z.GET;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int v() {
        return 0;
    }
}
