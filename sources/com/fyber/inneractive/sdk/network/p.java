package com.fyber.inneractive.sdk.network;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.network.c0;
import com.fyber.inneractive.sdk.network.k;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public class p extends k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InneractiveAdRequest f2116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d0 f2117f;

    public class a implements w<com.fyber.inneractive.sdk.response.e> {
        public a() {
        }

        @Override // com.fyber.inneractive.sdk.network.w
        public void a(com.fyber.inneractive.sdk.response.e eVar, Exception exc, boolean z) {
            k.a aVar;
            com.fyber.inneractive.sdk.response.e eVar2 = eVar;
            if (exc == null) {
                p pVar = p.this;
                pVar.a(pVar.f2116e, eVar2);
                return;
            }
            p.this.getClass();
            InneractiveErrorCode inneractiveErrorCode = exc instanceof s0 ? ((s0) exc).a == 204 ? InneractiveErrorCode.NO_FILL : InneractiveErrorCode.SERVER_INTERNAL_ERROR : (!(exc instanceof FileNotFoundException) && (exc instanceof a0)) ? InneractiveErrorCode.SERVER_INVALID_RESPONSE : InneractiveErrorCode.CONNECTION_ERROR;
            p pVar2 = p.this;
            InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(inneractiveErrorCode, com.fyber.inneractive.sdk.flow.g.NETWORK_ERROR, exc);
            InneractiveAdRequest inneractiveAdRequest = pVar2.f2116e;
            if (pVar2.a == null || pVar2.b || pVar2.b || (aVar = pVar2.a) == null) {
                return;
            }
            ((com.fyber.inneractive.sdk.flow.k) aVar).b(inneractiveAdRequest, eVar2, inneractiveInfrastructureError);
        }
    }

    public class b implements c0.a {
        public b() {
        }

        @Override // com.fyber.inneractive.sdk.network.c0.a
        public void a(String str) {
            str.getClass();
            switch (str) {
                case "sdkInitNetworkRequest":
                    com.fyber.inneractive.sdk.metrics.c.f2066d.a(p.this.f2114d).f();
                    break;
                case "sdkGotServerResponse":
                    com.fyber.inneractive.sdk.metrics.c.f2066d.a(p.this.f2114d).g();
                    break;
                case "sdkParsedResponse":
                    com.fyber.inneractive.sdk.metrics.c.f2066d.a(p.this.f2114d).d();
                    break;
            }
        }
    }

    public p(InneractiveAdRequest inneractiveAdRequest, String str, com.fyber.inneractive.sdk.config.global.s sVar, k.a aVar) {
        super(sVar, str, aVar);
        this.f2116e = inneractiveAdRequest;
        this.f2117f = new d0(new a(), inneractiveAdRequest, sVar);
        c();
    }

    @Override // com.fyber.inneractive.sdk.network.k
    public void a() {
        super.a();
        this.f2117f.a = true;
    }

    @Override // com.fyber.inneractive.sdk.network.k
    public String b() {
        return this.f2117f.a();
    }

    public final void c() {
        this.f2117f.f2105d = new b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d() {
        /*
            r6 = this;
            r0 = 0
            r6.b = r0
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r2 = "IARemoteAdFetcher: requestAd called"
            com.fyber.inneractive.sdk.util.IAlog.a(r2, r1)
            com.fyber.inneractive.sdk.external.InneractiveAdRequest r1 = r6.f2116e
            r2 = 1
            if (r1 == 0) goto L21
            java.lang.String r1 = r1.getSpotId()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L21
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r3 = "appID is null or empty. Please provide a valid appID and re-try."
            com.fyber.inneractive.sdk.util.IAlog.b(r3, r1)
            goto L30
        L21:
            java.lang.String r1 = "android.permission.INTERNET"
            boolean r1 = com.fyber.inneractive.sdk.util.l.b(r1)
            if (r1 != 0) goto L32
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r3 = "INTERNET permission is missing. Please add it to the Manifest and re-try, otherwise ads will not be requested and displayed! "
            com.fyber.inneractive.sdk.util.IAlog.b(r3, r1)
        L30:
            r1 = 0
            goto L51
        L32:
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r1 = com.fyber.inneractive.sdk.util.l.b(r1)
            if (r1 != 0) goto L41
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r3 = "It is recommended to add ACCESS_NETWORK_STATE permission to the Manifest for better targetting"
            com.fyber.inneractive.sdk.util.IAlog.b(r3, r1)
        L41:
            java.lang.String r1 = "android.permission.READ_PHONE_STATE"
            boolean r1 = com.fyber.inneractive.sdk.util.l.b(r1)
            if (r1 != 0) goto L50
            java.lang.Object[] r1 = new java.lang.Object[r0]
            java.lang.String r3 = "It is recomended to add the READ_PHONE_STATE permission to the manifest for better targetting"
            com.fyber.inneractive.sdk.util.IAlog.e(r3, r1)
        L50:
            r1 = 1
        L51:
            if (r1 != 0) goto L74
            com.fyber.inneractive.sdk.external.InneractiveInfrastructureError r1 = new com.fyber.inneractive.sdk.external.InneractiveInfrastructureError
            com.fyber.inneractive.sdk.external.InneractiveErrorCode r2 = com.fyber.inneractive.sdk.external.InneractiveErrorCode.INVALID_INPUT
            com.fyber.inneractive.sdk.flow.g r3 = com.fyber.inneractive.sdk.flow.g.VALIDATE_PARAMS_FAILED
            java.lang.Exception r4 = new java.lang.Exception
            java.lang.String r5 = "appID is null or empty or INTERNET permission is missing"
            r4.<init>(r5)
            r1.<init>(r2, r3, r4)
            com.fyber.inneractive.sdk.external.InneractiveAdRequest r2 = r6.f2116e
            r3 = 0
            boolean r4 = r6.b
            if (r4 != 0) goto L73
            com.fyber.inneractive.sdk.network.k$a r4 = r6.a
            if (r4 == 0) goto L73
            com.fyber.inneractive.sdk.flow.k r4 = (com.fyber.inneractive.sdk.flow.k) r4
            r4.b(r2, r3, r1)
        L73:
            return r0
        L74:
            com.fyber.inneractive.sdk.config.IAConfigManager r0 = com.fyber.inneractive.sdk.config.IAConfigManager.M
            com.fyber.inneractive.sdk.network.y r0 = r0.s
            com.fyber.inneractive.sdk.network.d0 r1 = r6.f2117f
            r0.b(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.network.p.d():boolean");
    }
}
