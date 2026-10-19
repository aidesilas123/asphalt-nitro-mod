package com.applovin.impl.sdk;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.q;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.d;
import com.applovin.impl.sdk.utils.p;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.NativeProtocol;
import com.json.v4;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class p {
    private final q aBm;
    private final n sdk;
    private final Object aDb = new Object();
    private final Object aDk = new Object();
    private final Context E = n.getApplicationContext();
    private final Map<String, Object> aDa = CY();
    private final Map<String, Object> awb = Dc();

    protected p(n nVar) {
        this.sdk = nVar;
        this.aBm = nVar.BU();
    }

    private Map<String, String> CS() {
        return com.applovin.impl.sdk.utils.u.s(a(null, true, false));
    }

    private Map<String, Object> CY() {
        HashMap map = new HashMap(36);
        CollectionUtils.putStringIfValid("kb", this.aBm.Eh(), map);
        CollectionUtils.putBooleanIfValid("gy", Boolean.valueOf(this.aBm.Eg()), map);
        CollectionUtils.putDoubleIfValid("tz_offset", Double.valueOf(this.aBm.Ef()), map);
        CollectionUtils.putLongIfValid("tm", Long.valueOf(this.aBm.Ec().EO()), map);
        CollectionUtils.putLongIfValid("tds", Long.valueOf(this.aBm.Ei()), map);
        CollectionUtils.putStringIfValid("country_code", this.aBm.DY().getCountryCode(), map);
        CollectionUtils.putStringIfValid(v4.s0, this.aBm.DY().ER(), map);
        CollectionUtils.putStringIfValid("mcc", this.aBm.DY().ES(), map);
        CollectionUtils.putStringIfValid("mnc", this.aBm.DY().ET(), map);
        CollectionUtils.putIntegerIfValid("adnsd", Integer.valueOf(this.aBm.Eb().EF()), map);
        CollectionUtils.putIntegerIfValid("dx", Integer.valueOf(this.aBm.Eb().ED()), map);
        CollectionUtils.putIntegerIfValid("dy", Integer.valueOf(this.aBm.Eb().EE()), map);
        CollectionUtils.putFloatIfValid("adns", Float.valueOf(this.aBm.Eb().EI()), map);
        CollectionUtils.putFloatIfValid("xdpi", Float.valueOf(this.aBm.Eb().EG()), map);
        CollectionUtils.putFloatIfValid("ydpi", Float.valueOf(this.aBm.Eb().EH()), map);
        CollectionUtils.putDoubleIfValid("screen_size_in", Double.valueOf(this.aBm.Eb().EJ()), map);
        CollectionUtils.putBooleanIfValid("hdr", this.aBm.Eb().EK(), map);
        CollectionUtils.putStringIfValid("orientation_lock", this.aBm.Ee(), map);
        CollectionUtils.putIntegerIfValid("api_level", Integer.valueOf(Build.VERSION.SDK_INT), map);
        CollectionUtils.putStringIfValid("brand", Build.MANUFACTURER, map);
        CollectionUtils.putStringIfValid("brand_name", Build.BRAND, map);
        CollectionUtils.putStringIfValid("hardware", Build.HARDWARE, map);
        CollectionUtils.putStringIfValid("locale", Locale.getDefault().toString(), map);
        CollectionUtils.putStringIfValid("model", Build.MODEL, map);
        CollectionUtils.putStringIfValid(v4.x, Build.VERSION.RELEASE, map);
        CollectionUtils.putStringIfValid("revision", Build.DEVICE, map);
        CollectionUtils.putStringIfValid("platform", AppLovinSdkUtils.isFireOS(this.E) ? "fireos" : "android", map);
        CollectionUtils.putBooleanIfValid("sim", Boolean.valueOf(AppLovinSdkUtils.isEmulator()), map);
        CollectionUtils.putBooleanIfValid("aida", Boolean.valueOf(com.applovin.impl.sdk.utils.d.KP()), map);
        CollectionUtils.putBooleanIfValid("is_tablet", Boolean.valueOf(AppLovinSdkUtils.isTablet(this.E)), map);
        CollectionUtils.putBooleanIfValid("tv", Boolean.valueOf(AppLovinSdkUtils.isTv(this.E)), map);
        CollectionUtils.putLongIfValid("bt_ms", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()), map);
        CollectionUtils.putLongIfValid("tbalsi_ms", Long.valueOf(this.sdk.CJ() - n.CH()), map);
        CollectionUtils.putIntegerIfValid("pc", Integer.valueOf(Runtime.getRuntime().availableProcessors()), map);
        CollectionUtils.putStringArrayIfValid("supported_abis", this.aBm.DA(), map);
        CollectionUtils.putBooleanIfValid("psase", Boolean.valueOf(aa.M(this.E)), map);
        h(map);
        return map;
    }

    @Nullable
    private Map<String, Object> DH() {
        if (!this.sdk.getSettings().isLocationCollectionEnabled() || !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPk)).booleanValue()) {
            return null;
        }
        HashMap map = new HashMap(4);
        w wVarCq = this.sdk.Cq();
        boolean zFi = wVarCq.Fi();
        CollectionUtils.putBooleanIfValid("loc_services_enabled", Boolean.valueOf(zFi), map);
        if (!zFi) {
            return map;
        }
        CollectionUtils.putBooleanIfValid("loc_auth", Boolean.valueOf(wVarCq.Fh()), map);
        if (!this.sdk.Cq().Fj()) {
            return map;
        }
        double dFl = wVarCq.Fl();
        n nVar = this.sdk;
        com.applovin.impl.sdk.c.b<Integer> bVar = com.applovin.impl.sdk.c.b.aPm;
        CollectionUtils.putStringIfValid("loc_lat", com.applovin.impl.sdk.utils.u.a(dFl, ((Integer) nVar.a(bVar)).intValue()), map);
        CollectionUtils.putStringIfValid("loc_long", com.applovin.impl.sdk.utils.u.a(wVarCq.Fm(), ((Integer) this.sdk.a(bVar)).intValue()), map);
        return map;
    }

    private Map<String, Object> Dc() {
        HashMap map = new HashMap(21);
        CollectionUtils.putStringIfValid(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, this.aBm.Ej().getName(), map);
        CollectionUtils.putStringIfValid("app_version", this.aBm.Ej().getVersion(), map);
        CollectionUtils.putStringIfValid("package_name", this.aBm.Ej().En(), map);
        CollectionUtils.putStringIfValid("vz", this.aBm.Ej().Eo(), map);
        CollectionUtils.putStringIfValid("installer_name", this.aBm.Ej().Ep(), map);
        CollectionUtils.putIntegerIfValid("app_version_code", Integer.valueOf(this.aBm.Ej().getVersionCode()), map);
        CollectionUtils.putIntegerIfValid("target_sdk", Integer.valueOf(this.aBm.Ej().Es()), map);
        CollectionUtils.putLongIfValid("first_install_v3_ms", this.aBm.Ej().Eq(), map);
        CollectionUtils.putLongIfValid("ia", Long.valueOf(this.aBm.Ej().Er()), map);
        CollectionUtils.putLongIfValid("ia_v2", this.aBm.Ej().Em(), map);
        CollectionUtils.putStringIfValid("tg", com.applovin.impl.sdk.utils.t.M(this.sdk), map);
        CollectionUtils.putStringIfValid("sdk_version", AppLovinSdk.VERSION, map);
        CollectionUtils.putStringIfValid("omid_sdk_version", this.sdk.Cp().getSdkVersion(), map);
        CollectionUtils.putStringIfValid("api_did", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aKl), map);
        CollectionUtils.putBooleanIfValid("debug", Boolean.valueOf(com.applovin.impl.sdk.utils.u.b(this.E, this.sdk)), map);
        CollectionUtils.putBooleanIfValid("j8", Boolean.valueOf(n.CI()), map);
        CollectionUtils.putIntegerIfValid("epv", Integer.valueOf(com.applovin.impl.sdk.utils.u.LC()), map);
        CollectionUtils.putLongIfValid("alts_ms", Long.valueOf(n.CH()), map);
        CollectionUtils.putBooleanIfValid("ps_tpg", Boolean.valueOf(aa.O(this.E)), map);
        CollectionUtils.putBooleanIfValid("ps_apg", Boolean.valueOf(aa.P(this.E)), map);
        CollectionUtils.putBooleanIfValid("ps_capg", Boolean.valueOf(aa.Q(this.E)), map);
        CollectionUtils.putBooleanIfValid("ps_aipg", Boolean.valueOf(aa.R(this.E)), map);
        return map;
    }

    private void h(Map<String, Object> map) {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOS)).booleanValue() && com.applovin.impl.sdk.utils.u.Q(this.sdk)) {
            af.A(this.sdk);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOK)).booleanValue() && !map.containsKey("af")) {
            CollectionUtils.putLongIfValid("af", Long.valueOf(this.aBm.DT()), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOL)).booleanValue() && !map.containsKey("font")) {
            CollectionUtils.putFloatIfValid("font", Float.valueOf(this.aBm.DU()), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOR)).booleanValue() && !map.containsKey("sua")) {
            CollectionUtils.putStringIfValid("sua", System.getProperty("http.agent"), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aON)).booleanValue() && !map.containsKey("network_restricted")) {
            CollectionUtils.putBooleanIfValid("network_restricted", Boolean.valueOf(this.aBm.Dh()), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOV)).booleanValue()) {
            CollectionUtils.putBooleanIfValid("is_pc", Boolean.valueOf(this.aBm.DW()), map);
        }
    }

    public Map<String, Object> CT() {
        return this.aDa;
    }

    public Map<String, Object> CU() {
        return this.awb;
    }

    public Map<String, Object> CV() {
        return aL(false);
    }

    public void DG() {
        synchronized (this.aDb) {
            h(this.aDa);
        }
    }

    public Map<String, Object> DI() {
        Map<String, Object> map;
        synchronized (this.aDk) {
            map = CollectionUtils.map(this.awb);
        }
        CollectionUtils.putBooleanIfValid("first_install", Boolean.valueOf(this.sdk.CK()), map);
        CollectionUtils.putBooleanIfValid("first_install_v2", Boolean.valueOf(!this.sdk.BL()), map);
        CollectionUtils.putBooleanIfValid("test_ads", Boolean.valueOf(this.aBm.Da()), map);
        CollectionUtils.putBooleanIfValid("muted", Boolean.valueOf(this.sdk.getSettings().isMuted()), map);
        CollectionUtils.putStringIfValid("user_segment_name", this.sdk.getUserSegment().getName(), map);
        CollectionUtils.putIntegerIfValid("IABTCF_gdprApplies", this.sdk.Cm().Ar(), map);
        CollectionUtils.putStringIfValid("IABTCF_TCString", this.sdk.Cm().As(), map);
        CollectionUtils.putStringIfValid("IABTCF_AddtlConsent", this.sdk.Cm().At(), map);
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOt)).booleanValue()) {
            CollectionUtils.putStringIfValid("cuid", this.sdk.Bz(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOw)).booleanValue()) {
            CollectionUtils.putStringIfValid("compass_random_token", this.sdk.BA(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOy)).booleanValue()) {
            CollectionUtils.putStringIfValid("applovin_random_token", this.sdk.BB(), map);
        }
        if (this.sdk.BW() != null) {
            CollectionUtils.putJsonArrayIfValid("ps_topics", this.sdk.BW().Ft(), map);
        }
        return map;
    }

    public Map<String, Object> De() {
        HashMap map = new HashMap(5);
        CollectionUtils.putStringIfValid("sc", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aKr), map);
        CollectionUtils.putStringIfValid("sc2", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aKs), map);
        CollectionUtils.putStringIfValid("sc3", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aKt), map);
        CollectionUtils.putStringIfValid("server_installed_at", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aKu), map);
        CollectionUtils.putStringIfValid("persisted_data", (String) this.sdk.a(com.applovin.impl.sdk.c.d.aRM), map);
        return map;
    }

    @Nullable
    public Map<String, Object> Df() {
        b.c cVarHK = this.sdk.BQ().HK();
        if (cVarHK == null) {
            return null;
        }
        HashMap map = new HashMap(4);
        map.put("lrm_ts_ms", String.valueOf(cVarHK.HM()));
        map.put("lrm_url", cVarHK.HN());
        map.put("lrm_ct_ms", String.valueOf(cVarHK.HP()));
        map.put("lrm_rs", String.valueOf(cVarHK.HO()));
        return map;
    }

    public Map<String, Object> a(@Nullable Map<String, String> map, boolean z, boolean z2) {
        HashMap map2;
        Map<String, Object> mapAL = aL(z);
        Map<String, Object> mapDI = DI();
        Map<String, Object> mapDf = Df();
        Map<String, Object> mapDH = DH();
        Map<String, String> allData = this.sdk.BC().getAllData();
        Map<String, Object> mapDe = De();
        if (z2) {
            map2 = new HashMap(mapDe.size() + 19);
            map2.put(DeviceRequestsHelper.DEVICE_INFO_PARAM, mapAL);
            map2.put("app_info", mapDI);
            if (mapDf != null) {
                map2.put("connection_info", mapDf);
            }
            if (map != null) {
                map2.put("ad_info", map);
            }
            if (mapDH != null) {
                map2.put("location_info", mapDH);
            }
            if (allData != null) {
                map2.put("targeting_data", allData);
            }
        } else {
            map2 = new HashMap(mapAL.size() + 14 + mapDI.size() + (map != null ? map.size() : 0) + (mapDH != null ? mapDH.size() : 0) + allData.size() + mapDe.size());
            map2.putAll(mapAL);
            map2.putAll(mapDI);
            if (mapDf != null) {
                map2.putAll(mapDf);
            }
            if (map != null) {
                map2.putAll(map);
            }
            if (mapDH != null) {
                map2.putAll(mapDH);
            }
            if (!allData.isEmpty()) {
                map2.putAll(allData);
            }
        }
        map2.putAll(mapDe);
        map2.put("accept", "custom_size,launch_app,video");
        map2.put("format", "json");
        CollectionUtils.putStringIfValid("mediation_provider", this.sdk.getMediationProvider(), map2);
        CollectionUtils.putStringIfValid("mediation_provider_v2", this.sdk.CL(), map2);
        CollectionUtils.putStringIfValid("plugin_version", (String) this.sdk.a(com.applovin.impl.sdk.c.b.aOD), map2);
        CollectionUtils.putLongIfValid("tssf_ms", Long.valueOf(this.sdk.By()), map2);
        CollectionUtils.putStringIfValid("rid", UUID.randomUUID().toString(), map2);
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()) {
            CollectionUtils.putStringIfValid(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.sdk.getSdkKey(), map2);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPn)).booleanValue()) {
            com.applovin.impl.sdk.d.g gVarBR = this.sdk.BR();
            CollectionUtils.putLongIfValid("li", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aST)), map2);
            CollectionUtils.putLongIfValid("si", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aSW)), map2);
            CollectionUtils.putLongIfValid("mad", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aSU)), map2);
            CollectionUtils.putLongIfValid("msad", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aSX)), map2);
            CollectionUtils.putLongIfValid("pf", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTb)), map2);
            CollectionUtils.putLongIfValid("mpf", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTi)), map2);
            CollectionUtils.putLongIfValid("gpf", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTc)), map2);
            CollectionUtils.putLongIfValid("asoac", Long.valueOf(gVarBR.b(com.applovin.impl.sdk.d.f.aTg)), map2);
        }
        return map2;
    }

    public Map<String, Object> aL(boolean z) {
        Map<String, Object> map;
        d.a aVarDM;
        synchronized (this.aDb) {
            map = CollectionUtils.map(this.aDa);
        }
        if (z) {
            aVarDM = this.aBm.DK();
            if (aVarDM != null) {
                this.aBm.DN();
            } else if (com.applovin.impl.sdk.utils.u.Lx()) {
                aVarDM = new d.a();
                map.put("inc", Boolean.TRUE);
            } else {
                aVarDM = this.sdk.BU().DM();
            }
        } else {
            aVarDM = this.sdk.BU().DM();
        }
        CollectionUtils.putBooleanIfValid(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, com.applovin.impl.privacy.a.zP().B(this.E), map);
        CollectionUtils.putBooleanIfValid(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, com.applovin.impl.privacy.a.zO().B(this.E), map);
        CollectionUtils.putBooleanIfValid(AppLovinSdkExtraParameterKey.DO_NOT_SELL, com.applovin.impl.privacy.a.zQ().B(this.E), map);
        CollectionUtils.putBooleanIfValid("dnt", Boolean.valueOf(aVarDM.KQ()), map);
        CollectionUtils.putStringIfValid("dnt_code", aVarDM.KS().KT(), map);
        CollectionUtils.putStringIfValid("idfa", aVarDM.KR(), map);
        q.b bVarDJ = this.aBm.DJ();
        if (bVarDJ != null) {
            CollectionUtils.putStringIfValid("idfv", bVarDJ.mQ(), map);
            CollectionUtils.putIntegerIfValid("idfv_scope", Integer.valueOf(bVarDJ.Et()), map);
        }
        CollectionUtils.putIntegerIfValid("volume", z ? this.aBm.DL() : this.aBm.DZ().Ev(), map);
        CollectionUtils.putIntegerIfValid("lpm", this.aBm.DX().EP(), map);
        CollectionUtils.putIntegerIfValid("sb", this.aBm.DS(), map);
        CollectionUtils.putIntegerIfValid("mute_switch", Integer.valueOf(this.aBm.DZ().Eu()), map);
        CollectionUtils.putLongIfValid(v4.v0, this.aBm.DP(), map);
        CollectionUtils.putStringIfValid("network", this.aBm.DO(), map);
        CollectionUtils.putBooleanIfValid("ma", this.aBm.DZ().Ex(), map);
        CollectionUtils.putBooleanIfValid("spo", this.aBm.DZ().Ey(), map);
        CollectionUtils.putBooleanIfValid("aif", Boolean.valueOf(!this.sdk.Ce().isApplicationPaused()), map);
        CollectionUtils.putLongIfValid("af_ts_ms", Long.valueOf(this.sdk.Ce().getAppEnteredForegroundTimeMillis()), map);
        CollectionUtils.putLongIfValid("ab_ts_ms", Long.valueOf(this.sdk.Ce().getAppEnteredBackgroundTimeMillis()), map);
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOH)).booleanValue()) {
            CollectionUtils.putLongIfValid("fm", this.aBm.Ec().EL(), map);
            CollectionUtils.putLongIfValid("lmt", this.aBm.Ec().EM(), map);
            CollectionUtils.putBooleanIfValid("lm", this.aBm.Ec().EN(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOI)).booleanValue()) {
            CollectionUtils.putIntegerIfValid("rat", this.aBm.DY().EQ(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOF)).booleanValue()) {
            CollectionUtils.putStringIfValid("so", this.aBm.DZ().Ew(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOJ)).booleanValue()) {
            CollectionUtils.putBooleanIfValid("vs", Boolean.valueOf(this.aBm.DV()), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOT)).booleanValue()) {
            CollectionUtils.putFloatIfValid("da", this.aBm.DQ(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOU)).booleanValue()) {
            CollectionUtils.putFloatIfValid("dm", this.aBm.DR(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOE)).booleanValue()) {
            CollectionUtils.putIntegerIfValid("act", this.aBm.Ea().EA(), map);
            CollectionUtils.putIntegerIfValid("acm", this.aBm.Ea().Ez(), map);
            CollectionUtils.putBooleanIfValid("sowpie", this.aBm.Ea().EB(), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOP)).booleanValue()) {
            CollectionUtils.putBooleanIfValid("adr", Boolean.valueOf(this.aBm.Dy()), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOM)).booleanValue()) {
            CollectionUtils.putIntegerIfValid("mtl", Integer.valueOf(this.sdk.Ce().getLastTrimMemoryLevel()), map);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aOS)).booleanValue() && com.applovin.impl.sdk.utils.u.Q(this.sdk)) {
            af.A(this.sdk);
            CollectionUtils.putStringIfValid(v4.R, af.Fy(), map);
        }
        ArrayService arrayServiceCr = this.sdk.Cr();
        if (arrayServiceCr.isAppHubInstalled()) {
            if (arrayServiceCr.getIsDirectDownloadEnabled() != null) {
                CollectionUtils.putBooleanIfValid("ah_dd_enabled", arrayServiceCr.getIsDirectDownloadEnabled(), map);
            }
            CollectionUtils.putLongIfValid("ah_sdk_version_code", Long.valueOf(arrayServiceCr.getAppHubVersionCode()), map);
            CollectionUtils.putStringIfValid("ah_random_user_token", StringUtils.emptyIfNull(arrayServiceCr.getRandomUserToken()), map);
            CollectionUtils.putStringIfValid("ah_sdk_package_name", StringUtils.emptyIfNull(arrayServiceCr.getAppHubPackageName()), map);
        }
        return map;
    }

    protected String getBidToken() {
        String strEncodeToString = Base64.encodeToString(new JSONObject(CS()).toString().getBytes(Charset.defaultCharset()), 2);
        return ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPN)).booleanValue() ? com.applovin.impl.sdk.utils.p.a(strEncodeToString, com.applovin.impl.sdk.utils.u.N(this.sdk), p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPO)).intValue()), this.sdk.getSdkKey(), this.sdk) : strEncodeToString;
    }
}
