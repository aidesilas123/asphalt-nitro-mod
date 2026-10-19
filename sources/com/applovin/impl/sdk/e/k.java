package com.applovin.impl.sdk.e;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.p;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends d {

    @Nullable
    private final String aUd;
    protected final com.applovin.impl.sdk.ad.d azA;

    public k(com.applovin.impl.sdk.ad.d dVar, String str, com.applovin.impl.sdk.n nVar) {
        super(str, nVar);
        this.azA = dVar;
        this.aUd = nVar.BI();
    }

    private void a(com.applovin.impl.sdk.d.g gVar) {
        com.applovin.impl.sdk.d.f fVar = com.applovin.impl.sdk.d.f.aSV;
        long jB = gVar.b(fVar);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jB > TimeUnit.MINUTES.toMillis(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aOk)).intValue())) {
            gVar.b(fVar, jCurrentTimeMillis);
            gVar.c(com.applovin.impl.sdk.d.f.aSW);
            gVar.c(com.applovin.impl.sdk.d.f.aSX);
        }
    }

    private Map<String, String> zE() {
        HashMap map = new HashMap(3);
        map.put("AppLovin-Zone-Id", this.azA.mQ());
        if (this.azA.getSize() != null) {
            map.put("AppLovin-Ad-Size", this.azA.getSize().getLabel());
        }
        if (this.azA.getType() != null) {
            map.put("AppLovin-Ad-Type", this.azA.getType().getLabel());
        }
        return map;
    }

    protected Map<String, String> HI() {
        HashMap map = new HashMap(4);
        map.put("zone_id", this.azA.mQ());
        if (this.azA.getSize() != null) {
            map.put("size", this.azA.getSize().getLabel());
        }
        if (this.azA.getType() != null) {
            map.put("require", this.azA.getType().getLabel());
        }
        return map;
    }

    protected abstract d I(JSONObject jSONObject);

    protected void e(int i, String str) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i(this.tag, "Unable to fetch " + this.azA + " ad: server returned " + i);
        }
        if (i == -800) {
            this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTb);
        }
    }

    protected com.applovin.impl.sdk.ad.b getSource() {
        return this.azA.FS() ? com.applovin.impl.sdk.ad.b.APPLOVIN_PRIMARY_ZONE : com.applovin.impl.sdk.ad.b.APPLOVIN_CUSTOM_ZONE;
    }

    protected void q(JSONObject jSONObject) {
        com.applovin.impl.sdk.utils.i.j(jSONObject, this.sdk);
        com.applovin.impl.sdk.utils.i.i(jSONObject, this.sdk);
        com.applovin.impl.sdk.utils.i.k(jSONObject, this.sdk);
        com.applovin.impl.sdk.ad.d.H(jSONObject);
        this.sdk.BO().b(I(jSONObject));
    }

    @Override // java.lang.Runnable
    public void run() {
        p.a aVarGW;
        Map<String, String> map;
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Fetching next ad of zone: " + this.azA);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOJ)).booleanValue() && com.applovin.impl.sdk.utils.u.Lz() && com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "User is connected to a VPN");
        }
        com.applovin.impl.sdk.d.g gVarBR = this.sdk.BR();
        gVarBR.a(com.applovin.impl.sdk.d.f.aSS);
        com.applovin.impl.sdk.d.f fVar = com.applovin.impl.sdk.d.f.aSV;
        if (gVarBR.b(fVar) == 0) {
            gVarBR.b(fVar, System.currentTimeMillis());
        }
        try {
            JSONObject andResetCustomPostBody = this.sdk.BD().getAndResetCustomPostBody();
            String str = "POST";
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOa)).booleanValue()) {
                aVarGW = p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPT)).intValue());
                JSONObject jSONObject = new JSONObject(this.sdk.BV() != null ? this.sdk.BV().a(HI(), false, true) : this.sdk.BS().a(HI(), false, true));
                map = new HashMap<>();
                if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQc)).booleanValue() && !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPY)).booleanValue()) {
                    map.put("rid", UUID.randomUUID().toString());
                }
                if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()) {
                    map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.sdk.getSdkKey());
                }
                JsonUtils.putAll(jSONObject, andResetCustomPostBody);
                andResetCustomPostBody = jSONObject;
            } else {
                p.a aVarGW2 = p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPU)).intValue());
                Map<String, String> mapS = com.applovin.impl.sdk.utils.u.s(this.sdk.BV() != null ? this.sdk.BV().a(HI(), false, false) : this.sdk.BS().a(HI(), false, false));
                if (andResetCustomPostBody == null) {
                    andResetCustomPostBody = null;
                    str = "GET";
                }
                aVarGW = aVarGW2;
                map = mapS;
            }
            if (com.applovin.impl.sdk.utils.u.ak(rQ())) {
                map.putAll(this.sdk.BD().getAndResetCustomQueryParams());
            }
            if (StringUtils.isValidString(this.aUd)) {
                map.put("sts", this.aUd);
            }
            a(gVarBR);
            c.a aVarAT = com.applovin.impl.sdk.network.c.D(this.sdk).cW(zC()).cY(zD()).k(map).cX(str).l(zE()).ad(new JSONObject()).gE(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNP)).intValue()).aP(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNQ)).booleanValue()).aQ(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNR)).booleanValue()).gF(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNO)).intValue()).a(aVarGW).aT(true);
            if (andResetCustomPostBody != null) {
                aVarAT.K(andResetCustomPostBody);
                aVarAT.aU(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQm)).booleanValue());
            }
            final com.applovin.impl.sdk.network.c cVarIg = aVarAT.Ig();
            w<JSONObject> wVar = new w<JSONObject>(cVarIg, this.sdk) { // from class: com.applovin.impl.sdk.e.k.1
                @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
                public void a(int i, String str2, JSONObject jSONObject2) {
                    k.this.e(i, str2);
                    this.sdk.Cs().b(cVarIg.zL(), "fetchAd", i);
                }

                @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void d(JSONObject jSONObject2, int i) {
                    if (i != 200) {
                        k.this.e(i, MaxAdapterError.NO_FILL.getErrorMessage());
                        this.sdk.Cs().b(cVarIg.zL(), "fetchAd", i);
                    } else {
                        JsonUtils.putLong(jSONObject2, "ad_fetch_latency_millis", this.aHv.getLatencyMillis());
                        JsonUtils.putLong(jSONObject2, "ad_fetch_response_size", this.aHv.HL());
                        k.this.q(jSONObject2);
                    }
                }
            };
            wVar.e(com.applovin.impl.sdk.c.b.aLu);
            wVar.f(com.applovin.impl.sdk.c.b.aLv);
            this.sdk.BO().b(wVar);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Unable to fetch ad " + this.azA, th);
            }
            e(0, th.getMessage());
        }
    }

    protected abstract String zC();

    protected abstract String zD();
}
