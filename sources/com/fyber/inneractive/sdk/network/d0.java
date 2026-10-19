package com.fyber.inneractive.sdk.network;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.fyber.inneractive.sdk.external.InneractiveUserConfig;
import com.fyber.inneractive.sdk.util.IAlog;
import com.json.o2;
import com.json.v4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d0 extends f0<com.fyber.inneractive.sdk.response.e> implements n {
    public final InneractiveAdRequest r;
    public Map<String, String> s;
    public StringBuffer t;
    public final com.fyber.inneractive.sdk.serverapi.c u;
    public com.fyber.inneractive.sdk.dv.g v;
    public boolean w;
    public com.fyber.inneractive.sdk.network.timeouts.request.a x;

    public d0(w<com.fyber.inneractive.sdk.response.e> wVar, InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.config.global.s sVar) {
        this(wVar, inneractiveAdRequest, new com.fyber.inneractive.sdk.serverapi.b(sVar), x.a().b(), sVar);
    }

    public d0(w<com.fyber.inneractive.sdk.response.e> wVar, InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.serverapi.c cVar, g gVar, com.fyber.inneractive.sdk.config.global.s sVar) {
        super(wVar, gVar, sVar);
        this.v = null;
        this.w = false;
        this.q = true;
        this.r = inneractiveAdRequest;
        this.u = cVar;
        if (inneractiveAdRequest != null) {
            this.x = new com.fyber.inneractive.sdk.network.timeouts.request.c().a(com.fyber.inneractive.sdk.util.q0.a(inneractiveAdRequest.getSpotId()), inneractiveAdRequest.getMediationName(), sVar, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008f  */
    /* JADX WARN: Type inference failed for: r7v6, types: [T, com.fyber.inneractive.sdk.response.e] */
    @Override // com.fyber.inneractive.sdk.network.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fyber.inneractive.sdk.network.b0 a(com.fyber.inneractive.sdk.network.j r6, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7, int r8) throws java.lang.Exception {
        /*
            r5 = this;
            r8 = 0
            if (r7 == 0) goto L3a
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r7.keySet()
            java.util.Iterator r1 = r1.iterator()
        L10:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L38
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            if (r2 == 0) goto L10
            java.lang.Object r3 = r7.get(r2)
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto L10
            int r4 = r3.size()
            if (r4 <= 0) goto L10
            java.lang.String r2 = r2.toLowerCase()
            java.lang.Object r3 = r3.get(r8)
            r0.put(r2, r3)
            goto L10
        L38:
            r5.s = r0
        L3a:
            java.io.InputStream r6 = r6.c
            long r0 = java.lang.System.currentTimeMillis()
            super.d(r0)
            r7 = 1
            java.lang.Object[] r7 = new java.lang.Object[r7]
            java.lang.String r0 = com.fyber.inneractive.sdk.util.IAlog.a(r5)
            r7[r8] = r0
            java.lang.String r0 = "%s : NetworkRequestAd : set start read timestamp"
            com.fyber.inneractive.sdk.util.IAlog.a(r0, r7)
            r7 = 0
            if (r6 == 0) goto L64
            java.lang.StringBuffer r6 = com.fyber.inneractive.sdk.util.q.a(r6, r8)     // Catch: java.lang.Exception -> L59
            goto L62
        L59:
            r6 = move-exception
            java.lang.Object[] r0 = new java.lang.Object[r8]
            java.lang.String r1 = "failed create response builder in network request ad"
            com.fyber.inneractive.sdk.util.IAlog.a(r1, r6, r0)
            r6 = r7
        L62:
            r5.t = r6
        L64:
            long r0 = java.lang.System.currentTimeMillis()
            r5.c(r0)
            com.fyber.inneractive.sdk.network.b0 r6 = new com.fyber.inneractive.sdk.network.b0
            r6.<init>()
            java.util.Map<java.lang.String, java.lang.String> r0 = r5.s     // Catch: java.lang.Exception -> La1
            if (r0 == 0) goto L8f
            com.fyber.inneractive.sdk.network.m r1 = com.fyber.inneractive.sdk.network.m.RETURNED_AD_TYPE     // Catch: java.lang.Exception -> La1
            java.lang.String r1 = r1.key     // Catch: java.lang.Exception -> La1
            java.lang.String r1 = r1.toLowerCase()     // Catch: java.lang.Exception -> La1
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> La1
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> La1
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> La1
            if (r1 != 0) goto L8f
            boolean r1 = android.text.TextUtils.isDigitsOnly(r0)     // Catch: java.lang.Exception -> La1
            if (r1 == 0) goto L8f
            goto L90
        L8f:
            r0 = r7
        L90:
            if (r0 == 0) goto L97
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> La1
            goto L98
        L97:
            r0 = 6
        L98:
            com.fyber.inneractive.sdk.dv.g r1 = r5.v     // Catch: java.lang.Exception -> La1
            com.fyber.inneractive.sdk.response.e r7 = r5.a(r0, r5, r7, r1)     // Catch: java.lang.Exception -> La1
            r6.a = r7     // Catch: java.lang.Exception -> La1
            return r6
        La1:
            r6 = move-exception
            long r0 = java.lang.System.currentTimeMillis()
            r5.c(r0)
            java.lang.Object[] r7 = new java.lang.Object[r8]
            java.lang.String r8 = "failed parse ad network request"
            com.fyber.inneractive.sdk.util.IAlog.a(r8, r6, r7)
            com.fyber.inneractive.sdk.network.a0 r7 = new com.fyber.inneractive.sdk.network.a0
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.network.d0.a(com.fyber.inneractive.sdk.network.j, java.util.Map, int):com.fyber.inneractive.sdk.network.b0");
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public j a(String str) throws Exception {
        IAlog.a("%s: NetworkRequestAd Ad request execution started, timeouts(connection: %d read: %d)", IAlog.a(this), Integer.valueOf(n().a), Integer.valueOf(n().b));
        return super.a(str);
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String a() {
        int i = com.fyber.inneractive.sdk.config.f.a;
        String property = System.getProperty("ia.testEnvironmentConfiguration.name");
        String strA = TextUtils.isEmpty(property) ? "https://" + IAConfigManager.M.i.f1985e : com.fyber.inneractive.sdk.config.a.a(property, "clientRequestEnhancedXmlAd");
        InneractiveAdRequest inneractiveAdRequest = this.r;
        com.fyber.inneractive.sdk.serverapi.c cVar = this.u;
        e0 e0Var = new e0(inneractiveAdRequest, cVar);
        e0Var.c = new HashMap();
        e0Var.a("fromSDK", Boolean.toString(true));
        e0Var.a("po", System.getProperty("ia.testEnvironmentConfiguration.number"));
        e0Var.a("secure", (com.fyber.inneractive.sdk.util.p.a() ^ true) || IAConfigManager.M.r ? "1" : "0");
        e0Var.a("spotid", inneractiveAdRequest.getSpotId());
        String property2 = System.getProperty("ia.testEnvironmentConfiguration.chosenUnitId");
        if (property2 == null) {
            property2 = inneractiveAdRequest.getSelectedUnitConfig() == null ? null : ((com.fyber.inneractive.sdk.config.a0) inneractiveAdRequest.getSelectedUnitConfig()).a;
        }
        e0Var.a("uid", property2);
        IAConfigManager iAConfigManager = IAConfigManager.M;
        if (TextUtils.isEmpty(iAConfigManager.o)) {
            e0Var.a("med", iAConfigManager.m);
        } else {
            e0Var.a("med", String.format("%s_%s", iAConfigManager.m, iAConfigManager.o));
        }
        cVar.getClass();
        e0Var.a(InneractiveMediationDefs.GENDER_FEMALE, Integer.toString(372));
        com.fyber.inneractive.sdk.serverapi.b bVar = (com.fyber.inneractive.sdk.serverapi.b) cVar;
        List<Integer> list = com.fyber.inneractive.sdk.serverapi.b.f2723d;
        if (!list.isEmpty()) {
            e0Var.a("protocols", com.fyber.inneractive.sdk.util.l.a(",", list));
        }
        List<String> list2 = com.fyber.inneractive.sdk.serverapi.b.f2724e;
        if (!list2.isEmpty()) {
            e0Var.a("mimes", com.fyber.inneractive.sdk.util.l.b(",", list2));
        }
        List<Integer> list3 = com.fyber.inneractive.sdk.serverapi.b.c;
        if (!list3.isEmpty()) {
            e0Var.a("api", com.fyber.inneractive.sdk.util.l.a(",", list3));
        }
        if (!InneractiveAdManager.isCurrentUserAChild()) {
            e0Var.a("zip", iAConfigManager.j.getZipCode());
        }
        e0Var.a("a", Integer.toString(iAConfigManager.j.getAge()));
        InneractiveUserConfig.Gender gender = iAConfigManager.j.getGender();
        if (InneractiveUserConfig.Gender.MALE.equals(gender)) {
            e0Var.a("g", InneractiveMediationDefs.GENDER_MALE);
        } else if (InneractiveUserConfig.Gender.FEMALE.equals(gender)) {
            e0Var.a("g", InneractiveMediationDefs.GENDER_FEMALE);
        }
        e0Var.a(CampaignEx.JSON_KEY_AD_K, iAConfigManager.k);
        e0Var.a("t", Long.toString(System.currentTimeMillis()));
        e0Var.a("v", bVar.a("2.2.0"));
        Boolean boolA = iAConfigManager.D.a();
        if (boolA != null) {
            e0Var.a("gdpr_privacy_consent", boolA.booleanValue() ? "1" : "0");
        }
        com.fyber.inneractive.sdk.config.d dVar = iAConfigManager.D;
        if (dVar != null) {
            Boolean bool = com.fyber.inneractive.sdk.util.l.a == null ? null : dVar.f1953f;
            if (bool != null) {
                e0Var.a("lgpd_consent", bool.booleanValue() ? "1" : "0");
            }
            Boolean bool2 = iAConfigManager.D.f1954g;
            if (bool2 != null && bool2.booleanValue()) {
                e0Var.a("coppaApplies", "1");
            }
        }
        if (!InneractiveAdManager.isCurrentUserAChild()) {
            String property3 = System.getProperty("ia.testEnvironmentConfiguration.device");
            String str = com.fyber.inneractive.sdk.config.l.b() ? "amazonId" : "aaid";
            if (TextUtils.isEmpty(property3)) {
                property3 = com.fyber.inneractive.sdk.config.l.a();
            }
            e0Var.a(str, property3);
        }
        if (!InneractiveAdManager.isCurrentUserAChild()) {
            e0Var.a("dnt", Boolean.toString(com.fyber.inneractive.sdk.config.l.c()));
        }
        e0Var.a("dml", bVar.b());
        int iC = com.fyber.inneractive.sdk.util.l.c(com.fyber.inneractive.sdk.util.l.e());
        int iC2 = com.fyber.inneractive.sdk.util.l.c(com.fyber.inneractive.sdk.util.l.d());
        if (iC > 0 && iC2 > 0) {
            e0Var.a("w", Integer.toString(iC));
            e0Var.a("h", Integer.toString(iC2));
        }
        int iC3 = com.fyber.inneractive.sdk.util.l.c();
        e0Var.a("o", iC3 == 1 ? TtmlNode.TAG_P : iC3 == 2 ? "l" : "u");
        if (!InneractiveAdManager.isCurrentUserAChild()) {
            e0Var.a("ciso", com.fyber.inneractive.sdk.util.j.g());
            e0Var.a("mcc", bVar.c());
            e0Var.a("mnc", bVar.d());
            e0Var.a("nt", com.fyber.inneractive.sdk.util.f0.e().key);
            e0Var.a("crn", bVar.a());
        }
        e0Var.a(v4.x, o2.f6459e);
        e0Var.a("lng", iAConfigManager.p);
        List<String> list4 = iAConfigManager.q;
        if (list4 != null && !list4.isEmpty()) {
            e0Var.a("in_lng", com.fyber.inneractive.sdk.util.l.b(",", list4));
        }
        e0Var.a("bid", com.fyber.inneractive.sdk.util.l.a.getPackageName());
        e0Var.a("appv", bVar.f());
        com.fyber.inneractive.sdk.config.d dVar2 = iAConfigManager.D;
        dVar2.getClass();
        e0Var.a("gdpr_consent_data", com.fyber.inneractive.sdk.util.l.a == null ? null : dVar2.b);
        com.fyber.inneractive.sdk.config.d dVar3 = iAConfigManager.D;
        dVar3.getClass();
        e0Var.a("us_privacy", com.fyber.inneractive.sdk.util.l.a == null ? null : dVar3.f1952e);
        e0Var.a("mute_video", Boolean.toString(iAConfigManager.l));
        e0Var.a(v4.y, Build.VERSION.RELEASE);
        e0Var.a("ignitep", iAConfigManager.E.c);
        e0Var.a("ignitev", iAConfigManager.E.f2042d);
        HashMap map = new HashMap();
        bVar.a(map, inneractiveAdRequest.getSpotId());
        for (Map.Entry entry : map.entrySet()) {
            e0Var.a((String) entry.getKey(), (String) entry.getValue());
        }
        if (InneractiveAdManager.isCurrentUserAChild()) {
            e0Var.a("childMode", "1");
        }
        Map<String, String> map2 = e0Var.c;
        StringBuilder sb = new StringBuilder(strA);
        boolean z = true;
        for (Map.Entry<String, String> entry2 : map2.entrySet()) {
            sb.append(z ? "?" : o2.i.c);
            sb.append(entry2.getKey());
            sb.append(o2.i.b);
            sb.append(Uri.encode(entry2.getValue()));
            z = false;
        }
        String string = sb.toString();
        if (!this.w) {
            int i2 = IAlog.a;
            IAlog.a(1, null, "%s %s", "AD_REQUEST", string);
            this.w = true;
        }
        return string;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public void a(long j) {
        super.a(j);
        IAlog.a("%s : NetworkRequestAd : set end connection timestamp, total execution time: %d", IAlog.a(this), Integer.valueOf(y()));
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public void b(long j) {
        super.b(j);
        IAlog.a("%s : NetworkRequestAd : set start connection timestamp", IAlog.a(this));
    }

    @Override // com.fyber.inneractive.sdk.network.f0
    public void c(long j) {
        super.c(j);
        IAlog.a("%s : NetworkRequestAd : set end read timestamp, total execution time: %d", IAlog.a(this), Integer.valueOf(y()));
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public void d() {
        super.d();
        IAlog.a("%s : NetworkRequestAd cancel by timeout - resolve request with no fill", IAlog.a(this));
        this.a = true;
        a((Object) null, (Exception) new s0(204, "no fill"), false);
    }

    @Override // com.fyber.inneractive.sdk.network.n
    public StringBuffer e() {
        return this.t;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public int h() {
        return this.x.f2128f;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public o0 i() {
        return o0.HIGH;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public t0 n() {
        com.fyber.inneractive.sdk.network.timeouts.request.a aVar = this.x;
        return new t0(aVar.i, aVar.h);
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean o() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public z r() {
        return z.POST;
    }

    @Override // com.fyber.inneractive.sdk.network.n
    public Map<String, String> t() {
        return this.s;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public byte[] u() {
        byte[] bytes = new byte[0];
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            com.fyber.inneractive.sdk.config.global.s sVar = ((com.fyber.inneractive.sdk.serverapi.b) this.u).a;
            JSONArray jSONArrayD = sVar != null ? sVar.d() : null;
            if (jSONArrayD != null && jSONArrayD.length() > 0) {
                jSONObject2.put("experiments", jSONArrayD);
                jSONObject.put("sdk_experiments", jSONObject2);
            }
            UnitDisplayType unitDisplayTypeA = com.fyber.inneractive.sdk.serverapi.a.a(this.r.getSpotId());
            IAConfigManager iAConfigManager = IAConfigManager.M;
            JSONArray jSONArrayA = iAConfigManager.x.a(unitDisplayTypeA);
            if (jSONArrayA != null && jSONArrayA.length() > 0) {
                jSONObject.put("user_sessions", jSONArrayA);
            }
            int iA = iAConfigManager.u.b.a("dv_enabled_v2", 0, 0);
            if (unitDisplayTypeA != null && iA == 1) {
                com.fyber.inneractive.sdk.dv.g gVarA = iAConfigManager.F.a(unitDisplayTypeA);
                this.v = gVarA;
                if (gVarA != null) {
                    jSONObject.put("gdem_signal", gVarA.a.getQuery());
                }
            }
            bytes = Build.VERSION.SDK_INT >= 19 ? jSONObject.toString().getBytes(StandardCharsets.UTF_8) : jSONObject.toString().getBytes(C.UTF8_NAME);
            IAlog.a("request json body - %s", jSONObject.toString());
        } catch (Exception unused) {
            IAlog.a("Failed building body for ad request!", new Object[0]);
        }
        return bytes;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int v() {
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.network.f0, com.fyber.inneractive.sdk.network.c0
    public Map<String, String> w() {
        int i = com.fyber.inneractive.sdk.config.f.a;
        String property = System.getProperty("ia.testEnvironmentConfiguration.response");
        if (TextUtils.isEmpty(property)) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("mockadnetworkresponseid", property);
        IAlog.a("NetworkRequestAd: Adding mock response header - %s", property);
        return map;
    }

    @Override // com.fyber.inneractive.sdk.network.f0
    public int x() {
        return y();
    }
}
