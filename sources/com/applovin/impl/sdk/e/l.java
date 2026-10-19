package com.applovin.impl.sdk.e;

import android.app.ActivityManager;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.q;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.d;
import com.applovin.impl.sdk.utils.p;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.security.ProviderInstaller;
import com.json.v4;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class l extends d {
    private static final AtomicBoolean aUf = new AtomicBoolean();
    private final int aCS;
    private final Object aUg;
    private a aUh;

    public interface a {
        void G(JSONObject jSONObject);
    }

    private class b extends d {
        public b(com.applovin.impl.sdk.n nVar) {
            super("TaskTimeoutFetchBasicSettings", nVar, true);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (l.this.aUh != null) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "Timing out fetch basic settings...");
                }
                l.this.Q(new JSONObject());
            }
        }
    }

    public l(int i, com.applovin.impl.sdk.n nVar, a aVar) {
        super("TaskFetchBasicSettings", nVar, true);
        this.aUg = new Object();
        this.aCS = i;
        this.aUh = aVar;
    }

    private String KD() {
        return com.applovin.impl.sdk.utils.i.a((String) this.sdk.a(com.applovin.impl.sdk.c.b.aLs), "5.0/i", getSdk());
    }

    private String KE() {
        return com.applovin.impl.sdk.utils.i.a((String) this.sdk.a(com.applovin.impl.sdk.c.b.aLt), "5.0/i", getSdk());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(JSONObject jSONObject) {
        a aVar;
        synchronized (this.aUg) {
            aVar = this.aUh;
            this.aUh = null;
        }
        if (aVar != null) {
            aVar.G(jSONObject);
        }
    }

    protected Map<String, String> EU() {
        HashMap map = new HashMap();
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPZ)).booleanValue() && !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPY)).booleanValue()) {
            map.put("rid", UUID.randomUUID().toString());
        }
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.sdk.getSdkKey());
        }
        Boolean boolB = com.applovin.impl.privacy.a.zP().B(rQ());
        if (boolB != null) {
            map.put(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, boolB.toString());
        }
        Boolean boolB2 = com.applovin.impl.privacy.a.zO().B(rQ());
        if (boolB2 != null) {
            map.put(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, boolB2.toString());
        }
        Boolean boolB3 = com.applovin.impl.privacy.a.zQ().B(rQ());
        if (boolB3 != null) {
            map.put(AppLovinSdkExtraParameterKey.DO_NOT_SELL, boolB3.toString());
        }
        return map;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!com.applovin.impl.sdk.utils.h.Lc() && aUf.compareAndSet(false, true)) {
            try {
                ProviderInstaller.installIfNeeded(com.applovin.impl.sdk.n.getApplicationContext());
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.c(this.tag, "Cannot update security provider", th);
                }
            }
        }
        Map<String, String> mapEU = EU();
        c.a aVarGG = com.applovin.impl.sdk.network.c.D(this.sdk).cW(KD()).cY(KE()).k(mapEU).K(vS()).aU(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQk)).booleanValue()).cX("POST").ad(new JSONObject()).gE(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNV)).intValue()).gG(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNY)).intValue());
        com.applovin.impl.sdk.n nVar = this.sdk;
        com.applovin.impl.sdk.c.b<Integer> bVar = com.applovin.impl.sdk.c.b.aNU;
        final com.applovin.impl.sdk.network.c cVarIg = aVarGG.gF(((Integer) nVar.a(bVar)).intValue()).aR(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOh)).booleanValue()).a(p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPQ)).intValue())).aT(true).Ig();
        this.sdk.BO().a(new b(this.sdk), q.b.TIMEOUT, ((long) ((Integer) this.sdk.a(bVar)).intValue()) + 250);
        w<JSONObject> wVar = new w<JSONObject>(cVarIg, this.sdk, Kh()) { // from class: com.applovin.impl.sdk.e.l.1
            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, JSONObject jSONObject) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "Unable to fetch basic SDK settings: server returned " + i);
                }
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                l.this.Q(jSONObject);
                this.sdk.Cs().b(cVarIg.zL(), "fetchBasicSettings", i);
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void d(JSONObject jSONObject, int i) {
                l.this.Q(jSONObject);
                this.sdk.Cs().b(cVarIg.zL(), "fetchBasicSettings", i);
            }
        };
        wVar.e(com.applovin.impl.sdk.c.b.aLs);
        wVar.f(com.applovin.impl.sdk.c.b.aLt);
        this.sdk.BO().b(wVar);
    }

    protected JSONObject vS() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.applovin.impl.sdk.n nVar = this.sdk;
            com.applovin.impl.sdk.c.b<Boolean> bVar = com.applovin.impl.sdk.c.b.aPY;
            if (((Boolean) nVar.a(bVar)).booleanValue() || ((Boolean) this.sdk.a(bVar)).booleanValue()) {
                jSONObject.put("rid", UUID.randomUUID().toString());
            }
            jSONObject.put("sdk_version", AppLovinSdk.VERSION);
            jSONObject.put("is_cross_promo", this.sdk.Bq());
            jSONObject.put("init_count", this.aCS);
            jSONObject.put("server_installed_at", this.sdk.a(com.applovin.impl.sdk.c.b.aKu));
            if (this.sdk.CK()) {
                jSONObject.put("first_install", true);
            }
            if (!this.sdk.BL()) {
                jSONObject.put("first_install_v2", true);
            }
            JsonUtils.putStringIfValid(jSONObject, "plugin_version", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aOD));
            JsonUtils.putStringIfValid(jSONObject, "mediation_provider", this.sdk.getMediationProvider());
            JsonUtils.putStringIfValid(jSONObject, "mediation_provider_v2", this.sdk.CL());
            jSONObject.put("installed_mediation_adapters", com.applovin.impl.mediation.e.c.f(this.sdk));
            Map<String, Object> mapDI = this.sdk.BV() != null ? this.sdk.BV().DI() : this.sdk.BS().Db();
            jSONObject.put("package_name", mapDI.get("package_name"));
            jSONObject.put("app_version", mapDI.get("app_version"));
            jSONObject.put("test_ads", mapDI.get("test_ads"));
            jSONObject.put("debug", mapDI.get("debug"));
            jSONObject.put("tg", mapDI.get("tg"));
            jSONObject.put("target_sdk", mapDI.get("target_sdk"));
            List<String> initializationAdUnitIds = this.sdk.getSettings().getInitializationAdUnitIds();
            if (initializationAdUnitIds != null && initializationAdUnitIds.size() > 0) {
                List<String> listRemoveTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(initializationAdUnitIds);
                jSONObject.put("ad_unit_ids", CollectionUtils.implode(listRemoveTrimmedEmptyStrings, listRemoveTrimmedEmptyStrings.size()));
            }
            jSONObject.put("IABTCF_TCString", mapDI.get("IABTCF_TCString"));
            jSONObject.put("IABTCF_gdprApplies", mapDI.get("IABTCF_gdprApplies"));
            Object obj = mapDI.get("IABTCF_AddtlConsent");
            if (obj instanceof String) {
                JsonUtils.putStringIfValid(jSONObject, "IABTCF_AddtlConsent", (String) obj);
            }
            jSONObject.put("consent_flow_info", this.sdk.Cl().Ab());
            Map<String, Object> mapCT = this.sdk.BV() != null ? this.sdk.BV().CT() : this.sdk.BS().CT();
            jSONObject.put("platform", mapCT.get("platform"));
            jSONObject.put(v4.x, mapCT.get(v4.x));
            jSONObject.put("locale", mapCT.get("locale"));
            jSONObject.put("brand", mapCT.get("brand"));
            jSONObject.put("brand_name", mapCT.get("brand_name"));
            jSONObject.put("hardware", mapCT.get("hardware"));
            jSONObject.put("model", mapCT.get("model"));
            jSONObject.put("revision", mapCT.get("revision"));
            jSONObject.put("is_tablet", mapCT.get("is_tablet"));
            jSONObject.put("screen_size_in", mapCT.get("screen_size_in"));
            jSONObject.put("supported_abis", mapCT.get("supported_abis"));
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOM)).booleanValue()) {
                jSONObject.put("mtl", this.sdk.Ce().getLastTrimMemoryLevel());
            }
            try {
                ActivityManager activityManager = (ActivityManager) com.applovin.impl.sdk.n.getApplicationContext().getSystemService("activity");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                if (activityManager != null) {
                    activityManager.getMemoryInfo(memoryInfo);
                    jSONObject.put("fm", memoryInfo.availMem);
                    jSONObject.put("tm", memoryInfo.totalMem);
                    jSONObject.put("lmt", memoryInfo.threshold);
                    jSONObject.put("lm", memoryInfo.lowMemory);
                }
            } catch (Throwable unused) {
            }
            Map<String, String> allData = this.sdk.BC().getAllData();
            if (!allData.isEmpty()) {
                jSONObject.put("targeting_data", new JSONObject(allData));
            }
            if (this.sdk.BV() != null) {
                d.a aVarDM = this.sdk.BU().DM();
                jSONObject.put("dnt", aVarDM.KQ());
                jSONObject.put("dnt_code", aVarDM.KS().KT());
                Boolean boolB = com.applovin.impl.privacy.a.zO().B(rQ());
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOz)).booleanValue() && StringUtils.isValidString(aVarDM.KR()) && !Boolean.TRUE.equals(boolB)) {
                    jSONObject.put("idfa", aVarDM.KR());
                }
                q.b bVarDJ = this.sdk.BU().DJ();
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOs)).booleanValue() && bVarDJ != null && !Boolean.TRUE.equals(boolB)) {
                    jSONObject.put("idfv", bVarDJ.mQ());
                    jSONObject.put("idfv_scope", bVarDJ.Et());
                }
            } else {
                d.a aVarDi = this.sdk.BS().Di();
                jSONObject.put("dnt", aVarDi.KQ());
                jSONObject.put("dnt_code", aVarDi.KS().KT());
                Boolean boolB2 = com.applovin.impl.privacy.a.zO().B(rQ());
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOz)).booleanValue() && StringUtils.isValidString(aVarDi.KR()) && !Boolean.TRUE.equals(boolB2)) {
                    jSONObject.put("idfa", aVarDi.KR());
                }
                o.a aVarDj = this.sdk.BS().Dj();
                if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOs)).booleanValue() && aVarDj != null && !Boolean.TRUE.equals(boolB2)) {
                    jSONObject.put("idfv", aVarDj.f11do);
                    jSONObject.put("idfv_scope", aVarDj.aDh);
                }
            }
            String name = this.sdk.getUserSegment().getName();
            if (StringUtils.isValidString(name)) {
                jSONObject.put("user_segment_name", StringUtils.encodeUriString(name));
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOv)).booleanValue()) {
                jSONObject.put("compass_random_token", this.sdk.BA());
            }
            if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOx)).booleanValue()) {
                jSONObject.put("applovin_random_token", this.sdk.BB());
            }
            if (this.sdk.CE().isEnabled()) {
                jSONObject.put("test_mode", true);
            }
            List<String> listXk = this.sdk.CE().xk();
            if (listXk != null && !listXk.isEmpty()) {
                jSONObject.put("test_mode_networks", listXk);
            }
            jSONObject.put("sdk_extra_parameters", new JSONObject(this.sdk.getSettings().getExtraParameters()));
            if (this.aCS > 1) {
                ArrayService arrayServiceCr = this.sdk.Cr();
                if (arrayServiceCr.getIsDirectDownloadEnabled() != null) {
                    jSONObject.put("ah_dd_enabled", arrayServiceCr.getIsDirectDownloadEnabled());
                }
                jSONObject.put("ah_sdk_version_code", arrayServiceCr.getAppHubVersionCode());
                jSONObject.put("ah_random_user_token", StringUtils.emptyIfNull(arrayServiceCr.getRandomUserToken()));
                jSONObject.put("ah_sdk_package_name", StringUtils.emptyIfNull(arrayServiceCr.getAppHubPackageName()));
            }
        } catch (JSONException e2) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to create JSON body", e2);
            }
            this.sdk.Cs().d(this.tag, "createJSONBody", e2);
        }
        return jSONObject;
    }
}
