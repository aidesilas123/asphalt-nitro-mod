package com.mbridge.msdk.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.appevents.UserDataStore;
import com.facebook.share.internal.ShareConstants;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.o;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.foundation.tools.u;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Setting.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public static int a = 1500;
    private String M;
    private String X;
    private Map<String, a> aF;
    private b aH;
    private String aL;
    private String aM;
    private ArrayList<Integer> aQ;
    private HashMap<String, String> aR;
    private String aX;
    private com.mbridge.msdk.c.a am;
    private com.mbridge.msdk.c.b an;
    private JSONObject ap;
    private JSONArray aq;
    private long at;
    private int au;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6768d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f6770f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, String> f6771g;
    private boolean h;
    private long i;
    private boolean j;
    private long k;
    private long l;
    private long m;
    private boolean n;
    private int o;
    private int p;
    private long q;
    private int r;
    private int s;
    private String t;
    private int u;
    private List<com.mbridge.msdk.foundation.entity.a> v;
    private int z;
    private int b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6769e = 86400;
    private boolean w = false;
    private int x = 3;
    private boolean y = true;
    private String A = com.mbridge.msdk.foundation.same.net.g.d.a().f7148e;
    private String B = com.mbridge.msdk.foundation.same.net.g.d.a().f7149f;
    private int C = 120;
    private String D = "";
    private String E = "";
    private String F = "1.0";
    private int G = 1;
    private int H = 1;
    private int I = 1;
    private int J = 0;
    private int K = 1;
    private int L = 0;
    private int N = 30;
    private int O = 5;
    private int P = 0;
    private int Q = 0;
    private int R = 9377;
    private int S = 0;
    private int T = 0;
    private int U = 0;
    private int V = 2;
    private int W = 10;
    private boolean Y = false;
    private JSONArray Z = new JSONArray();
    private JSONArray aa = new JSONArray();
    private int ab = 0;
    private int ac = 0;
    private int ad = 0;
    private int ae = 3;
    private int af = 600;
    private int ag = 10;
    private int ah = 8000;
    private int ai = 8000;
    private int aj = IronSourceConstants.RV_AUCTION_REQUEST;
    private int ak = a;
    private int al = 1;
    private String ao = "";
    private boolean ar = false;
    private List<Integer> as = new ArrayList();
    private String av = "";
    private String aw = "";
    private String ax = "";
    private String ay = "";
    private String az = "";
    private String aA = "";
    private String aB = "";
    private String aC = "";
    private String aD = "";
    private String aE = "";
    private int aG = 0;
    private int aI = 0;
    private String aJ = "";
    private String aK = "";
    private int aN = 0;
    private boolean aO = false;
    private int aP = 120;
    private int aS = 0;
    private int aT = 0;
    private int aU = 0;
    private int aV = 0;
    private int aW = 0;
    private int aY = 1;
    private String aZ = "";

    /* JADX INFO: compiled from: Setting.java */
    public static class a {
        private List<String> a;
        private List<String> b;
        private List<String> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<String> f6772d;

        public final List<String> a() {
            return this.a;
        }

        public final void a(JSONObject jSONObject) {
            try {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("x");
                if (jSONArrayOptJSONArray != null) {
                    this.a = o.a(jSONArrayOptJSONArray);
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("y");
                if (jSONArrayOptJSONArray2 != null) {
                    this.b = o.a(jSONArrayOptJSONArray2);
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("width");
                if (jSONArrayOptJSONArray3 != null) {
                    this.c = o.a(jSONArrayOptJSONArray3);
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("height");
                if (jSONArrayOptJSONArray4 != null) {
                    this.f6772d = o.a(jSONArrayOptJSONArray4);
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }

        public final List<String> b() {
            return this.b;
        }

        public final List<String> c() {
            return this.c;
        }

        public final List<String> d() {
            return this.f6772d;
        }
    }

    /* JADX INFO: compiled from: Setting.java */
    public static class b {
        private String a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f6773d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f6774e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private JSONArray f6775f;

        public static b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            b bVar = new b();
            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
            bVar.a = jSONObject.optString("title", contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_title", TypedValues.Custom.S_STRING)));
            bVar.b = jSONObject.optString("cancel", contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_close_close", TypedValues.Custom.S_STRING)));
            bVar.c = jSONObject.optString("submit", contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_close_submit", TypedValues.Custom.S_STRING)));
            bVar.f6773d = jSONObject.optString("submit_notice", contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_submit_notice", TypedValues.Custom.S_STRING)));
            bVar.f6774e = jSONObject.optString(ShareConstants.WEB_DIALOG_PARAM_PRIVACY, contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_privacy_des", TypedValues.Custom.S_STRING)));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(AppLovinEventTypes.USER_VIEWED_CONTENT);
            bVar.f6775f = jSONArrayOptJSONArray;
            if (jSONArrayOptJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                bVar.f6775f = jSONArray;
                jSONArray.put(contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_content_not_play", TypedValues.Custom.S_STRING)));
                bVar.f6775f.put(contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_content_sound_problems", TypedValues.Custom.S_STRING)));
                bVar.f6775f.put(contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_content_misleading", TypedValues.Custom.S_STRING)));
                bVar.f6775f.put(contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_content_fraud", TypedValues.Custom.S_STRING)));
                bVar.f6775f.put(contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_content_por_violence", TypedValues.Custom.S_STRING)));
                bVar.f6775f.put(contextG.getString(t.a(contextG, "mbridge_cm_feedback_dialog_content_other", TypedValues.Custom.S_STRING)));
            }
            return bVar;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final String d() {
            return this.f6773d;
        }

        public final String e() {
            return this.f6774e;
        }

        public final JSONArray f() {
            return this.f6775f;
        }
    }

    public static String a(Context context, String str) {
        try {
            e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB != null && eVarB.f6771g != null) {
                String host = Uri.parse(str).getHost();
                Iterator<Map.Entry<String, String>> it = eVarB.f6771g.entrySet().iterator();
                while (it.hasNext()) {
                    String key = it.next().getKey();
                    if (!TextUtils.isEmpty(host) && host.contains(key)) {
                        String str2 = eVarB.f6771g.get(key);
                        return TextUtils.isEmpty(str2) ? "" : str2.replace("{gaid}", com.mbridge.msdk.foundation.tools.g.a());
                    }
                }
                return "";
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static e c(String str) {
        e eVar;
        FastKV fastKVBuild;
        ArrayList arrayList;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            e eVar2 = new e();
            try {
                eVar2.ap = jSONObject;
                eVar2.c = jSONObject.optString("cc");
                eVar2.t = jSONObject.optString("mv_wildcard", "<mvpackage>mbridge</mvpackage>");
                eVar2.f6768d = jSONObject.optInt("cfc");
                eVar2.f6769e = jSONObject.optLong("getpf");
                eVar2.i = jSONObject.optLong("current_time");
                eVar2.h = jSONObject.optBoolean("cfb");
                eVar2.l = jSONObject.optLong("awct");
                eVar2.k = jSONObject.optLong(CampaignEx.JSON_KEY_PLCT) == 0 ? 3600L : jSONObject.optLong(CampaignEx.JSON_KEY_PLCT);
                eVar2.j = jSONObject.optBoolean("rurl");
                eVar2.m = jSONObject.optLong("uct");
                eVar2.n = jSONObject.optBoolean("ujds");
                eVar2.o = jSONObject.optInt("n2");
                eVar2.p = jSONObject.optInt("n3");
                eVar2.u = jSONObject.optInt("is_startup_crashsystem", 1);
                eVar2.r = jSONObject.optInt("pcrn");
                eVar2.q = jSONObject.optLong(CampaignEx.JSON_KEY_PLCTB) == 0 ? 7200L : jSONObject.optLong(CampaignEx.JSON_KEY_PLCTB);
                eVar2.r = jSONObject.optInt("pcrn", 100);
                eVar2.s = jSONObject.optInt("opent", 1);
                eVar2.at = jSONObject.optLong("sfct", 1800L);
                eVar2.H = jSONObject.optInt("upgd", 1);
                eVar2.G = jSONObject.optInt("upsrl", 1);
                eVar2.I = jSONObject.optInt("updevid", 1);
                eVar2.J = jSONObject.optInt("sc", 0);
                eVar2.K = jSONObject.optInt("up_tips", 1);
                eVar2.L = jSONObject.optInt("iseu", -1);
                eVar2.M = jSONObject.optString("jm_unit");
                try {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("atf");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            String strOptString = jSONArrayOptJSONArray.optString(i);
                            if (ak.b(strOptString)) {
                                JSONObject jSONObject2 = new JSONObject(strOptString);
                                arrayList.add(new com.mbridge.msdk.foundation.entity.a(jSONObject2.optInt("adtype"), jSONObject2.optString("unitid")));
                            }
                        }
                    }
                    if (arrayList != null) {
                        eVar2.v = arrayList;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                eVar2.au = jSONObject.optInt("adct", 259200);
                eVar2.av = jSONObject.optString("confirm_title", "");
                eVar2.aw = jSONObject.optString("confirm_description", "");
                eVar2.ax = jSONObject.optString("confirm_t", "");
                eVar2.ay = jSONObject.optString("confirm_c_rv", "");
                eVar2.az = jSONObject.optString("confirm_c_play", "");
                eVar2.aA = jSONObject.optString("adchoice_icon", "");
                eVar2.aC = jSONObject.optString("adchoice_link", "");
                eVar2.aB = jSONObject.optString("adchoice_size", "");
                eVar2.aE = jSONObject.optString("platform_logo", "");
                eVar2.aD = jSONObject.optString("platform_name", "");
                eVar2.aF = f(jSONObject.optString("cdnate_cfg", ""));
                eVar2.b = jSONObject.optInt("atrqt", 0);
                eVar2.aI = jSONObject.optInt("iupdid", 0);
                eVar2.C = jSONObject.optInt("mcs", 120);
                eVar2.D = jSONObject.optString("ab_id", "");
                eVar2.E = jSONObject.optString("rid", "");
                eVar2.F = jSONObject.optString("log_rate", UniquePlacementId.NO_ID);
                eVar2.aJ = jSONObject.optString("omsdkjs_url", "");
                eVar2.aK = jSONObject.optString("omsdkjs_h5_url", "");
                eVar2.ad = jSONObject.optInt("rty_tk_clk", 0);
                eVar2.ac = jSONObject.optInt("rty_tk_imp", 0);
                eVar2.ae = jSONObject.optInt("rty_cnt", 3);
                eVar2.af = jSONObject.optInt("rty_to", 600);
                eVar2.ag = jSONObject.optInt("rty_inr", 10);
                String strOptString2 = jSONObject.optString(AppLovinSdkExtraParameterKey.DO_NOT_SELL);
                eVar2.aX = strOptString2;
                if (!TextUtils.isEmpty(strOptString2)) {
                    c.a.a.a(u.b(strOptString2));
                }
                eVar2.aJ = jSONObject.optString("omsdkjs_url", "");
                eVar2.aK = jSONObject.optString("omsdkjs_h5_url", "");
                long jOptLong = jSONObject.optLong("tcto");
                if (jOptLong == 0) {
                    eVar2.f6770f = 10L;
                } else {
                    eVar2.f6770f = jOptLong;
                    JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("jt");
                    if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                        HashMap map = new HashMap();
                        for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i2);
                            map.put(jSONObjectOptJSONObject.optString(o2.i.C), jSONObjectOptJSONObject.optString("format"));
                        }
                        eVar2.f6771g = map;
                    }
                }
                eVar2.aM = jSONObject.optString("mraid_js");
                eVar2.aL = jSONObject.optString("web_env_url");
                int iOptInt = jSONObject.optInt("alrbs", 0);
                if (iOptInt > 2 || iOptInt < 0) {
                    iOptInt = 0;
                }
                eVar2.aN = iOptInt;
                eVar2.aO = jSONObject.optBoolean("GDPR_area", false);
                eVar2.aP = jSONObject.optInt(UserDataStore.CITY, 120);
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("ercd");
                if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                    ArrayList<Integer> arrayList2 = new ArrayList<>();
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                        int iOptInt2 = jSONArrayOptJSONArray3.optInt(i3);
                        if (iOptInt2 != 0) {
                            arrayList2.add(Integer.valueOf(iOptInt2));
                        }
                    }
                    if (arrayList2.size() > 0) {
                        arrayList2.add(-1);
                        eVar2.aQ = arrayList2;
                    }
                }
                String strOptString3 = jSONObject.optString("hst");
                if (!TextUtils.isEmpty(strOptString3)) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(u.b(strOptString3));
                        Iterator<String> itKeys = jSONObject3.keys();
                        HashMap<String, String> map2 = new HashMap<>();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(jSONObject3.optString(next)) && !TextUtils.isEmpty(u.b(jSONObject3.optString(next)))) {
                                map2.put(next, jSONObject3.optString(next));
                            }
                        }
                        if (map2.size() > 0) {
                            eVar2.aR = map2;
                        }
                    } catch (Exception e3) {
                        aa.d("SETTING", e3.getMessage());
                    }
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("refactor_switch");
                if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                    for (int i4 = 0; i4 < jSONArrayOptJSONArray4.length(); i4++) {
                        JSONObject jSONObject4 = jSONArrayOptJSONArray4.getJSONObject(i4);
                        Iterator<String> itKeys2 = jSONObject4.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            if (!TextUtils.isEmpty(next2) && jSONObject4.getBoolean(next2)) {
                                eVar2.as.add(Integer.valueOf(Integer.parseInt(next2)));
                            }
                        }
                    }
                }
                try {
                    int iOptInt3 = jSONObject.optInt("lqcnt", 30);
                    int iOptInt4 = jSONObject.optInt("lqto", 5);
                    int iOptInt5 = jSONObject.optInt("lqswt", 0);
                    int iOptInt6 = jSONObject.optInt("lqtype", 0);
                    eVar2.O = iOptInt4;
                    eVar2.N = iOptInt3;
                    eVar2.P = iOptInt5;
                    eVar2.Q = iOptInt6;
                    JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("lg_bl");
                    if (jSONArrayOptJSONArray5 == null) {
                        jSONArrayOptJSONArray5 = new JSONArray();
                        jSONArrayOptJSONArray5.put("2000088");
                    }
                    eVar2.aa = jSONArrayOptJSONArray5;
                    JSONArray jSONArrayOptJSONArray6 = jSONObject.optJSONArray("lg_wl");
                    if (jSONArrayOptJSONArray6 == null) {
                        jSONArrayOptJSONArray6 = new JSONArray();
                        jSONArrayOptJSONArray6.put("2000041");
                        jSONArrayOptJSONArray6.put("2000042");
                        jSONArrayOptJSONArray6.put("2000032");
                        jSONArrayOptJSONArray6.put("2000079");
                    }
                    eVar2.Z = jSONArrayOptJSONArray6;
                    eVar2.ab = jSONObject.optInt("lg_wl_rt");
                    eVar2.ah = jSONObject.optInt("srml", 8000);
                    eVar2.ai = jSONObject.optInt("lrml", 8000);
                    eVar2.aj = jSONObject.optInt("wgl_d_ms", IronSourceConstants.RV_AUCTION_REQUEST);
                    int iOptInt7 = jSONObject.optInt("dp_ct", a);
                    eVar2.ak = iOptInt7;
                    com.mbridge.msdk.click.b.a.c = iOptInt7;
                    int i5 = Integer.parseInt(u.b(jSONObject.optString("lqpt")));
                    if (i5 > 0 && i5 < 65535) {
                        eVar2.R = i5;
                        com.mbridge.msdk.foundation.same.net.g.d.a().l = i5;
                        com.mbridge.msdk.foundation.same.net.g.d.a().n = i5;
                    }
                } catch (Exception unused) {
                }
                eVar2.aS = jSONObject.optInt("wvddt", 0);
                eVar2.A = jSONObject.optString("hst_st", "");
                eVar2.B = jSONObject.optString("hst_st_t", "");
                try {
                    int iOptInt8 = jSONObject.optInt("l", 3);
                    boolean z = jSONObject.optInt(CampaignEx.JSON_KEY_AD_K, 0) == 1;
                    boolean z2 = jSONObject.optInt(InneractiveMediationDefs.GENDER_MALE, 1) == 1;
                    eVar2.x = iOptInt8;
                    eVar2.w = z;
                    eVar2.y = z2;
                } catch (Exception e4) {
                    aa.d("Setting", e4.getMessage());
                }
                eVar2.aG = jSONObject.optInt("fbk_swt", 0);
                eVar2.aH = b.a(jSONObject.optJSONObject("fbk"));
                try {
                    int iOptInt9 = jSONObject.optInt("ad_connection_timeout", com.mbridge.msdk.foundation.same.a.x);
                    int iOptInt10 = jSONObject.optInt("ad_read_timeout", com.mbridge.msdk.foundation.same.a.z);
                    int iOptInt11 = jSONObject.optInt("ad_write_timeout", com.mbridge.msdk.foundation.same.a.A);
                    int iOptInt12 = jSONObject.optInt("ad_retry_count", com.mbridge.msdk.foundation.same.a.B);
                    if (iOptInt9 <= 0) {
                        iOptInt9 = com.mbridge.msdk.foundation.same.a.x;
                    }
                    eVar2.U = iOptInt9;
                    if (iOptInt10 <= 0) {
                        iOptInt10 = com.mbridge.msdk.foundation.same.a.z;
                    }
                    eVar2.S = iOptInt10;
                    if (iOptInt11 <= 0) {
                        iOptInt11 = com.mbridge.msdk.foundation.same.a.A;
                    }
                    eVar2.T = iOptInt11;
                    if (iOptInt12 < 0) {
                        iOptInt12 = com.mbridge.msdk.foundation.same.a.B;
                    }
                    eVar2.V = iOptInt12;
                    int iOptInt13 = jSONObject.optInt("max_download_task_size", 10);
                    if (iOptInt13 <= 0) {
                        iOptInt13 = 10;
                    }
                    eVar2.z = iOptInt13;
                    eVar2.d(jSONObject.optInt("max_bitmap_cache_size", 10));
                    eVar2.aV = jSONObject.optInt("t_t");
                    eVar2.aU = jSONObject.optInt("h_t");
                    int iOptInt14 = jSONObject.optInt("gtp");
                    eVar2.aW = iOptInt14;
                    com.mbridge.msdk.foundation.same.net.g.d.a().a(iOptInt14);
                } catch (Exception unused2) {
                }
                try {
                    eVar2.X = jSONObject.optString("http_track_url", "");
                } catch (Exception unused3) {
                }
                eVar2.aY = jSONObject.optInt("st_net", 1);
                eVar2.aZ = jSONObject.optString("vtag", "");
                try {
                    eVar2.ar = jSONObject.optInt("check_webview", 0) != 0;
                } catch (Exception unused4) {
                    eVar2.ar = false;
                }
                String strOptString4 = jSONObject.optString("swxid");
                if (!TextUtils.isEmpty(eVar2.ao)) {
                    eVar2.ao = strOptString4;
                    if (TextUtils.isEmpty(com.mbridge.msdk.foundation.controller.b.d().i())) {
                        com.mbridge.msdk.foundation.controller.b.d().d(eVar2.ao);
                    }
                }
                eVar2.aq = jSONObject.optJSONArray("sdk_filters");
                boolean z3 = true;
                try {
                    eVar2.al = jSONObject.optInt("ch_nv_im_cb", 1);
                } catch (Exception unused5) {
                    eVar2.al = 1;
                }
                try {
                    eVar2.Y = jSONObject.optInt("do_us_fi_re", 1) != 0;
                } catch (Exception unused6) {
                    z3 = true;
                    eVar2.Y = z3;
                }
                try {
                    com.mbridge.msdk.foundation.controller.c.a();
                    try {
                        fastKVBuild = new FastKV.Builder(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_CONFIG), u.b("H+tU+FeXHM==")).build();
                    } catch (Exception unused7) {
                        fastKVBuild = null;
                    }
                    if (fastKVBuild != null) {
                        try {
                            if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                                String strOptString5 = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                                if (!TextUtils.isEmpty(strOptString5) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.l, strOptString5)) {
                                    com.mbridge.msdk.foundation.same.a.l = strOptString5;
                                    com.mbridge.msdk.foundation.a.a.a.a().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.l);
                                    try {
                                        fastKVBuild.putString(u.b("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.l);
                                    } catch (Exception unused8) {
                                    }
                                }
                                String strOptString6 = jSONObject.optString("c");
                                if (!TextUtils.isEmpty(strOptString6) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.m, strOptString6)) {
                                    com.mbridge.msdk.foundation.same.a.m = strOptString6;
                                    com.mbridge.msdk.foundation.a.a.a.a().a("c", com.mbridge.msdk.foundation.same.a.m);
                                    try {
                                        fastKVBuild.putString(u.b("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.m);
                                    } catch (Exception unused9) {
                                    }
                                }
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    } else {
                        try {
                            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                            if (contextG != null) {
                                String strOptString7 = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                                if (!TextUtils.isEmpty(strOptString7) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.l, strOptString7)) {
                                    com.mbridge.msdk.foundation.same.a.l = strOptString7;
                                    com.mbridge.msdk.foundation.a.a.a.a().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.l);
                                    SharedPreferences sharedPreferences = contextG.getSharedPreferences(u.b("H+tU+FeXHM=="), 0);
                                    if (sharedPreferences != null) {
                                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                                        editorEdit.putString(u.b("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.l);
                                        editorEdit.apply();
                                    }
                                }
                                String strOptString8 = jSONObject.optString("c");
                                if (!TextUtils.isEmpty(strOptString8) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.m, strOptString8)) {
                                    com.mbridge.msdk.foundation.same.a.m = strOptString8;
                                    com.mbridge.msdk.foundation.a.a.a.a().a("c", com.mbridge.msdk.foundation.same.a.m);
                                    SharedPreferences sharedPreferences2 = contextG.getSharedPreferences(u.b("H+tU+FeXHM=="), 0);
                                    if (sharedPreferences2 != null) {
                                        SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
                                        editorEdit2.putString(u.b("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.m);
                                        editorEdit2.apply();
                                    }
                                }
                            }
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                String strOptString9 = jSONObject.optString("bcp");
                if (!TextUtils.isEmpty(strOptString9)) {
                    eVar2.am = com.mbridge.msdk.c.a.a(u.b(strOptString9));
                }
                String strOptString10 = jSONObject.optString("monitor");
                if (!TextUtils.isEmpty(strOptString10)) {
                    eVar2.an = com.mbridge.msdk.c.b.a(u.b(strOptString10));
                }
                return eVar2;
            } catch (Exception e8) {
                e = e8;
                eVar = eVar2;
            }
        } catch (Exception e9) {
            e = e9;
            eVar = null;
        }
        e.printStackTrace();
        return eVar;
    }

    private static Map<String, a> f(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                a aVar = new a();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                if (jSONObjectOptJSONObject != null) {
                    aVar.a(jSONObjectOptJSONObject);
                }
                map.put(next, aVar);
            }
            return map;
        } catch (JSONException e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
            return null;
        } catch (Exception e3) {
            if (MBridgeConstans.DEBUG) {
                e3.printStackTrace();
            }
            return null;
        }
    }

    public final int A() {
        return this.S;
    }

    public final int B() {
        return this.T;
    }

    public final int C() {
        return this.U;
    }

    public final int D() {
        return this.V;
    }

    public final String E() {
        return this.A;
    }

    public final String F() {
        return this.B;
    }

    public final int G() {
        return this.G;
    }

    public final int H() {
        return this.H;
    }

    public final int I() {
        return this.I;
    }

    public final int J() {
        return this.J;
    }

    public final int K() {
        return this.K;
    }

    public final int L() {
        return this.L;
    }

    public final int M() {
        return this.u;
    }

    public final String N() {
        return this.t;
    }

    public final int O() {
        return this.s;
    }

    public final int P() {
        return this.r;
    }

    public final long Q() {
        if (this.q <= 0) {
            this.q = 7200L;
        }
        return this.q;
    }

    public final int R() {
        return this.au;
    }

    public final long S() {
        return this.at;
    }

    public final boolean T() {
        return this.n;
    }

    public final long U() {
        return this.m;
    }

    public final boolean V() {
        return this.j;
    }

    public final long W() {
        return this.k;
    }

    public final int X() {
        return this.f6768d;
    }

    public final long Y() {
        return this.f6769e;
    }

    public final long Z() {
        return this.i;
    }

    public final int a() {
        return this.z;
    }

    public final void a(int i) {
        this.z = i;
    }

    public final void a(long j) {
        this.q = j;
    }

    public final void a(String str) {
        this.X = str;
    }

    public final void a(boolean z) {
        this.Y = z;
    }

    public final int aA() {
        return this.aN;
    }

    public final boolean aB() {
        return this.aO;
    }

    public final int aC() {
        return this.aP;
    }

    public final ArrayList<Integer> aD() {
        return this.aQ;
    }

    public final HashMap<String, String> aE() {
        return this.aR;
    }

    public final int aF() {
        return this.aS;
    }

    public final int aG() {
        return this.aT;
    }

    public final String aH() {
        return this.c;
    }

    public final int aI() {
        return this.aU;
    }

    public final int aJ() {
        return this.aV;
    }

    public final int aK() {
        return this.aY;
    }

    public final String aL() {
        return this.aZ;
    }

    public final String aM() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cc", this.c);
            jSONObject.put("cfc", this.f6768d);
            jSONObject.put("cfb", this.h);
            jSONObject.put(CampaignEx.JSON_KEY_PLCT, this.k);
            jSONObject.put("awct", this.l);
            jSONObject.put("rurl", this.j);
            jSONObject.put("ujds", this.n);
            jSONObject.put(CampaignEx.JSON_KEY_PLCTB, this.q);
            jSONObject.put("tcto", this.f6770f);
            jSONObject.put("mv_wildcard", this.t);
            jSONObject.put("is_startup_crashsystem", this.u);
            jSONObject.put("sfct", this.at);
            jSONObject.put("pcrn", this.r);
            jSONObject.put("adct", this.au);
            jSONObject.put("atrqt", this.b);
            jSONObject.put("omsdkjs_url", this.aJ);
            jSONObject.put("mcs", this.C);
            jSONObject.put("GDPR_area", this.aO);
            jSONObject.put("alrbs", this.aN);
            jSONObject.put(UserDataStore.CITY, this.aP);
            jSONObject.put("isDefault", this.aT);
            jSONObject.put("st_net", this.aY);
            jSONObject.put("vtag", this.aZ);
            return jSONObject.toString();
        } catch (Throwable th) {
            aa.d("Setting", th.getMessage());
            return null;
        }
    }

    public final long aa() {
        return this.f6770f * 1000;
    }

    public final int ab() {
        return this.o;
    }

    public final int ac() {
        return this.p;
    }

    public final String ad() {
        return this.av;
    }

    public final String ae() {
        return this.aw;
    }

    public final String af() {
        return this.ax;
    }

    public final String ag() {
        return this.ay;
    }

    public final String ah() {
        return this.az;
    }

    public final void ai() {
        String language = Locale.getDefault().getLanguage();
        if (!((TextUtils.isEmpty(this.av) || TextUtils.isEmpty(this.aw) || TextUtils.isEmpty(this.ax) || TextUtils.isEmpty(this.ay)) ? false : true)) {
            if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                this.av = "Confirm to close? ";
                this.aw = "You will not be rewarded after closing the window";
                this.ax = "Close it";
                this.ay = "Continue";
            } else {
                this.av = "确认关闭？";
                this.aw = "关闭后您将不会获得任何奖励噢~ ";
                this.ax = "确认关闭";
                this.ay = "继续观看";
            }
        }
        if ((TextUtils.isEmpty(this.av) || TextUtils.isEmpty(this.aw) || TextUtils.isEmpty(this.ax) || TextUtils.isEmpty(this.az)) ? false : true) {
            return;
        }
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            this.av = "Confirm to close? ";
            this.aw = "You will not be rewarded after closing the window";
            this.ax = "Close it";
            this.az = "Continue";
            return;
        }
        this.av = "确认关闭？";
        this.aw = "关闭后您将不会获得任何奖励噢~ ";
        this.ax = "确认关闭";
        this.az = "继续试玩";
    }

    public final String aj() {
        return this.aA;
    }

    public final String ak() {
        return this.aB;
    }

    public final String al() {
        return this.aC;
    }

    public final Map<String, a> am() {
        return this.aF;
    }

    public final int an() {
        return this.N;
    }

    public final int ao() {
        return this.O;
    }

    public final int ap() {
        return this.P;
    }

    public final int aq() {
        return this.Q;
    }

    public final boolean ar() {
        return this.w;
    }

    public final int as() {
        return this.x;
    }

    public final boolean at() {
        return this.y;
    }

    public final b au() {
        return this.aH;
    }

    public final int av() {
        return this.al;
    }

    public final String aw() {
        return this.aK;
    }

    public final String ax() {
        return this.aJ;
    }

    public final String ay() {
        return this.aL;
    }

    public final String az() {
        return this.aM;
    }

    public final List<com.mbridge.msdk.foundation.entity.a> b() {
        return this.v;
    }

    public final void b(int i) {
        this.C = i;
    }

    public final void b(long j) {
        this.at = j;
    }

    public final void b(String str) {
        this.t = str;
    }

    public final void b(boolean z) {
        this.ar = z;
    }

    public final String c() {
        return this.D;
    }

    public final void c(int i) {
        this.b = i;
    }

    public final void c(long j) {
        this.k = j;
    }

    public final void c(boolean z) {
        this.n = z;
    }

    public final int d() {
        return this.C;
    }

    public final void d(int i) {
        if (i > 0) {
            this.W = i;
        }
    }

    public final void d(long j) {
        this.l = j;
    }

    public final void d(String str) {
        this.aK = str;
    }

    public final void d(boolean z) {
        this.j = z;
    }

    public final int e() {
        return this.b;
    }

    public final void e(int i) {
        this.S = i;
    }

    public final void e(long j) {
        this.f6770f = j;
    }

    public final void e(String str) {
        this.aJ = str;
    }

    public final void e(boolean z) {
        this.h = z;
    }

    public final void f(int i) {
        this.T = i;
    }

    public final void f(boolean z) {
        this.aO = z;
    }

    public final boolean f() {
        return this.Y;
    }

    public final com.mbridge.msdk.c.b g() {
        return this.an;
    }

    public final void g(int i) {
        this.U = i;
    }

    public final com.mbridge.msdk.c.a h() {
        return this.am;
    }

    public final void h(int i) {
        this.V = i;
    }

    public final JSONArray i() {
        return this.aq;
    }

    public final boolean i(int i) {
        return this.as.contains(Integer.valueOf(i));
    }

    public final JSONObject j() {
        return this.ap;
    }

    public final void j(int i) {
        this.G = i;
    }

    public final String k() {
        return this.E;
    }

    public final void k(int i) {
        this.H = i;
    }

    public final String l() {
        return this.F;
    }

    public final void l(int i) {
        this.I = i;
    }

    public final int m() {
        return this.aj;
    }

    public final void m(int i) {
        this.J = i;
    }

    public final int n() {
        return this.ah;
    }

    public final void n(int i) {
        this.K = i;
    }

    public final int o() {
        return this.ai;
    }

    public final void o(int i) {
        this.L = i;
    }

    public final void p(int i) {
        this.u = i;
    }

    public final boolean p() {
        return this.ar;
    }

    public final int q() {
        return this.ac;
    }

    public final void q(int i) {
        this.au = i;
    }

    public final int r() {
        return this.ad;
    }

    public final void r(int i) {
        this.f6768d = i;
    }

    public final int s() {
        return this.ae;
    }

    public final void s(int i) {
        this.al = i;
    }

    public final int t() {
        return this.af;
    }

    public final void t(int i) {
        this.aN = i;
    }

    public final String toString() {
        return " cfc=" + this.f6768d + " getpf=" + this.f6769e + " rurl=" + this.j;
    }

    public final int u() {
        return this.ag;
    }

    public final void u(int i) {
        this.aP = i;
    }

    public final int v() {
        return this.ab;
    }

    public final void v(int i) {
        this.aT = i;
    }

    public final JSONArray w() {
        return this.Z;
    }

    public final void w(int i) {
        this.aU = i;
    }

    public final JSONArray x() {
        return this.aa;
    }

    public final void x(int i) {
        this.aV = i;
    }

    public final String y() {
        return this.X;
    }

    public final void y(int i) {
        this.aY = i;
    }

    public final int z() {
        return this.W;
    }
}
