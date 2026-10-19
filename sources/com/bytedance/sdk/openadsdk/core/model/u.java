package com.bytedance.sdk.openadsdk.core.model;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinErrorCodes;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SingleMaterialMeta.java */
/* JADX INFO: loaded from: classes2.dex */
public class u extends q {
    private String A;
    private long F;
    private int G;
    private int H;
    private com.bykv.vk.openvk.component.video.api.c.b I;
    private com.bykv.vk.openvk.component.video.api.c.b J;
    private com.bykv.vk.openvk.component.video.api.c.b K;
    private boolean L;
    private boolean M;
    private boolean N;
    private int O;
    private boolean P;
    private int Q;
    private Map<String, Object> R;
    private q.a S;
    private String T;
    private JSONObject U;
    private com.bytedance.sdk.openadsdk.core.g.a aA;
    private String aB;
    private JSONObject aC;
    private int aD;
    private volatile boolean aE;
    private String aH;
    private int aI;
    private int aJ;
    private String[] aL;
    private l aM;
    private String aN;
    private String aO;
    private d aP;
    private boolean aQ;
    private String aR;
    private int aT;
    private String aU;
    private String aV;
    private boolean aW;
    private AdSlot aa;
    private int ab;
    private String ad;
    private JSONObject ah;
    private int aj;
    private String ak;
    private String al;
    private k am;
    private String ap;
    private int aq;
    private int ar;
    private int as;
    private int at;
    private int ax;
    private p ay;
    private t az;
    public long b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1604g;
    private int h;
    private int i;
    private n j;
    private n k;
    private String l;
    private String m;
    private String p;
    private String q;
    private String r;
    private String s;
    private int t;
    private c v;
    private j w;
    private int x;
    private String y;
    private String z;
    private final List<n> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<String> f1601d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<FilterWord> f1602e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ab f1603f = ab.b();
    public boolean a = false;
    private List<String> n = new ArrayList();
    private List<String> o = new ArrayList();
    private String u = "0";
    private String B = "";
    private int C = 0;
    private int D = 2;
    private int E = 0;
    private int V = 0;
    private int W = 1;
    private h X = new h();
    private int Y = AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES;
    private int Z = 0;
    private int ac = 1;
    private int ae = 0;
    private int af = 0;
    private int ag = 0;
    private int ai = 1;
    private int an = 1;
    private float ao = 100.0f;
    private int au = 2;
    private int av = 1;
    private int aw = 0;
    private int aF = -1;
    private long aG = -1;
    private int aK = 0;
    private int aS = 0;

    private JSONObject b(FilterWord filterWord) {
        if (filterWord == null) {
            return null;
        }
        try {
            if (filterWord.isValid()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", filterWord.getId());
                jSONObject.put("name", filterWord.getName());
                jSONObject.put("is_selected", filterWord.getIsSelected());
                if (filterWord.hasSecondOptions()) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<FilterWord> it = filterWord.getOptions().iterator();
                    while (it.hasNext()) {
                        jSONArray.put(b(it.next()));
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put(SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, jSONArray);
                    }
                }
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static double e(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int A() {
        return this.af;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void A(int i) {
        this.aD = i;
    }

    public void A(String str) {
        this.aH = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int B() {
        if (at()) {
            return 5;
        }
        if (al() != 100.0f || u() == 2) {
            return 0;
        }
        return this.Z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void B(int i) {
        this.aI = Math.max(0, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public h C() {
        return this.X;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void C(int i) {
        this.aJ = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public AdSlot D() {
        return this.aa;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void D(int i) {
        this.aK = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int E() {
        return this.Y;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void E(int i) {
        this.O = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String F() {
        return this.T;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void F(int i) {
        this.aw = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void G(int i) {
        this.ax = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean G() {
        return bB() == 100 || this.h == 20;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int H() {
        return this.Q;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void H(int i) {
        this.t = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public q.a I() {
        return this.S;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void I(int i) {
        this.aS = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int J() {
        k kVar = this.am;
        if (kVar == null) {
            return 0;
        }
        return kVar.a();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void J(int i) {
        this.aT = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bykv.vk.openvk.component.video.api.c.b K() {
        return this.I;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String L() {
        return this.y;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int M() {
        return this.f1604g;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public n N() {
        return this.j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public n O() {
        return this.k;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String P() {
        return this.l;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<n> Q() {
        return this.c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String R() {
        return this.m;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<String> S() {
        return this.n;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<String> T() {
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<String> U() {
        return this.f1601d;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String V() {
        return this.p;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String W() {
        return this.q;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String X() {
        if (!TextUtils.isEmpty(this.r)) {
            return this.r;
        }
        Context contextA = com.bytedance.sdk.openadsdk.core.o.a();
        int iM = M();
        if (iM == 2 || iM == 3) {
            return contextA != null ? com.bytedance.sdk.component.utils.s.a(contextA, "tt_video_mobile_go_detail") : this.r;
        }
        if (iM == 4 && contextA != null) {
            return com.bytedance.sdk.component.utils.s.a(contextA, "tt_video_download_apk");
        }
        return this.r;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String Y() {
        return this.u;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String Z() {
        return this.z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(double d2) {
        if (d2 == 2.0d || d2 == 1.0d) {
            this.av = (int) d2;
        } else {
            this.av = 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(float f2) {
        this.ao = f2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(int i) {
        a(i, -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(int i, int i2) {
        this.i = i;
        this.h = i;
        if (this.aa == null) {
            this.h = 0;
            return;
        }
        if (i2 <= 0) {
            i2 = aS();
        }
        if (this.aa.getNativeAdType() == 3 || this.aa.getDurationSlotType() == 3 || i2 == 3) {
            this.h = 14;
            return;
        }
        if (this.aa.getNativeAdType() != 7 && this.aa.getNativeAdType() != 8 && this.aa.getDurationSlotType() != 7 && this.aa.getDurationSlotType() != 8 && i2 != 7 && i2 != 8) {
            if (t.b(this)) {
                this.h = 4;
                return;
            }
            if (this.i == 4 && !t.b(this)) {
                this.h = 0;
            }
            if (i >= 5) {
                this.h = 0;
                return;
            }
            if (this.i == 2 && M() != 3) {
                this.h = 0;
                return;
            } else {
                if (i == 0 || (i == 1 && M() != 3)) {
                    this.h = 0;
                    return;
                }
                return;
            }
        }
        if (t.k(this)) {
            this.h = 12;
            return;
        }
        if (t.b(this)) {
            this.h = 9;
            return;
        }
        if (this.i == 5 && !o.c(this)) {
            this.h = 7;
        }
        if (this.i == 6 && !o.b(this)) {
            this.h = 7;
        }
        if (this.i == 8 && bB() != 100) {
            this.h = 7;
        }
        if (this.i == 19 && TextUtils.isEmpty(this.l)) {
            this.h = 7;
        }
        if (this.i == 20 && TextUtils.isEmpty(this.l)) {
            this.h = 7;
        }
        if (i < 5) {
            this.h = 7;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(com.bykv.vk.openvk.component.video.api.c.b bVar) {
        this.I = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(AdSlot adSlot) {
        this.aa = adSlot;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(FilterWord filterWord) {
        this.f1602e.add(filterWord);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(com.bytedance.sdk.openadsdk.core.g.a aVar) {
        this.aA = aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(c cVar) {
        this.v = cVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(d dVar) {
        this.aP = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(h hVar) {
        this.X = hVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(j jVar) {
        this.w = jVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(k kVar) {
        this.am = kVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(l lVar) {
        this.aM = lVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(n nVar) {
        this.j = nVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(p pVar) {
        this.ay = pVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(q.a aVar) {
        this.S = aVar;
        com.bytedance.sdk.component.adexpress.a.c.c cVarBC = bC();
        if (cVarBC != null) {
            com.bytedance.sdk.component.adexpress.a.b.a.a(cVarBC);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(t tVar) {
        this.az = tVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(Map<String, Object> map) {
        this.R = map;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(boolean z) {
        this.L = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void a(String[] strArr) {
        this.aL = strArr;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void aA() {
        this.aE = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aB() {
        return this.aE;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aC() {
        return this.aI;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aD() {
        return this.aJ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aE() {
        return this.aK;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String aF() {
        String strV = V();
        return (aa() == null || TextUtils.isEmpty(aa().b())) ? strV : aa().b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String[] aG() {
        String[] strArr = this.aL;
        return ((strArr == null || strArr.length <= 0) && !TextUtils.isEmpty(V())) ? new String[]{V()} : this.aL;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public l aH() {
        return this.aM;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aI() {
        return this.O;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bytedance.sdk.component.widget.b.a aJ() {
        com.bytedance.sdk.component.widget.b.a aVar = new com.bytedance.sdk.component.widget.b.a();
        aVar.a(this.Q);
        aVar.b(this.u);
        aVar.a(ac());
        return aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aK() {
        return this.aw;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aL() {
        return this.ax;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bykv.vk.openvk.component.video.api.c.b aM() {
        return this.K;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bykv.vk.openvk.component.video.api.c.b aN() {
        return this.J;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String aO() {
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aP() {
        return this.t;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aQ() {
        com.bykv.vk.openvk.component.video.api.c.b bVar = this.I;
        return bVar == null || bVar.s() != 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject aR() {
        if (this.U == null) {
            try {
                if (!TextUtils.isEmpty(this.A)) {
                    this.U = new JSONObject(this.A);
                }
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.l.e("MaterialMeta", e2.getMessage());
            }
        }
        return this.U;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aS() {
        if (this.aF < 0) {
            JSONObject jSONObjectAR = aR();
            if (jSONObjectAR != null) {
                this.aF = jSONObjectAR.optInt("ad_slot_type", 0);
            } else {
                this.aF = 0;
            }
        }
        return this.aF;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aT() {
        return this.aF;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long aU() {
        if (this.aG < 0) {
            JSONObject jSONObjectAR = aR();
            if (jSONObjectAR != null) {
                this.aG = jSONObjectAR.optLong("ad_id", 0L);
            } else {
                this.aG = 0L;
            }
        }
        return this.aG;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aV() {
        return aS() == 3 || aS() == 4;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aW() {
        return aS() == 7;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aX() {
        return aS() == 8;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean aY() {
        return aS() == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aZ() {
        JSONObject jSONObjectAR = aR();
        if (jSONObjectAR != null) {
            return jSONObjectAR.optInt("rit", 0);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public c aa() {
        return this.v;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public j ab() {
        return this.w;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String ac() {
        return this.A;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ad() {
        return this.x;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public List<FilterWord> ae() {
        return this.f1602e;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String af() {
        return this.al;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long ag() {
        return this.F;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean ah() {
        return this.P;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public Map<String, Object> ai() {
        return this.R;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject aj() {
        return this.ah;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ak() {
        if (this.an != 2) {
            this.an = 1;
        }
        return this.an;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public float al() {
        if (this.ao <= 0.0f) {
            this.ao = 100.0f;
        }
        return (this.ao * 1000.0f) / 1000.0f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean am() {
        if (this.c.isEmpty()) {
            return false;
        }
        if (this.x == 4 && this.c.size() < 3) {
            return false;
        }
        Iterator<n> it = this.c.iterator();
        while (it.hasNext()) {
            if (!it.next().e()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean an() {
        return !at() && bF() == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject ao() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interaction_type", M());
            jSONObject.put("interaction_method", p());
            jSONObject.put("target_url", P());
            jSONObject.put("app_log_url", Z());
            jSONObject.put("gecko_id", af());
            jSONObject.put(ShareConstants.MEDIA_EXTENSION, ay());
            jSONObject.put("ad_id", Y());
            jSONObject.put(ShareConstants.FEED_SOURCE_PARAM, L());
            jSONObject.put("screenshot", ah());
            jSONObject.put("dislike_control", bF());
            jSONObject.put("play_bar_show_time", E());
            jSONObject.put("play_bar_style", B());
            jSONObject.put("if_block_lp", bv());
            jSONObject.put("cache_sort", bz());
            jSONObject.put("if_sp_cache", bA());
            jSONObject.put("render_control", u());
            jSONObject.put("mrc_report", this.aD);
            jSONObject.put("isMrcReportFinish", this.aE);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("cta", r());
            jSONObject2.put("other", q());
            jSONObject.put("set_click_type", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_NAME, s());
            jSONObject3.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, t());
            jSONObject.put("reward_data", jSONObject3);
            if (!TextUtils.isEmpty(f()) && !TextUtils.isEmpty(g())) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("adchoices_icon", f());
                jSONObject4.put("adchoices_url", g());
                jSONObject.put("dsp_adchoices", jSONObject4);
            }
            n nVarN = N();
            if (nVarN != null && !TextUtils.isEmpty(nVarN.a())) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("url", nVarN.a());
                jSONObject5.put("height", nVarN.c());
                jSONObject5.put("width", nVarN.b());
                jSONObject.put("icon", jSONObject5);
            }
            n nVarO = O();
            if (nVarO != null && !TextUtils.isEmpty(nVarO.a())) {
                JSONObject jSONObject6 = new JSONObject();
                jSONObject6.put("url", nVarO.a());
                jSONObject6.put("height", nVarO.c());
                jSONObject6.put("width", nVarO.b());
                jSONObject.put("cover_image", jSONObject6);
            }
            Object objAj = aj();
            if (objAj != null) {
                jSONObject.put("session_params", objAj);
            }
            h hVarC = C();
            if (hVarC != null) {
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("click_upper_content_area", hVarC.a);
                jSONObject7.put("click_upper_non_content_area", hVarC.b);
                jSONObject7.put("click_lower_content_area", hVarC.c);
                jSONObject7.put("click_lower_non_content_area", hVarC.f1562d);
                jSONObject7.put("click_button_area", hVarC.f1563e);
                jSONObject7.put("click_video_area", hVarC.f1564f);
                jSONObject.put("click_area", jSONObject7);
            }
            AdSlot adSlotD = D();
            if (adSlotD != null) {
                jSONObject.put("adslot", adSlotD.toJsonObj());
            }
            List<n> listQ = Q();
            if (listQ != null) {
                JSONArray jSONArray = new JSONArray();
                for (n nVar : listQ) {
                    JSONObject jSONObject8 = new JSONObject();
                    jSONObject8.put("url", nVar.a());
                    jSONObject8.put("height", nVar.c());
                    jSONObject8.put("width", nVar.b());
                    jSONObject8.put("image_preview", nVar.f());
                    jSONObject8.put("image_key", nVar.g());
                    jSONArray.put(jSONObject8);
                }
                jSONObject.put("image", jSONArray);
            }
            List<String> listS = S();
            if (listS != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it = listS.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next());
                }
                jSONObject.put("show_url", jSONArray2);
            }
            List<String> listT = T();
            if (listT != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator<String> it2 = listT.iterator();
                while (it2.hasNext()) {
                    jSONArray3.put(it2.next());
                }
                jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, jSONArray3);
            }
            List<String> listU = U();
            if (listU != null) {
                JSONArray jSONArray4 = new JSONArray();
                Iterator<String> it3 = listU.iterator();
                while (it3.hasNext()) {
                    jSONArray4.put(it3.next());
                }
                jSONObject.put("play_start", jSONArray4);
            }
            jSONObject.put("phone_num", R());
            jSONObject.put("title", V());
            jSONObject.put("description", W());
            jSONObject.put(KidozParams.EXTENSION_TYPE, ac());
            jSONObject.put("image_mode", ad());
            jSONObject.put("cover_click_area", bB());
            jSONObject.put("intercept_flag", by());
            jSONObject.put("button_text", X());
            jSONObject.put("ad_logo", bx());
            jSONObject.put("video_adaptation", A());
            jSONObject.put("feed_video_opentype", w());
            jSONObject.put("orientation", ak());
            jSONObject.put("aspect_ratio", al());
            c cVarAa = aa();
            if (cVarAa != null) {
                JSONObject jSONObject9 = new JSONObject();
                jSONObject9.put(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, cVarAa.b());
                jSONObject9.put("package_name", cVarAa.c());
                jSONObject9.put(DownloadModel.DOWNLOAD_URL, cVarAa.a());
                jSONObject9.put("score", cVarAa.d());
                jSONObject9.put("comment_num", cVarAa.e());
                jSONObject9.put(CampaignEx.JSON_KEY_APP_SIZE, cVarAa.f());
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject9);
            }
            j jVarAb = ab();
            if (jVarAb != null) {
                JSONObject jSONObject10 = new JSONObject();
                jSONObject10.put("deeplink_url", jVarAb.a());
                jSONObject10.put("fallback_url", jVarAb.b());
                jSONObject10.put("fallback_type", jVarAb.c());
                jSONObject.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, jSONObject10);
            }
            List<FilterWord> listAe = ae();
            if (listAe != null) {
                JSONArray jSONArray5 = new JSONArray();
                Iterator<FilterWord> it4 = listAe.iterator();
                while (it4.hasNext()) {
                    JSONObject jSONObjectB = b(it4.next());
                    if (jSONObjectB != null) {
                        jSONArray5.put(jSONObjectB);
                    }
                }
                jSONObject.put("filter_words", jSONArray5);
            }
            n().a(jSONObject);
            jSONObject.put("count_down", bD());
            jSONObject.put("expiration_time", ag());
            com.bykv.vk.openvk.component.video.api.c.b bVarAM = aM();
            if (bVarAM != null) {
                jSONObject.put("video", bVarAM.r());
            }
            com.bykv.vk.openvk.component.video.api.c.b bVarAN = aN();
            if (bVarAN != null) {
                jSONObject.put("h265_video", bVarAN.r());
            }
            jSONObject.put("video_encode_type", aL());
            JSONObject jSONObject11 = new JSONObject();
            jSONObject11.put("if_send_click", J());
            jSONObject.put("download_conf", jSONObject11);
            if (ai() != null) {
                JSONObject jSONObject12 = new JSONObject();
                Set<Map.Entry<String, Object>> setEntrySet = ai().entrySet();
                if (!setEntrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : setEntrySet) {
                        jSONObject12.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("media_ext", jSONObject12);
            }
            q.a aVarI = I();
            if (aVarI != null) {
                JSONObject jSONObject13 = new JSONObject();
                jSONObject13.put("id", aVarI.e());
                jSONObject13.put("md5", aVarI.f());
                jSONObject13.put("url", aVarI.g());
                jSONObject13.put("data", aVarI.h());
                jSONObject13.put("diff_data", aVarI.i());
                jSONObject13.put("version", aVarI.d());
                jSONObject13.put("dynamic_creative", aVarI.j());
                jSONObject.put("tpl_info", jSONObject13);
            }
            jSONObject.put("creative_extra", F());
            jSONObject.put("market_url", bE());
            jSONObject.put("auction_price", z());
            jSONObject.put("ad_info", bw());
            jSONObject.put("is_package_open", ap());
            jSONObject.put("playable_duration_time", aq());
            jSONObject.put("playable_endcard_close_time", ar());
            jSONObject.put("endcard_close_time", as());
            JSONObject jSONObject14 = new JSONObject();
            jSONObject14.put("render_sequence", x());
            jSONObject14.put("backup_render_control", y());
            jSONObject14.put("reserve_time", aC());
            jSONObject14.put("render_thread", aD());
            jSONObject.put("render", jSONObject14);
            if (this.ay == null) {
                p pVar = new p();
                this.ay = pVar;
                pVar.a("");
                this.ay.a(10L);
                this.ay.b(20L);
            }
            JSONObject jSONObject15 = new JSONObject();
            jSONObject15.put("onlylp_loading_maxtime", this.ay.a());
            jSONObject15.put("straight_lp_showtime", this.ay.b());
            jSONObject15.put("loading_text", this.ay.c());
            jSONObject.put("interaction_method_params", jSONObject15);
            JSONObject jSONObject16 = new JSONObject();
            jSONObject16.put("splash_clickarea", k());
            jSONObject16.put("splash_layout_id", l());
            jSONObject16.put("load_wait_time", m());
            jSONObject.put("splash_control", jSONObject16);
            if (av()) {
                jSONObject.put("dsp_html", this.aB);
            }
            if (at()) {
                jSONObject.put("vast_json", this.aA.j());
            }
            jSONObject.put("dsp_material_type", be());
            JSONObject jSONObject17 = new JSONObject();
            jSONObject17.put("loading_landingpage_type", aE());
            String[] strArr = this.aL;
            if (strArr != null && strArr.length > 0) {
                JSONArray jSONArray6 = new JSONArray();
                for (String str : this.aL) {
                    jSONArray6.put(str);
                }
                jSONObject17.put("landingpage_text", jSONArray6);
            }
            jSONObject.put("loading_page", jSONObject17);
            jSONObject.put("deep_link_appname", this.s);
            jSONObject.put("landing_page_download_clicktype", this.t);
            l lVar = this.aM;
            if (lVar != null) {
                jSONObject.put("dsp_style", lVar.e());
            }
            jSONObject.put("jump_probability", this.aT);
            jSONObject.put("identificationOverlayContent", this.aU);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ap() {
        return this.aq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int aq() {
        int i = this.ar;
        if (i > 0) {
            return i;
        }
        return 20;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ar() {
        return this.as;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int as() {
        return this.at;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean at() {
        int i = this.aS;
        return (i == 1 || i == 3) && au() != null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public com.bytedance.sdk.openadsdk.core.g.a au() {
        return this.aA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean av() {
        return this.aS == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String aw() {
        return this.aB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int ax() {
        JSONObject jSONObject = this.aC;
        if (jSONObject != null) {
            return jSONObject.optInt("easy_playable_skip_duration", 0);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public JSONObject ay() {
        return this.aC;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean az() {
        return this.aD == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(double d2) {
        if (d2 == 2.0d || d2 == 1.0d) {
            this.au = (int) d2;
        } else {
            this.au = 2;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(int i) {
        this.h = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(long j) {
        this.F = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(com.bykv.vk.openvk.component.video.api.c.b bVar) {
        this.K = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(n nVar) {
        this.k = nVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(JSONObject jSONObject) {
        this.ah = jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void b(boolean z) {
        this.M = z;
    }

    public int bA() {
        return this.aj;
    }

    public int bB() {
        return this.H;
    }

    public com.bytedance.sdk.component.adexpress.a.c.c bC() {
        q.a aVarI = I();
        if (aVarI == null) {
            return null;
        }
        return q.a.a(aVarI, String.valueOf(aZ()));
    }

    public int bD() {
        return this.G;
    }

    public String bE() {
        return this.ad;
    }

    public int bF() {
        return this.E;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public double ba() {
        return e(aR());
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    @Nullable
    public String bb() {
        c cVarAa = aa();
        if (cVarAa == null || TextUtils.isEmpty(cVarAa.a())) {
            return null;
        }
        return cVarAa.a();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bc() {
        JSONObject jSONObjectAR;
        String strOptString = this.aH;
        if (TextUtils.isEmpty(strOptString) && (jSONObjectAR = aR()) != null) {
            strOptString = jSONObjectAR.optString("req_id", "");
            A(strOptString);
        }
        return strOptString == null ? "" : strOptString;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bd() {
        return D() != null && D().getDurationSlotType() == 8 && av();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int be() {
        return this.aS;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bf() {
        int i = this.h;
        return (i == 2 || i == 1) && 3 == this.f1604g;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bg() {
        l lVar;
        return at() && !bj() && (lVar = this.aM) != null && lVar.a() == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    @Override // com.bytedance.sdk.openadsdk.core.model.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean bh() {
        /*
            r3 = this;
            boolean r0 = r3.bj()
            r1 = 0
            if (r0 != 0) goto L2e
            java.util.Random r0 = new java.util.Random
            r0.<init>()
            r2 = 100
            int r0 = r0.nextInt(r2)
            boolean r2 = r3.at()
            if (r2 == 0) goto L21
            com.bytedance.sdk.openadsdk.core.model.l r2 = r3.aM
            if (r2 == 0) goto L2a
            int r2 = r2.b()
            goto L2b
        L21:
            boolean r2 = com.bytedance.sdk.openadsdk.core.model.t.b(r3)
            if (r2 != 0) goto L2a
            int r2 = r3.aT
            goto L2b
        L2a:
            r2 = 0
        L2b:
            if (r0 >= r2) goto L2e
            r1 = 1
        L2e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.model.u.bh():boolean");
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bi() {
        if (!at() || bj()) {
            return false;
        }
        int iNextInt = new Random().nextInt(100);
        l lVar = this.aM;
        return lVar != null && iNextInt < lVar.c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bj() {
        return this.f1603f.a > 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public ab bk() {
        return this.f1603f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void bl() {
        this.f1603f.d();
        f(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long bm() {
        return this.b;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bn() {
        return this.a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bo() {
        return this.aQ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bp() {
        return this.aR;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bq() {
        return this.aU;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean br() {
        List<Integer> listC;
        return (I() == null || (listC = I().c()) == null || !listC.contains(57)) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String bs() {
        return this.aV;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void bt() {
        com.bykv.vk.openvk.component.video.api.c.b bVar = this.I;
        if (bVar == null || TextUtils.isEmpty(bVar.l())) {
            return;
        }
        try {
            if (this.I.l().contains(StyleParser.STYLE_ID)) {
                this.aW = true;
                this.aV = Uri.parse(this.I.l()).getQueryParameters(StyleParser.STYLE_ID).get(0);
            } else {
                this.aW = false;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d(th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean bu() {
        return this.aW;
    }

    public int bv() {
        return this.ae;
    }

    public String bw() {
        return this.ap;
    }

    public int bx() {
        return this.ac;
    }

    public int by() {
        return this.ab;
    }

    public int bz() {
        return this.ai;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(int i) {
        this.C = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(long j) {
        this.b = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(com.bykv.vk.openvk.component.video.api.c.b bVar) {
        this.J = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(n nVar) {
        this.c.add(nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f1604g = 4;
        this.u = jSONObject.optString("id");
        this.y = jSONObject.optString(ShareConstants.FEED_SOURCE_PARAM);
        c cVar = new c();
        this.v = cVar;
        cVar.c(jSONObject.optString("pkg_name"));
        this.v.b(jSONObject.optString("name"));
        this.v.a(jSONObject.optString(DownloadModel.DOWNLOAD_URL));
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void c(boolean z) {
        this.N = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean c() {
        return this.L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void d(int i) {
        this.D = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void d(JSONObject jSONObject) {
        this.aC = jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void d(boolean z) {
        this.P = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean d() {
        return this.M;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void e(int i) {
        this.ae = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void e(String str) {
        this.aN = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void e(boolean z) {
        this.a = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean e() {
        return this.N;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.u.equals(qVar.Y()) && this.A.equals(qVar.ac());
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String f() {
        return this.aN;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void f(int i) {
        this.ag = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void f(String str) {
        this.aO = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void f(boolean z) {
        this.aQ = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String g() {
        return this.aO;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void g(int i) {
        this.V = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void g(String str) {
        this.B = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void h(int i) {
        this.W = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void h(String str) {
        this.ap = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean h() {
        return (TextUtils.isEmpty(f()) || TextUtils.isEmpty(g())) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public p i() {
        return this.ay;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void i(int i) {
        this.af = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void i(String str) {
        this.ak = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public d j() {
        return this.aP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void j(int i) {
        this.ac = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void j(String str) {
        this.T = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int k() {
        d dVar = this.aP;
        if (dVar == null) {
            return 2;
        }
        return dVar.a();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void k(int i) {
        this.Z = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void k(String str) {
        this.y = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int l() {
        if (at()) {
            return 2;
        }
        if (av()) {
            return 4;
        }
        d dVar = this.aP;
        if (dVar == null) {
            return 1;
        }
        return dVar.b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void l(int i) {
        this.ab = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void l(String str) {
        this.l = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public long m() {
        d dVar = this.aP;
        if (dVar == null) {
            return 0L;
        }
        return dVar.c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void m(int i) {
        this.Y = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void m(String str) {
        this.m = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public t n() {
        return this.az;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void n(int i) {
        this.ai = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void n(String str) {
        this.p = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int o() {
        return this.h;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void o(int i) {
        this.aj = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void o(String str) {
        this.q = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int p() {
        return this.i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void p(int i) {
        this.H = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void p(String str) {
        this.r = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int q() {
        return this.av;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void q(int i) {
        this.Q = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void q(String str) {
        this.u = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int r() {
        return this.au;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void r(int i) {
        this.f1604g = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void r(String str) {
        this.z = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String s() {
        return this.B;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void s(int i) {
        this.x = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void s(String str) {
        this.A = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int t() {
        return this.C;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void t(int i) {
        this.G = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void t(String str) {
        this.al = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int u() {
        int i = this.h;
        if (i == 5 || i == 6) {
            return 1;
        }
        if (bd()) {
            return 2;
        }
        return this.D;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void u(int i) {
        this.an = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void u(String str) {
        this.ad = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void v(int i) {
        this.E = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void v(String str) {
        this.aB = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public boolean v() {
        return this.ae == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int w() {
        return this.ag;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void w(int i) {
        this.aq = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void w(String str) {
        this.s = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int x() {
        return this.V;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String x(String str) {
        JSONObject jSONObjectAR = aR();
        return jSONObjectAR != null ? jSONObjectAR.optString("rit", str) : str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void x(int i) {
        this.ar = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public int y() {
        return this.W;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void y(int i) {
        this.as = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void y(String str) {
        this.aR = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public String z() {
        return this.ak;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void z(int i) {
        this.at = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.model.q
    public void z(String str) {
        this.aU = str;
    }
}
