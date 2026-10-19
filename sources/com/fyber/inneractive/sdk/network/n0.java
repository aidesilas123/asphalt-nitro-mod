package com.fyber.inneractive.sdk.network;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.bidder.adm.AdmParametersOuterClass$AdmParameters;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class n0 extends f0<com.fyber.inneractive.sdk.response.e> {
    public final String r;
    public final com.fyber.inneractive.sdk.bidder.adm.f s;
    public int t;
    public final com.fyber.inneractive.sdk.response.e u;
    public final com.fyber.inneractive.sdk.config.global.s v;
    public final com.fyber.inneractive.sdk.network.timeouts.request.a w;

    public n0(n0 n0Var) {
        super(n0Var);
        this.t = 0;
        this.q = true;
        this.r = n0Var.r;
        this.s = n0Var.s;
        this.u = n0Var.u;
        this.v = n0Var.v;
        this.w = n0Var.w;
        this.t = n0Var.t;
    }

    public n0(w<com.fyber.inneractive.sdk.response.e> wVar, String str, com.fyber.inneractive.sdk.bidder.adm.f fVar, com.fyber.inneractive.sdk.config.global.s sVar, com.fyber.inneractive.sdk.response.e eVar) {
        super(wVar, x.a().b(), sVar);
        this.t = 0;
        this.q = true;
        this.r = str;
        this.s = fVar;
        this.u = eVar;
        this.v = sVar;
        this.w = a(eVar, fVar, sVar);
    }

    public static com.fyber.inneractive.sdk.network.timeouts.request.a a(com.fyber.inneractive.sdk.response.e eVar, com.fyber.inneractive.sdk.bidder.adm.f fVar, com.fyber.inneractive.sdk.config.global.s sVar) {
        String lowerCase = UnitDisplayType.BANNER.name().toLowerCase(Locale.US);
        if (eVar == null || eVar.n == null) {
            AdmParametersOuterClass$AdmParameters admParametersOuterClass$AdmParameters = fVar.a;
            if (admParametersOuterClass$AdmParameters != null) {
                lowerCase = com.fyber.inneractive.sdk.util.q0.a(String.valueOf(admParametersOuterClass$AdmParameters.getSpotId()));
            }
        } else {
            lowerCase = com.fyber.inneractive.sdk.util.q0.a(eVar);
        }
        String str = IAConfigManager.M.m;
        com.fyber.inneractive.sdk.config.global.features.j jVar = (com.fyber.inneractive.sdk.config.global.features.j) sVar.a(com.fyber.inneractive.sdk.config.global.features.j.class);
        return TextUtils.isEmpty(str) ? new com.fyber.inneractive.sdk.network.timeouts.request.b(lowerCase, jVar) : new com.fyber.inneractive.sdk.network.timeouts.request.d(lowerCase, jVar, str);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, com.fyber.inneractive.sdk.response.e] */
    @Override // com.fyber.inneractive.sdk.network.c0
    public b0 a(j jVar, Map<String, List<String>> map, int i) throws Exception {
        b0 b0Var = new b0();
        try {
            InputStream inputStream = jVar.c;
            if (inputStream != null) {
                d(System.currentTimeMillis());
                StringBuffer stringBufferA = com.fyber.inneractive.sdk.util.q.a(inputStream, false);
                c(System.currentTimeMillis());
                String string = stringBufferA.toString();
                int iB = this.s.b();
                com.fyber.inneractive.sdk.bidder.adm.f fVar = this.s;
                fVar.c = string;
                ?? A = a(iB, null, fVar, null);
                A.h = string;
                b0Var.a = A;
            }
            return b0Var;
        } catch (b e2) {
            e = e2;
            IAlog.a("failed parse adm network request but will re-try", e, new Object[0]);
            c(System.currentTimeMillis());
            throw new z0(e);
        } catch (SocketTimeoutException e3) {
            e = e3;
            IAlog.a("failed parse adm network request but will re-try", e, new Object[0]);
            c(System.currentTimeMillis());
            throw new z0(e);
        } catch (UnknownHostException e4) {
            e = e4;
            IAlog.a("failed parse adm network request but will re-try", e, new Object[0]);
            c(System.currentTimeMillis());
            throw new z0(e);
        } catch (Exception e5) {
            c(System.currentTimeMillis());
            IAlog.a("failed parse adm network request", e5, new Object[0]);
            throw new a0(e5);
        }
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public j a(String str) throws Exception {
        IAlog.a("%s : NetworkRequestMarkup Ad request execution started, retry number: %d, timeouts(connection: %d read: %d)", IAlog.a(this), Integer.valueOf(this.t), Integer.valueOf(n().a), Integer.valueOf(n().b));
        return super.a(str);
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String a() {
        return this.r;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public void a(long j) {
        super.a(j);
        IAlog.a("%s : NetworkRequestMarkup : set end connection timestamp, total execution time: %d", IAlog.a(this), Integer.valueOf(super.y()));
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public void b(long j) {
        super.b(j);
        IAlog.a("%s : NetworkRequestMarkup : set start connection timestamp", IAlog.a(this));
    }

    @Override // com.fyber.inneractive.sdk.network.f0
    public void c(long j) {
        super.c(j);
        IAlog.a("%s : NetworkRequestMarkup : set end read timestamp, total execution time: %d", IAlog.a(this), Integer.valueOf(super.y()));
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public void d() {
        super.d();
        IAlog.a("%s : NetworkRequestMarkup cancel by timeout at retry: %d", IAlog.a(this), Integer.valueOf(this.t));
        y yVar = IAConfigManager.M.s;
        this.a = true;
        n0 n0Var = new n0(this);
        if ((yVar instanceof y) && yVar.d(n0Var)) {
            return;
        }
        IAlog.a("%s : NetworkRequestMarkup won't retry - resolve request with `Bidding ad request passed allowed time` at retry: %d", IAlog.a(this), Integer.valueOf(this.t));
        a((Object) null, new Exception("Bidding ad request passed allowed time"), false);
    }

    @Override // com.fyber.inneractive.sdk.network.f0
    public void d(long j) {
        super.d(j);
        IAlog.a("%s : NetworkRequestMarkup : set start read timestamp", IAlog.a(this));
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public int h() {
        return this.w.f2128f;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public o0 i() {
        return o0.HIGH;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public com.fyber.inneractive.sdk.config.global.s m() {
        return this.v;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public t0 n() {
        com.fyber.inneractive.sdk.network.timeouts.request.a aVar = this.w;
        return new t0(aVar.i, aVar.h);
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean o() {
        if (this.a) {
            return false;
        }
        int i = this.t + 1;
        this.t = i;
        if (i > this.w.b()) {
            IAlog.a("%s : NetworkRequestMarkup Should enable retry - FALSE, current retry: %d total retries: %d, request id: %s", IAlog.a(this), Integer.valueOf(this.t - 1), Integer.valueOf(this.w.b()), this.f2108g);
            return false;
        }
        IAlog.a("%s : NetworkRequestMarkup Should enable retry - TRUE, current retry: %d total retries: %d, request id: %s", IAlog.a(this), Integer.valueOf(this.t - 1), Integer.valueOf(this.w.b()), this.f2108g);
        this.w.a(this.t);
        return true;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public z r() {
        return z.GET;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int v() {
        return this.w.c();
    }

    @Override // com.fyber.inneractive.sdk.network.f0
    public int x() {
        int iY = super.y();
        com.fyber.inneractive.sdk.network.timeouts.request.a aVar = this.w;
        return iY + ((aVar.f2128f + aVar.c()) * this.t);
    }

    @Override // com.fyber.inneractive.sdk.network.f0
    public int y() {
        return super.y();
    }
}
