package com.mbridge.msdk.foundation.same.net.g;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.e.a.a.g;
import com.mbridge.msdk.e.o;
import com.mbridge.msdk.e.t;
import com.mbridge.msdk.e.w;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.same.report.i;
import com.mbridge.msdk.foundation.same.report.u;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: RequestUrlUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d {
    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public String I;
    public String J;
    public int K;
    public int L;
    public boolean M;
    public ArrayList<String> N;
    public ArrayList<String> O;
    private final String P;
    private boolean Q;
    private int R;
    private String S;
    private String T;
    private String U;
    private String V;
    private String W;
    private String X;
    private String Y;
    private String Z;
    public String a;
    private String aa;
    private String ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f7147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f7149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f7150g;
    public String h;
    public String i;
    public String j;
    public String k;
    public int l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public int q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public String y;
    public String z;

    /* JADX INFO: compiled from: RequestUrlUtil.java */
    private static class a {
        private static final d a = new d();
    }

    private d() {
        this.P = "RequestUrlUtil";
        this.Q = true;
        this.R = 0;
        this.S = DomainNameUtils.getInstance().DEFAULT_HB_HOST;
        this.a = DomainNameUtils.getInstance().DEFAULT_HOST_ANALYTICS;
        this.b = DomainNameUtils.getInstance().DEFAULT_HOST_REVENUE_DEFAULT;
        this.c = DomainNameUtils.getInstance().DEFAULT_HOST_MONITOR_DEFAULT;
        this.f7147d = DomainNameUtils.getInstance().DEFAULT_HOST_API;
        this.f7148e = DomainNameUtils.getInstance().DEFAULT_HOST_SETTING;
        this.f7149f = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_SETTING;
        this.f7150g = DomainNameUtils.getInstance().DEFAULT_HOST_APPLETS;
        this.h = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_ANALYTICS;
        this.i = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_REVENUE;
        this.j = DomainNameUtils.getInstance().DEFAULT_HOST_PRIVACY;
        this.k = DomainNameUtils.getInstance().DEFAULT_HOST_TCP_MONITOR;
        this.l = 9377;
        this.m = 9988;
        this.n = 9377;
        this.o = 9377;
        this.p = false;
        this.q = 1;
        this.T = "/bid";
        this.U = "/load";
        this.V = "/openapi/ad/v3";
        this.W = "/openapi/ad/v4";
        this.X = "/openapi/ad/v5";
        this.Y = "/image";
        this.Z = "/mapping";
        this.aa = "/setting";
        this.ab = "/sdk/customid";
        this.ac = "/rewardsetting";
        this.ad = "/appwall/setting";
        this.ae = "/batchPaidEvent";
        this.af = "";
        this.r = this.S + this.T;
        this.s = this.S + this.U;
        this.t = this.f7147d + this.V;
        this.u = this.f7147d + this.W;
        this.v = this.f7147d + this.X;
        this.w = this.f7147d + this.Y;
        this.x = this.f7148e + this.aa;
        this.y = this.f7148e + this.ab;
        this.z = this.f7148e + this.ac;
        this.A = this.f7148e + this.Z;
        this.B = this.f7148e + this.ad;
        this.C = this.f7149f + this.aa;
        this.D = this.f7149f + this.ab;
        this.E = this.f7149f + this.ac;
        this.F = this.f7149f + this.Z;
        this.G = this.f7149f + this.ad;
        this.H = this.b + this.ae;
        this.I = this.b + this.af;
        this.J = DomainNameUtils.getInstance().DEFAULT_CDN_SPARE_SETTING_URL;
        this.K = 0;
        this.L = 0;
        this.M = false;
        this.N = DomainNameUtils.getInstance().SPARE_SETTING_HOST;
        this.O = DomainNameUtils.getInstance().SPARE_TCP_SETTING_HOST;
    }

    public static d a() {
        return a.a;
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("(https|http)://[-A-Za-z0-9{}+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]").matcher(str.trim()).matches();
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Uri.parse(str).getHost();
        } catch (Throwable th) {
            aa.d("RequestUrlUtil", th.getMessage());
            return "";
        }
    }

    public final String a(String str, int i) {
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split("_");
                return strArrSplit.length > 1 ? a(true, strArrSplit[1]) : a(true, "");
            }
        } catch (Exception e2) {
            aa.d("RequestUrlUtil", e2.getMessage());
        }
        return i % 2 == 0 ? this.v : this.t;
    }

    public final String a(boolean z, String str) {
        if (!z) {
            return this.r.replace(JsonUtils.EMPTY_JSON, "");
        }
        if (!this.s.contains(JsonUtils.EMPTY_JSON) || TextUtils.isEmpty(str)) {
            return this.s.replace(JsonUtils.EMPTY_JSON, "");
        }
        return this.s.replace(JsonUtils.EMPTY_JSON, str + "-");
    }

    public final void a(int i) {
        this.R = i;
    }

    public final int b() {
        return this.R;
    }

    public final void c() {
        HashMap<String, String> mapAE;
        e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB != null) {
            com.mbridge.msdk.c.a aVarH = eVarB.h();
            if (aVarH != null) {
                this.i = aVarH.c();
                this.m = aVarH.d();
                this.b = aVarH.b();
                this.H = this.b + this.ae;
            }
            com.mbridge.msdk.c.b bVarG = eVarB.g();
            if (bVarG != null) {
                this.k = bVarG.b();
                this.o = bVarG.c();
                this.c = bVarG.a();
                this.I = this.c + this.af;
                com.mbridge.msdk.c.b bVarG2 = eVarB.g();
                if (bVarG2 != null && bVarG2.e() != 1) {
                    int iA = ac.a().a("monitor", "type", ac.a().a("t_r_t", 0));
                    if (iA != 0 && iA != 1) {
                        iA = 0;
                    }
                    t.a().a(com.mbridge.msdk.foundation.controller.b.d().g(), new w.a().a(new i()).a(new u()).a(iA, iA == 1 ? new o(new com.mbridge.msdk.foundation.same.report.t((byte) 2), a.a.k, a.a.o) : new o(new g(), a.a.I, 0)).e(ac.a().a("t_m_e_t", 604800000)).a(ac.a().a("t_m_e_s", 50)).d(ac.a().a("t_m_r_c", 50)).b(ac.a().a("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS)).c(ac.a().a("t_m_r_t_s", 2)).a(), bVarG2.d() * 1000, h.c());
                }
            }
            this.p = eVarB.aK() == 2;
            this.q = eVarB.aK();
            this.Q = !eVarB.i(2);
            if (eVarB.aE() != null && eVarB.aE().size() > 0 && (mapAE = eVarB.aE()) != null && mapAE.size() > 0) {
                if (mapAE.containsKey("v") && !TextUtils.isEmpty(mapAE.get("v")) && a(mapAE.get("v"))) {
                    this.f7147d = mapAE.get("v");
                    this.t = this.f7147d + this.V;
                    this.u = this.f7147d + this.W;
                    this.v = this.f7147d + this.X;
                    this.w = this.f7147d + this.Y;
                }
                if (mapAE.containsKey(CampaignEx.JSON_KEY_HB) && !TextUtils.isEmpty(mapAE.get(CampaignEx.JSON_KEY_HB)) && a(mapAE.get(CampaignEx.JSON_KEY_HB))) {
                    this.S = mapAE.get(CampaignEx.JSON_KEY_HB);
                    this.r = this.S + this.T;
                    this.s = this.S + this.U;
                }
                if (mapAE.containsKey("lg") && !TextUtils.isEmpty(mapAE.get("lg"))) {
                    String str = mapAE.get("lg");
                    if (a(str)) {
                        this.a = str;
                    } else {
                        this.h = str;
                    }
                }
                if (mapAE.containsKey("lgt") && !TextUtils.isEmpty(mapAE.get("lgt"))) {
                    String str2 = mapAE.get("lgt");
                    if (a(str2)) {
                        String strB = b(str2);
                        if (!TextUtils.isEmpty(strB)) {
                            this.h = strB;
                        }
                    } else {
                        this.h = str2;
                    }
                }
            }
            String strE = eVarB.E();
            if (!TextUtils.isEmpty(strE)) {
                this.f7148e = strE;
                e();
                this.N.add(0, strE);
            }
            String strF = eVarB.F();
            if (TextUtils.isEmpty(strF)) {
                return;
            }
            this.f7149f = strF;
            f();
            this.O.add(0, strF);
        }
    }

    public final boolean d() {
        try {
            if (this.p) {
                ArrayList<String> arrayList = this.O;
                if (arrayList != null && this.L <= arrayList.size() - 1) {
                    if (!a(this.O.get(this.L))) {
                        this.f7149f = this.O.get(this.L);
                        f();
                    }
                    return true;
                }
            } else {
                ArrayList<String> arrayList2 = this.N;
                if (arrayList2 != null && this.K <= arrayList2.size() - 1) {
                    this.f7148e = this.N.get(this.K);
                    e();
                    return true;
                }
            }
            if (this.M) {
                this.K = 0;
                this.L = 0;
            }
            return false;
        } catch (Throwable th) {
            aa.a("RequestUrlUtil", th.getMessage());
            return false;
        }
    }

    public final void e() {
        this.x = this.f7148e + this.aa;
        this.y = this.f7148e + this.ab;
        this.z = this.f7148e + this.ac;
        this.A = this.f7148e + this.Z;
        this.B = this.f7148e + this.ad;
    }

    public final void f() {
        this.C = this.f7149f + this.aa;
        this.D = this.f7149f + this.ab;
        this.E = this.f7149f + this.ac;
        this.F = this.f7149f + this.Z;
        this.G = this.f7149f + this.ad;
    }
}
