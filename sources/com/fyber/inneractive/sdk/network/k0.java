package com.fyber.inneractive.sdk.network;

import com.fyber.inneractive.sdk.ignite.IgniteResponseOuterClass$IgniteResponse;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class k0 extends f0<IgniteResponseOuterClass$IgniteResponse> {
    public final byte[] r;
    public final AtomicInteger s;

    public k0(w<IgniteResponseOuterClass$IgniteResponse> wVar, byte[] bArr, g gVar, com.fyber.inneractive.sdk.config.global.s sVar) {
        super(wVar, gVar, sVar);
        this.s = new AtomicInteger();
        this.r = bArr;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.fyber.inneractive.sdk.ignite.IgniteResponseOuterClass$IgniteResponse] */
    @Override // com.fyber.inneractive.sdk.network.c0
    public b0 a(j jVar, Map<String, List<String>> map, int i) throws Exception {
        try {
            b0 b0Var = new b0();
            InputStream inputStream = jVar.c;
            if (inputStream != null) {
                String strA = com.fyber.inneractive.sdk.util.q.a(inputStream);
                ?? from = IgniteResponseOuterClass$IgniteResponse.parseFrom(strA.getBytes());
                b0Var.b = strA;
                b0Var.a = from;
            }
            return b0Var;
        } catch (Exception e2) {
            IAlog.a("failed parse ignite network request", e2, new Object[0]);
            throw new a0(e2);
        } catch (Throwable th) {
            IAlog.a("failed parse ignite network request", th, new Object[0]);
            throw new a0("failed to parse ignite network request");
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String a() {
        return "https://init-mp.fyber.com/init";
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public o0 i() {
        return o0.HIGH;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean o() {
        return this.s.getAndIncrement() < 4;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public String q() {
        return "application/x-protobuf; messageType=IgniteRequest";
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public z r() {
        return z.POST;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public byte[] u() {
        return this.r;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int v() {
        return ((int) Math.pow(2.0d, this.s.get())) * 1000;
    }
}
