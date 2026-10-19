package com.json.mediationsdk;

import android.content.Context;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.json.AuctionRequestInstanceInfo;
import com.json.a4;
import com.json.cb;
import com.json.d0;
import com.json.d1;
import com.json.e5;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.j1;
import com.json.k0;
import com.json.k8;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.demandOnly.p;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.utils.IronSourceAES;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.o8;
import com.json.qc;
import com.json.v0;
import com.json.v4;
import com.json.w3;
import com.json.z0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    private static d a = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f6253d = "auctionId";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f6254e = "armData";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f6255f = "isAdUnitCapped";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f6256g = "settings";
    public static final String g0 = "isOneFlow";
    public static final String h = "waterfall";
    public static final String h0 = "dlpl";
    public static final String i = "genericParams";
    public static final String i0 = "mt";
    public static final String j = "configurations";
    public static final String j0 = "adUnit";
    public static final String k = "instances";
    public static final String k0 = "isDemandOnly";
    public static final String l = "${AUCTION_LOSS}";
    public static final String l0 = "doNotEncryptResponse";
    public static final String m = "${AUCTION_MBR}";
    public static final String n = "${AUCTION_PRICE}";
    public static final String o = "${DYNAMIC_DEMAND_SOURCE}";
    public static final String o0 = "parallelLoad";
    public static final String p = "${INSTANCE}";
    public static final String p0 = "bidderExclusive";
    public static final String q = "${INSTANCE_TYPE}";
    public static final String q0 = "showPriorityEnabled";
    public static final String r = "${PLACEMENT_NAME}";
    public static final boolean r0 = false;
    private final AtomicBoolean b = new AtomicBoolean(false);
    private final e5 c = e9.h().c();

    public static class a {
        private String a;
        private List<d1> b;
        private d1 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private JSONObject f6257d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private JSONObject f6258e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f6259f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f6260g;
        private v0 h;

        public a(String str) {
            this.a = str;
        }

        public p a(String str) {
            v0 v0Var = this.h;
            return v0Var != null ? v0Var.a(str) : new p.b();
        }

        public String a() {
            return this.a;
        }

        public JSONObject b() {
            return this.f6258e;
        }

        public int c() {
            return this.f6259f;
        }

        public String d() {
            return this.f6260g;
        }

        public d1 e() {
            return this.c;
        }

        public JSONObject f() {
            return this.f6257d;
        }

        public v0 g() {
            return this.h;
        }

        public List<d1> h() {
            return this.b;
        }
    }

    static class b implements Runnable {
        private String a;
        private String b;
        private String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.a + ";" + this.b + ";" + this.c;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.c).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setReadTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                String responseMessage = httpURLConnection.getResponseMessage();
                httpURLConnection.disconnect();
                if (responseCode == 200 || responseCode == 204) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
                jSONObject.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, str);
                jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, responseCode);
                jSONObject.put("reason", responseMessage);
                cb.i().a(new a4(IronSourceConstants.TROUBLESHOOTING_FAILED_TO_SEND_AUCTION_URL, jSONObject));
            } catch (Exception e2) {
                e2.printStackTrace();
                IronLog.INTERNAL.error("Send auction url failed with params - " + str + ";" + e2.getMessage());
            }
        }
    }

    private enum c {
        NOT_SECURE,
        SECURE
    }

    private c b() {
        c cVar = c.SECURE;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                return cVar;
            }
        } else if (i2 >= 23) {
            if (!((ContextProvider.getInstance().getApplicationContext().getApplicationInfo().flags & 134217728) != 0)) {
                return cVar;
            }
        }
        return c.NOT_SECURE;
    }

    public static d c() {
        return a;
    }

    private String c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        double d2 = Double.parseDouble(str);
        return Double.parseDouble(str2) == 0.0d ? "" : String.valueOf(Math.round((d2 / r7) * 1000.0d) / 1000.0d);
    }

    private JSONObject h(JSONObject jSONObject, List<String> list) {
        if (list.isEmpty()) {
            list = qc.y1;
        }
        return n(jSONObject, list);
    }

    private String k() {
        return Locale.getDefault().getLanguage();
    }

    private JSONObject l(JSONObject jSONObject, List<String> list) {
        return list.isEmpty() ? jSONObject : n(jSONObject, list);
    }

    private JSONObject m(JSONObject jSONObject, List<String> list) {
        String strD;
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    strD = d(qc.z1, next);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if ((list.isEmpty() && !qc.y1.contains(strD) && !strD.startsWith(qc.r1)) || list.contains(strD)) {
                    jSONObject2.put(strD, jSONObject.opt(next));
                }
            }
        }
        return jSONObject2;
    }

    private JSONObject n(JSONObject jSONObject, List<String> list) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    if (list.contains(next)) {
                        jSONObject2.put(next, jSONObject.opt(next));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return jSONObject2;
    }

    public d1 a(String str, List<d1> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).c().equals(str)) {
                return list.get(i2);
            }
        }
        return null;
    }

    public String a(String str, int i2, d1 d1Var, String str2, String str3, String str4) {
        String strH = d1Var.h();
        return a(str, d1Var.c(), i2, c().d(d1Var.j()), strH, c().c(strH, str2), str3, str4);
    }

    public String a(String str, String str2, int i2, String str3, String str4, String str5, String str6, String str7) {
        return str.replace(n, str4).replace(l, str6).replace(m, str5).replace(p, str2).replace(q, Integer.toString(i2)).replace(o, str3).replace(r, str7);
    }

    public JSONObject a(String str) {
        try {
            return new JSONObject(IronSourceAES.decode(w3.b().c(), str));
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(String str, String str2, String str3) {
        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new b(str, str2, str3));
    }

    public void a(JSONObject jSONObject, boolean z) {
        if (jSONObject == null || jSONObject.length() <= 0 || TextUtils.isEmpty(jSONObject.optString(v4.M0)) || !this.b.compareAndSet(false, true)) {
            return;
        }
        cb.i().a(new a4(IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED, IronSourceUtils.getMediationAdditionalData(z, true, -1)));
    }

    public a b(JSONObject jSONObject) throws JSONException {
        String strOptString = jSONObject.optString("auctionId");
        if (TextUtils.isEmpty(strOptString)) {
            throw new JSONException("Invalid auction response - auction id is missing");
        }
        a aVar = new a(strOptString);
        if (jSONObject.has("settings")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("settings");
            aVar.c = new d1(jSONObject2);
            jSONObjectOptJSONObject = jSONObject2.has(f6254e) ? jSONObject2.optJSONObject(f6254e) : null;
            if (jSONObject2.has("genericParams")) {
                aVar.f6257d = jSONObject2.optJSONObject("genericParams");
            }
            if (jSONObject2.has(j)) {
                aVar.f6258e = jSONObject2.optJSONObject(j);
            }
            if (jSONObject2.has(k)) {
                aVar.h = new v0.a(jSONObject2.optJSONObject(k));
            }
        }
        aVar.b = new ArrayList();
        if (jSONObject.has(h)) {
            JSONArray jSONArray = jSONObject.getJSONArray(h);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                d1 d1Var = new d1(jSONArray.getJSONObject(i2), i2, jSONObjectOptJSONObject);
                if (!d1Var.l()) {
                    aVar.f6259f = 1002;
                    aVar.f6260g = "waterfall " + i2;
                    IronLog.INTERNAL.verbose("AuctionResponseItem " + i2 + " not valid - parsing error");
                    throw new JSONException("invalid response");
                }
                aVar.b.add(d1Var);
            }
        }
        return aVar;
    }

    public String b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.has("adMarkup") ? jSONObject.getString("adMarkup") : str;
        } catch (JSONException e2) {
            e2.printStackTrace();
            IronLog.INTERNAL.error("exception " + e2.getMessage());
            return str;
        }
    }

    public Map<String, String> c(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("params")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("params");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = jSONObject2.get(next);
                    if (obj instanceof String) {
                        map.put(next, (String) obj);
                    }
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            IronLog.INTERNAL.error("exception " + e2.getMessage());
        }
        return map;
    }

    public String d(String str) {
        String string = "";
        try {
            if (TextUtils.isEmpty(str) || !k8.a(str)) {
                return "";
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("params")) {
                return "";
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("params");
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose("parameters = " + jSONObject2);
            if (!jSONObject2.has(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID)) {
                return "";
            }
            string = jSONObject2.getString(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID);
            ironLog.verbose("demand source = " + string);
            return string;
        } catch (JSONException e2) {
            e2.printStackTrace();
            IronLog.INTERNAL.error("exception " + e2.getMessage());
            return string;
        }
    }

    String d(HashMap<String, String> map, String str) {
        return map.containsKey(str) ? map.get(str) : str;
    }

    String e(JSONObject jSONObject, String str) {
        if (!jSONObject.has(str)) {
            return str;
        }
        int i2 = 0;
        String str2 = str;
        while (jSONObject.has(str2)) {
            i2++;
            str2 = str + "_" + i2;
        }
        return str2;
    }

    JSONObject f(Context context, Map<String, Object> map, List<String> list, h hVar, int i2, String str, com.json.mediationsdk.utils.a aVar, ISBannerSize iSBannerSize, JSONObject jSONObject, boolean z, boolean z2) throws JSONException {
        String str2;
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> it = map.keySet().iterator();
        while (true) {
            str2 = "";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("instanceType", 2);
            jSONObject3.put("biddingAdditionalData", new JSONObject((Map) map.get(next)));
            jSONObject3.put("performance", hVar != null ? hVar.a(next) : "");
            if (z2) {
                jSONObject3.put("test", 1);
            }
            jSONObject2.put(next, jSONObject3);
        }
        if (list != null) {
            for (String str3 : list) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("instanceType", 1);
                jSONObject4.put("performance", hVar != null ? hVar.a(str3) : "");
                jSONObject2.put(str3, jSONObject4);
            }
        }
        ConcurrentHashMap<String, List<String>> concurrentHashMapC = com.json.mediationsdk.c.b().c();
        concurrentHashMapC.putAll(o8.b().c());
        JSONObject jSONObject5 = new JSONObject();
        for (Map.Entry<String, List<String>> entry : concurrentHashMapC.entrySet()) {
            jSONObject5.put(entry.getKey(), TextUtils.join(",", entry.getValue()));
        }
        a(new z0(null).a(), false);
        JSONObject jSONObject6 = new JSONObject();
        String strQ = p.o().q();
        if (!TextUtils.isEmpty(strQ)) {
            jSONObject6.put("applicationUserId", strQ);
        }
        Boolean boolK0 = p.o().K0();
        if (boolK0 != null) {
            jSONObject6.put("consent", boolK0.booleanValue() ? 1 : 0);
        }
        jSONObject6.put("mobileCarrier", this.c.j(context));
        jSONObject6.put("connectionType", IronSourceUtils.getConnectionType(context));
        jSONObject6.put(qc.p0, "android");
        jSONObject6.put(qc.D0, context.getResources().getConfiguration().screenWidthDp);
        jSONObject6.put(qc.E0, context.getResources().getConfiguration().screenHeightDp);
        jSONObject6.put("deviceOSVersion", Build.VERSION.SDK_INT + "(" + Build.VERSION.RELEASE + ")");
        jSONObject6.put("deviceModel", Build.MODEL);
        jSONObject6.put(qc.m0, Build.MANUFACTURER);
        jSONObject6.put("bundleId", context.getPackageName());
        jSONObject6.put("appVersion", k0.b(context, context.getPackageName()));
        jSONObject6.put(qc.Y0, new Date().getTime());
        jSONObject6.put(v4.v0, IronSourceUtils.getFirstSession(context) ? 1 : 0);
        jSONObject6.put("browserUserAgent", this.c.s());
        jSONObject6.put("deviceType", IronSourceUtils.getDeviceType(context));
        jSONObject6.put("deviceLang", k());
        jSONObject6.put("secure", b().ordinal());
        if (iSBannerSize != null) {
            jSONObject6.put(j1.u, iSBannerSize.getDescription());
            jSONObject6.put("bannerWidth", iSBannerSize.getWidth());
            jSONObject6.put("bannerHeight", iSBannerSize.getHeight());
        }
        String strP = this.c.p(context);
        if (TextUtils.isEmpty(strP)) {
            strP = this.c.J(context);
            if (!TextUtils.isEmpty(strP)) {
                str2 = IronSourceConstants.TYPE_UUID;
            }
        } else {
            str2 = IronSourceConstants.TYPE_GAID;
        }
        if (!TextUtils.isEmpty(strP)) {
            jSONObject6.put(qc.b, strP);
            jSONObject6.put(qc.i1, str2);
        }
        String strA = this.c.a(context);
        if (!TextUtils.isEmpty(strA)) {
            jSONObject6.put("isLimitAdTrackingEnabled", strA);
        }
        String strD = this.c.D(context);
        if (!TextUtils.isEmpty(strD)) {
            jSONObject6.put("asid", strD);
        }
        String strS = this.c.s(context);
        if (!TextUtils.isEmpty(strS)) {
            jSONObject6.put("auid", strS);
        }
        JSONObject jSONObject7 = new JSONObject();
        jSONObject7.put("applicationKey", p.o().p());
        jSONObject7.put("SDKVersion", IronSourceUtils.getSDKVersion());
        jSONObject7.put("clientParams", jSONObject6);
        jSONObject7.put("sessionDepth", i2);
        jSONObject7.put("sessionId", str);
        jSONObject7.put(k, jSONObject2);
        jSONObject7.put("auctionData", aVar.a());
        jSONObject7.put("metaData", jSONObject5);
        if (jSONObject != null) {
            jSONObject7.put(v4.K0, jSONObject);
        }
        if (z) {
            jSONObject7.put("testSuite", 1);
        }
        return jSONObject7;
    }

    JSONObject g(AuctionRequestParams iVar) throws JSONException {
        boolean z;
        boolean z2;
        ISBannerSize iSBannerSize;
        IronSource.AD_UNIT ad_unitB = iVar.b();
        boolean zQ = iVar.getIsEncryptedResponse();
        Map<String, Object> mapE = iVar.e();
        List<String> listI = iVar.i();
        h hVarC = iVar.getAuctionHistory();
        int iL = iVar.getSessionDepth();
        ISBannerSize iSBannerSizeD = iVar.getCom.ironsource.j1.u java.lang.String();
        IronSourceSegment ironSourceSegmentK = iVar.getSegment();
        boolean zM = iVar.getTestSuiteLaunched();
        boolean zN = iVar.getUseTestAds();
        ArrayList<AuctionRequestInstanceInfo> arrayListH = iVar.h();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> it = mapE.keySet().iterator();
        while (true) {
            z = zM;
            z2 = zQ;
            String strA = "";
            iSBannerSize = iSBannerSizeD;
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            Iterator<String> it2 = it;
            JSONObject jSONObject3 = new JSONObject();
            IronSourceSegment ironSourceSegment = ironSourceSegmentK;
            jSONObject3.put(v4.h0, 2);
            jSONObject3.put(v4.Y, new JSONObject((Map) mapE.get(next)));
            if (hVarC != null) {
                strA = hVarC.a(next);
            }
            jSONObject3.put(v4.k0, strA);
            jSONObject3.put("ts", zN ? 1 : 0);
            jSONObject2.put(next, jSONObject3);
            zM = z;
            zQ = z2 ? 1 : 0;
            iSBannerSizeD = iSBannerSize;
            it = it2;
            ironSourceSegmentK = ironSourceSegment;
        }
        IronSourceSegment ironSourceSegment2 = ironSourceSegmentK;
        for (String str : listI) {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(v4.h0, 1);
            jSONObject4.put(v4.k0, hVarC != null ? hVarC.a(str) : "");
            jSONObject2.put(str, jSONObject4);
        }
        for (AuctionRequestInstanceInfo auctionRequestInstanceInfo : arrayListH) {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(v4.h0, auctionRequestInstanceInfo.e() ? 2 : 1);
            Map<String, Object> mapF = auctionRequestInstanceInfo.f();
            if (!mapF.isEmpty()) {
                jSONObject5.put(v4.Y, new JSONObject(mapF));
            }
            jSONObject5.put(v4.k0, hVarC != null ? hVarC.a(auctionRequestInstanceInfo.g()) : "");
            jSONObject5.put("ts", zN ? 1 : 0);
            if (!auctionRequestInstanceInfo.getPlumbus().isEmpty()) {
                jSONObject5.put(h0, auctionRequestInstanceInfo.getPlumbus());
            }
            jSONObject2.put(auctionRequestInstanceInfo.g(), jSONObject5);
        }
        jSONObject.put(v4.g0, jSONObject2);
        if (iVar.getIsOneFlow()) {
            jSONObject.put(v4.Y0, 1);
        }
        if (iVar.getIsDemandOnly()) {
            jSONObject.put("do", 1);
        }
        JSONObject jSONObjectA = new z0(d0.a(ad_unitB)).a();
        a(jSONObjectA, false);
        jSONObjectA.put(v4.i0, iL);
        jSONObjectA.put(v4.j0, b().ordinal());
        if (ironSourceSegment2 != null) {
            jSONObjectA.put(v4.K0, ironSourceSegment2.toJson());
        }
        jSONObject.put(v4.d0, jSONObjectA);
        if (iSBannerSize != null) {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put(v4.a0, iSBannerSize.getDescription());
            jSONObject6.put(v4.c0, iSBannerSize.getWidth());
            jSONObject6.put(v4.b0, iSBannerSize.getHeight());
            jSONObject.put(v4.Z, jSONObject6);
        }
        jSONObject.put(v4.X, ad_unitB.toString());
        jSONObject.put(v4.e0, !z2 ? 1 : 0);
        Object objRemove = jSONObjectA.remove(v4.U0);
        if (objRemove != null) {
            jSONObject.put(v4.U0, objRemove);
        }
        if (z) {
            jSONObject.put(v4.S0, 1);
        }
        return jSONObject;
    }

    JSONObject i(JSONObject jSONObject, JSONObject jSONObject2, List<String> list) {
        JSONObject jSONObjectH = h(c0.f().k(), list);
        j(jSONObjectH, m(jSONObject, list));
        j(jSONObjectH, l(jSONObject2, list));
        return jSONObjectH;
    }

    void j(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                jSONObject.put(e(jSONObject, next), jSONObject2.opt(next));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
