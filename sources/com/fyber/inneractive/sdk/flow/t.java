package com.fyber.inneractive.sdk.flow;

import android.os.Looper;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.bidder.adm.AdmParametersOuterClass$AdmParameters;
import com.fyber.inneractive.sdk.bidder.adm.f;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdSpotManager;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.external.InneractiveMediationName;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.flow.k;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.network.s0;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class t implements w, c0 {
    public final String a;
    public InneractiveAdSpot.RequestListener b;
    public InneractiveAdRequest c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public k.a f2026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public q f2027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public e0 f2028f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Set<e0> f2029g;
    public j h;
    public c i;
    public boolean j = true;
    public boolean k = false;
    public l l;

    public class a implements f.a {
        public final /* synthetic */ com.fyber.inneractive.sdk.bidder.adm.f a;
        public final /* synthetic */ com.fyber.inneractive.sdk.config.global.s b;
        public final /* synthetic */ String c;

        public a(com.fyber.inneractive.sdk.bidder.adm.f fVar, com.fyber.inneractive.sdk.config.global.s sVar, String str) {
            this.a = fVar;
            this.b = sVar;
            this.c = str;
        }

        public void a() {
            com.fyber.inneractive.sdk.config.global.q qVarA;
            com.fyber.inneractive.sdk.config.global.b bVar;
            com.fyber.inneractive.sdk.config.global.k next;
            com.fyber.inneractive.sdk.config.global.l lVar;
            com.fyber.inneractive.sdk.config.global.q qVarA2;
            t tVar = t.this;
            tVar.getClass();
            IAlog.a("%s : InneractiveAdSpotImpl markup data available", IAlog.a(tVar));
            AdmParametersOuterClass$AdmParameters admParametersOuterClass$AdmParameters = this.a.a;
            if (admParametersOuterClass$AdmParameters != null) {
                com.fyber.inneractive.sdk.config.global.s sVar = this.b;
                List<AdmParametersOuterClass$AdmParameters.Experiment> abExperimentsList = admParametersOuterClass$AdmParameters.getAbExperimentsList();
                sVar.getClass();
                com.fyber.inneractive.sdk.config.global.a aVar = IAConfigManager.M.z;
                aVar.getClass();
                for (com.fyber.inneractive.sdk.config.global.features.g gVar : sVar.c.values()) {
                    if (gVar != null && (lVar = aVar.a) != null && (qVarA2 = lVar.a(gVar.b)) != null) {
                        gVar.a = qVarA2.a;
                    }
                }
                if (abExperimentsList == null || abExperimentsList.size() <= 0) {
                    return;
                }
                com.fyber.inneractive.sdk.config.global.a aVar2 = IAConfigManager.M.z;
                aVar2.b = sVar;
                for (com.fyber.inneractive.sdk.config.global.features.g gVar2 : sVar.c.values()) {
                    for (AdmParametersOuterClass$AdmParameters.Experiment experiment : abExperimentsList) {
                        String identifier = experiment.getIdentifier();
                        String variant = experiment.getVariant();
                        com.fyber.inneractive.sdk.config.global.l lVar2 = aVar2.a;
                        if (lVar2 != null && (qVarA = lVar2.a(gVar2.b)) != null && (bVar = qVarA.c.get(identifier)) != null) {
                            Iterator<com.fyber.inneractive.sdk.config.global.k> it = bVar.c.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    next = it.next();
                                    if (next.b.equals(variant)) {
                                        break;
                                    }
                                } else {
                                    next = null;
                                    break;
                                }
                            }
                            gVar2.c.put(bVar.a, bVar);
                            if (next != null) {
                                gVar2.f1960d.put(bVar.a, next);
                            }
                        }
                    }
                }
            }
        }

        public void a(Exception exc, InneractiveErrorCode inneractiveErrorCode, com.fyber.inneractive.sdk.response.e... eVarArr) {
            t tVar = t.this;
            tVar.getClass();
            IAlog.a("%s : InneractiveAdSpotImpl data error", IAlog.a(tVar));
            com.fyber.inneractive.sdk.response.e eVar = eVarArr.length > 0 ? eVarArr[0] : null;
            InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(inneractiveErrorCode, g.ADM_FETCH_FAILED);
            k.a aVar = t.this.f2026d;
            if (aVar != null) {
                ((u) aVar).a(null, eVar, inneractiveInfrastructureError);
            }
            l lVar = t.this.l;
            if (lVar != null) {
                lVar.a(null, eVar, inneractiveInfrastructureError);
            }
            t tVar2 = t.this;
            String str = this.c;
            com.fyber.inneractive.sdk.config.global.s sVar = this.b;
            tVar2.getClass();
            com.fyber.inneractive.sdk.network.q qVar = (inneractiveErrorCode.equals(InneractiveErrorCode.CONNECTION_ERROR) || inneractiveErrorCode.equals(InneractiveErrorCode.NO_FILL)) ? com.fyber.inneractive.sdk.network.q.FATAL_ADM_MARKUP_FETCHING_ERROR : com.fyber.inneractive.sdk.network.q.FATAL_ADM_PARSING_ERROR;
            if (eVar != null) {
                eVar.B = false;
            }
            String name = exc.getClass().getName();
            if (exc instanceof s0) {
                name = "NetworkStackException";
            }
            s.a aVar2 = new s.a(qVar, (InneractiveAdRequest) null, eVar, sVar.c());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("exception", name);
            } catch (Exception unused) {
                IAlog.e("Got exception adding param to json object: %s, %s", "exception", name);
            }
            String localizedMessage = exc.getLocalizedMessage();
            Exception localizedMessage2 = exc;
            if (localizedMessage != null) {
                localizedMessage2 = exc.getLocalizedMessage();
            }
            try {
                jSONObject.put("message", localizedMessage2);
            } catch (Exception unused2) {
                IAlog.e("Got exception adding param to json object: %s, %s", "message", localizedMessage2);
            }
            try {
                jSONObject.put("admPayload", str);
            } catch (Exception unused3) {
                IAlog.e("Got exception adding param to json object: %s, %s", "admPayload", str);
            }
            aVar2.f2120f.put(jSONObject);
            aVar2.a((String) null);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.c();
        }
    }

    public interface c {
        void onAdRefreshFailed(InneractiveAdSpot inneractiveAdSpot, InneractiveErrorCode inneractiveErrorCode);

        void onAdRefreshed(InneractiveAdSpot inneractiveAdSpot);
    }

    public t() {
        String string = UUID.randomUUID().toString();
        this.a = string;
        this.f2029g = new HashSet();
        IAlog.a("%sInneractiveAdSpotImpl created with UID: %s", d(), string);
    }

    @Override // com.fyber.inneractive.sdk.flow.w
    public void a() {
        q qVar;
        q qVar2 = this.f2027e;
        if (qVar2 != null) {
            if (qVar2.e() && (qVar = this.f2027e) != null && !qVar.f2020e) {
                com.fyber.inneractive.sdk.response.e eVarD = qVar.d();
                com.fyber.inneractive.sdk.util.m.b.post(new v(this, Arrays.toString(Thread.currentThread().getStackTrace()), this.f2027e.a, eVarD));
            }
            this.f2027e.a();
            this.f2027e = null;
        }
        this.f2028f = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.fyber.inneractive.sdk.external.InneractiveAdRequest r10, com.fyber.inneractive.sdk.response.e r11) {
        /*
            r9 = this;
            r0 = 0
            if (r10 == 0) goto L33
            com.fyber.inneractive.sdk.config.b0 r1 = r10.getSelectedUnitConfig()
            if (r1 == 0) goto L33
            com.fyber.inneractive.sdk.config.b0 r1 = r10.getSelectedUnitConfig()
            com.fyber.inneractive.sdk.config.a0 r1 = (com.fyber.inneractive.sdk.config.a0) r1
            com.fyber.inneractive.sdk.config.t r1 = r1.c
            if (r1 == 0) goto L1e
            com.fyber.inneractive.sdk.config.b0 r1 = r10.getSelectedUnitConfig()
            com.fyber.inneractive.sdk.config.a0 r1 = (com.fyber.inneractive.sdk.config.a0) r1
            com.fyber.inneractive.sdk.config.t r1 = r1.c
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r1 = r1.b
            goto L34
        L1e:
            com.fyber.inneractive.sdk.config.b0 r1 = r10.getSelectedUnitConfig()
            com.fyber.inneractive.sdk.config.a0 r1 = (com.fyber.inneractive.sdk.config.a0) r1
            com.fyber.inneractive.sdk.config.c0 r1 = r1.f1942f
            if (r1 == 0) goto L33
            com.fyber.inneractive.sdk.config.b0 r1 = r10.getSelectedUnitConfig()
            com.fyber.inneractive.sdk.config.a0 r1 = (com.fyber.inneractive.sdk.config.a0) r1
            com.fyber.inneractive.sdk.config.c0 r1 = r1.f1942f
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r1 = r1.j
            goto L34
        L33:
            r1 = r0
        L34:
            com.fyber.inneractive.sdk.flow.q r2 = r9.f2027e
            if (r2 == 0) goto L3e
            T extends com.fyber.inneractive.sdk.response.e r2 = r2.b
            if (r2 == 0) goto L3e
            r4 = r2
            goto L3f
        L3e:
            r4 = r11
        L3f:
            java.lang.String r6 = r9.a
            if (r1 != 0) goto L47
            if (r4 == 0) goto L47
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r1 = r4.n
        L47:
            r7 = r1
            com.fyber.inneractive.sdk.metrics.b r11 = new com.fyber.inneractive.sdk.metrics.b
            com.fyber.inneractive.sdk.flow.q r1 = r9.f2027e
            if (r1 != 0) goto L4f
            goto L55
        L4f:
            com.fyber.inneractive.sdk.config.global.s r0 = r1.c
            org.json.JSONArray r0 = r0.c()
        L55:
            r8 = r0
            r3 = r11
            r5 = r10
            r3.<init>(r4, r5, r6, r7, r8)
            r11.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.flow.t.a(com.fyber.inneractive.sdk.external.InneractiveAdRequest, com.fyber.inneractive.sdk.response.e):void");
    }

    @Override // com.fyber.inneractive.sdk.flow.c0
    public void a(c cVar) {
        this.i = cVar;
        IAlog.a("%srequestAd called with request: %s", IAlog.a(this), null);
        if (this.c == null) {
            IAlog.b("%srequestAd called with a null request, but no previous request is available! Cannot continue", IAlog.a(this));
            InneractiveAdSpot.RequestListener requestListener = this.b;
            if (requestListener != null) {
                requestListener.onInneractiveFailedAdRequest(this, InneractiveErrorCode.INVALID_INPUT);
                return;
            }
            return;
        }
        if (!InneractiveAdManager.wasInitialized()) {
            InneractiveAdSpot.RequestListener requestListener2 = this.b;
            if (requestListener2 != null) {
                requestListener2.onInneractiveFailedAdRequest(this, InneractiveErrorCode.SDK_NOT_INITIALIZED);
                return;
            }
            return;
        }
        InneractiveAdRequest inneractiveAdRequest = this.c;
        String str = this.a;
        inneractiveAdRequest.b = str;
        com.fyber.inneractive.sdk.metrics.c.f2066d.a(str).c();
        if (this.f2029g.isEmpty()) {
            IAlog.b("%srequestAd called but no AdUnitControllers exist! Cannot continue", IAlog.a(this));
            if (this.b != null) {
                a(this.c, (com.fyber.inneractive.sdk.response.e) null);
                this.b.onInneractiveFailedAdRequest(this, InneractiveErrorCode.INVALID_INPUT);
                return;
            }
            return;
        }
        j jVar = this.h;
        if (jVar != null) {
            jVar.b(this.c == null);
        }
        this.h = new j(this.a);
        if (this.f2026d == null) {
            this.f2026d = new u(this);
        }
        IAlog.a("%sFound ad source for request! %s", IAlog.a(this), this.h);
        b();
        j jVar2 = this.h;
        if (jVar2 != null) {
            InneractiveAdRequest inneractiveAdRequest2 = this.c;
            jVar2.b = this.f2026d;
            if (IAConfigManager.i()) {
                jVar2.c(inneractiveAdRequest2);
                return;
            }
            i iVar = new i(jVar2, inneractiveAdRequest2);
            jVar2.f2009g = iVar;
            IAConfigManager.addListener(iVar);
            IAConfigManager.a();
        }
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void addUnitController(InneractiveUnitController inneractiveUnitController) {
        if (inneractiveUnitController != null) {
            e0 e0Var = (e0) inneractiveUnitController;
            e0Var.setAdSpot(this);
            if (this.f2029g.size() > 0) {
                for (InneractiveUnitController inneractiveUnitController2 : new HashSet(this.f2029g)) {
                    if (inneractiveUnitController2.getClass().equals(inneractiveUnitController.getClass())) {
                        e0 e0Var2 = this.f2028f;
                        if (e0Var2 != null && e0Var2.equals(inneractiveUnitController2)) {
                            this.f2028f.destroy();
                            this.f2028f = null;
                        }
                        this.f2029g.remove(inneractiveUnitController2);
                    }
                }
            }
            this.f2029g.add(e0Var);
            if (this.f2027e != null) {
                e();
            }
        }
    }

    public final void b() {
        IAConfigManager iAConfigManager = IAConfigManager.M;
        com.fyber.inneractive.sdk.measurement.a aVar = iAConfigManager.J;
        if (aVar == null || !aVar.a) {
            IAlog.a("%sinitOmidSdk", IAlog.a(this));
            com.fyber.inneractive.sdk.util.m.a(new com.fyber.inneractive.sdk.config.n(iAConfigManager, com.fyber.inneractive.sdk.util.l.a));
        }
    }

    public final void c() {
        Iterator<e0> it = this.f2029g.iterator();
        while (it.hasNext()) {
            it.next().destroy();
        }
        this.f2029g.clear();
        l lVar = this.l;
        if (lVar != null) {
            lVar.a(true);
            lVar.b = null;
            this.l = null;
        }
        j jVar = this.h;
        if (jVar != null) {
            jVar.b(true);
            this.h = null;
        }
        this.b = null;
        a();
        InneractiveAdSpotManager.get().removeSpot(this);
    }

    public final String d() {
        return IAlog.a(this);
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void destroy() {
        if (Looper.myLooper() == null || Looper.getMainLooper() != Looper.myLooper()) {
            com.fyber.inneractive.sdk.util.m.b.post(new b());
        } else {
            c();
        }
    }

    public final boolean e() {
        for (e0 e0Var : this.f2029g) {
            if (e0Var.supports(this)) {
                this.f2028f = e0Var;
                return true;
            }
        }
        return false;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public q getAdContent() {
        return this.f2027e;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public InneractiveAdRequest getCurrentProcessedRequest() {
        return this.c;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getLocalUniqueId() {
        return this.a;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public InneractiveMediationName getMediationName() {
        return IAConfigManager.M.n;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getMediationNameString() {
        return IAConfigManager.M.m;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getMediationVersion() {
        return IAConfigManager.M.o;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public String getRequestedSpotId() {
        InneractiveAdRequest inneractiveAdRequest = this.c;
        return inneractiveAdRequest != null ? inneractiveAdRequest.getSpotId() : "";
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public InneractiveUnitController getSelectedUnitController() {
        return this.f2028f;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public boolean isReady() {
        q qVar;
        q qVar2 = this.f2027e;
        if (qVar2 == null) {
            return false;
        }
        boolean z = qVar2.d() != null && this.f2027e.d().c();
        if (z && (qVar = this.f2027e) != null) {
            com.fyber.inneractive.sdk.response.e eVarD = qVar.d();
            if (!this.k && eVarD != null) {
                long minutes = TimeUnit.MILLISECONDS.toMinutes(System.currentTimeMillis() - eVarD.c);
                long j = eVarD.b;
                long j2 = minutes - j;
                IAlog.a(String.format("Firing Event 802 - AdExpired - time passed- %s, sessionTimeOut - %s", Long.valueOf(j2), Long.valueOf(j)), new Object[0]);
                s.a aVar = new s.a(com.fyber.inneractive.sdk.network.q.IA_AD_EXPIRED, qVar.a, eVarD, qVar.c.c());
                JSONObject jSONObject = new JSONObject();
                Long lValueOf = Long.valueOf(j2);
                try {
                    jSONObject.put("time_passed", lValueOf);
                } catch (Exception unused) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "time_passed", lValueOf);
                }
                Long lValueOf2 = Long.valueOf(j);
                try {
                    jSONObject.put("timeout", lValueOf2);
                } catch (Exception unused2) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "timeout", lValueOf2);
                }
                aVar.f2120f.put(jSONObject);
                aVar.a((String) null);
                this.k = true;
            }
        }
        return !z && this.f2027e.g();
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void loadAd(String str) {
        IAlog.a("%s : InneractiveAdSpotImpl Start load ad process", IAlog.a(this));
        System.currentTimeMillis();
        if (str == null || TextUtils.isEmpty(str)) {
            InneractiveAdSpot.RequestListener requestListener = this.b;
            if (requestListener != null) {
                requestListener.onInneractiveFailedAdRequest(this, InneractiveErrorCode.INVALID_INPUT);
                return;
            }
            return;
        }
        if (!InneractiveAdManager.wasInitialized()) {
            InneractiveAdSpot.RequestListener requestListener2 = this.b;
            if (requestListener2 != null) {
                requestListener2.onInneractiveFailedAdRequest(this, InneractiveErrorCode.SDK_NOT_INITIALIZED);
                return;
            }
            return;
        }
        com.fyber.inneractive.sdk.metrics.c.f2066d.a(this.a).c();
        String str2 = this.a;
        this.l = new l(str2);
        if (this.f2026d == null) {
            this.f2026d = new u(this);
        }
        com.fyber.inneractive.sdk.bidder.adm.f fVar = new com.fyber.inneractive.sdk.bidder.adm.f(str, str2);
        com.fyber.inneractive.sdk.config.global.s sVarB = com.fyber.inneractive.sdk.config.global.s.b();
        a aVar = new a(fVar, sVarB, str);
        b();
        com.fyber.inneractive.sdk.util.m.a(new com.fyber.inneractive.sdk.bidder.adm.b(fVar, aVar, sVarB));
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void removeUnitController(InneractiveUnitController inneractiveUnitController) {
        if (inneractiveUnitController != null) {
            e0 e0Var = this.f2028f;
            if (e0Var != null && e0Var.equals(inneractiveUnitController)) {
                this.f2028f.destroy();
                this.f2028f = null;
            }
            this.f2029g.remove(inneractiveUnitController);
        }
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void requestAd(InneractiveAdRequest inneractiveAdRequest) {
        boolean z;
        IAlog.a("%srequestAd called with request: %s", IAlog.a(this), inneractiveAdRequest);
        if (inneractiveAdRequest == null && this.c == null) {
            IAlog.b("%srequestAd called with a null request, but no previous request is available! Cannot continue", IAlog.a(this));
            InneractiveAdSpot.RequestListener requestListener = this.b;
            if (requestListener != null) {
                requestListener.onInneractiveFailedAdRequest(this, InneractiveErrorCode.INVALID_INPUT);
                return;
            }
            return;
        }
        if (!InneractiveAdManager.wasInitialized()) {
            InneractiveAdSpot.RequestListener requestListener2 = this.b;
            if (requestListener2 != null) {
                requestListener2.onInneractiveFailedAdRequest(this, InneractiveErrorCode.SDK_NOT_INITIALIZED);
                return;
            }
            return;
        }
        InneractiveAdRequest inneractiveAdRequest2 = inneractiveAdRequest != null ? inneractiveAdRequest : this.c;
        String str = this.a;
        inneractiveAdRequest2.b = str;
        com.fyber.inneractive.sdk.metrics.c.f2066d.a(str).c();
        if (this.f2029g.isEmpty()) {
            IAlog.b("%srequestAd called but no AdUnitControllers exist! Cannot continue", IAlog.a(this));
            if (this.b != null) {
                if (inneractiveAdRequest == null) {
                    inneractiveAdRequest = this.c;
                }
                a(inneractiveAdRequest, (com.fyber.inneractive.sdk.response.e) null);
                this.b.onInneractiveFailedAdRequest(this, InneractiveErrorCode.INVALID_INPUT);
                return;
            }
            return;
        }
        j jVar = this.h;
        if (jVar != null) {
            jVar.b(inneractiveAdRequest != null || this.c == null);
        }
        if (inneractiveAdRequest != null) {
            InneractiveAdRequest inneractiveAdRequest3 = this.c;
            if (inneractiveAdRequest3 != null) {
                inneractiveAdRequest.setSelectedUnitConfig(inneractiveAdRequest3.getSelectedUnitConfig());
            }
            this.c = inneractiveAdRequest;
            q qVar = this.f2027e;
            if (qVar != null) {
                qVar.a();
                this.j = true;
            }
            Iterator<e0> it = this.f2029g.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next() instanceof InneractiveFullscreenUnitController) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                this.c.a = false;
            }
        }
        this.h = new j(this.a);
        if (this.f2026d == null) {
            this.f2026d = new u(this);
        }
        IAlog.a("%sFound ad source for request! %s", IAlog.a(this), this.h);
        b();
        j jVar2 = this.h;
        if (jVar2 != null) {
            InneractiveAdRequest inneractiveAdRequest4 = this.c;
            jVar2.b = this.f2026d;
            if (IAConfigManager.i()) {
                jVar2.c(inneractiveAdRequest4);
                return;
            }
            i iVar = new i(jVar2, inneractiveAdRequest4);
            jVar2.f2009g = iVar;
            IAConfigManager.addListener(iVar);
            IAConfigManager.a();
        }
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setMediationName(InneractiveMediationName inneractiveMediationName) {
        InneractiveAdManager.setMediationName(inneractiveMediationName);
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setMediationName(String str) {
        InneractiveAdManager.setMediationName(str);
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setMediationVersion(String str) {
        InneractiveAdManager.setMediationVersion(str);
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdSpot
    public void setRequestListener(InneractiveAdSpot.RequestListener requestListener) {
        IAlog.a("%ssetRequestListener called with: %s", IAlog.a(this), requestListener);
        this.b = requestListener;
    }
}
