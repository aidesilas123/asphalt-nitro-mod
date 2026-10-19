package com.gameloft.android2d.iap.billings;

import android.text.TextUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.utils.SUtils;
import com.gameloft.android2d.iap.utils.g;
import com.kidoz.sdk.api.general.utils.KidozParams;
import java.util.Hashtable;

/* JADX INFO: compiled from: Billing.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements com.gameloft.android2d.iap.a {
    private String M;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Hashtable<String, String> f2863f = new Hashtable<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2864g = "";
    private String h = "";
    private String i = "";
    private String j = "";
    private String k = "";
    private String l = "";
    private int m = 0;
    private String n = "";
    private String o = "";
    private String p = "";
    private String q = "";
    private String r = "";
    private boolean s = false;
    private String t = "";
    private String u = "";
    private String v = "";
    private String w = "";
    private String x = "";
    private String y = "";
    private String z = "";
    private String A = "";
    private String B = "";
    private String C = "";
    private String D = "";
    private String E = "";
    private Hashtable<String, String> F = new Hashtable<>();
    private String G = "";
    private String H = "";
    private String I = "";
    private String J = "";
    private String K = "";
    private String L = "";
    private String N = "";
    private String O = "";
    private String P = "";
    private String Q = "";

    public String A() {
        return (!IAPLib.c0 || W() || TextUtils.isEmpty(q("old_price"))) ? this.h : q("old_price");
    }

    public void A0(String str) {
        this.l = str;
    }

    public String B() {
        return this.o;
    }

    public void B0(String str) {
        this.G = str;
    }

    public String C() {
        return this.n;
    }

    public void C0(String str) {
        this.p = str;
    }

    public String D() {
        return this.r;
    }

    public String E() {
        return this.q;
    }

    public String F() {
        return this.t;
    }

    public String G() {
        return this.M;
    }

    public String H() {
        return I("tnc");
    }

    public String I(String str) {
        if (this.F.isEmpty()) {
            return null;
        }
        if (this.F.containsKey(str)) {
            return this.F.get(str);
        }
        if (this.F.containsKey(str + "_" + IAPLib.getLanguage().toLowerCase())) {
            return this.F.get(str + "_" + IAPLib.getLanguage().toLowerCase());
        }
        if (!this.F.containsKey(str + "_" + "en".toLowerCase())) {
            return null;
        }
        return this.F.get(str + "_" + "en".toLowerCase());
    }

    public String J() {
        return I("purchase_confirm");
    }

    public String K() {
        return I("purchase_confirm_above_buttons");
    }

    public String L() {
        return I("purchase_confirm_below_buttons");
    }

    public String M() {
        return I(I("direct_iap_purchase_confirm") == null ? "purchase_confirm" : "direct_iap_purchase_confirm");
    }

    public String N() {
        return I("later");
    }

    public String O() {
        return I("ok");
    }

    public String P() {
        return I("back_wp8");
    }

    public String Q() {
        return I("confirm_wp8");
    }

    public String R() {
        return I("hint_wp8");
    }

    public String S() {
        return I("phone_account_notification_wp8");
    }

    public String T() {
        return I("send_sms_wp8");
    }

    public String U() {
        return this.G;
    }

    public String V() {
        return this.p;
    }

    public boolean W() {
        return false;
    }

    public boolean X() {
        return false;
    }

    public boolean Y() {
        return false;
    }

    public String Z() {
        return null;
    }

    public void a() {
    }

    public void a0(String str) {
    }

    public void b() {
    }

    public void b0() {
    }

    public String c() {
        return I(KidozParams.CARRIER_NAME);
    }

    public void c0(String str) {
        this.u = str;
    }

    public void d() {
    }

    public void d0(String str) {
        this.P = str;
    }

    public String e() {
        return q("replaced_content_id");
    }

    public void e0(String str) {
        this.y = str;
    }

    public String f() {
        if (I("build_price_postfix") == null) {
            return "";
        }
        return " " + I("build_price_postfix");
    }

    public void f0(String str) {
        this.f2864g = str;
    }

    public void g() {
    }

    public void g0(String str) {
        this.O = str;
    }

    public void h() {
    }

    public void h0(String str) {
        this.i = str;
    }

    public int i(g gVar) {
        return -1;
    }

    public void i0(String str) {
        this.A = str;
    }

    public void j(String str, String str2, String str3, String str4, boolean z) {
    }

    public void j0(String str) {
        this.B = str;
    }

    public void k(boolean z) {
    }

    public void k0(String str) {
        this.E = str;
    }

    public void l() {
    }

    public void l0(int i) {
        this.m = i;
    }

    public void m(long j) {
    }

    public void m0(String str) {
        this.j = str;
    }

    public void n(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f2863f.put(str, str2);
    }

    public void n0(String str) {
        this.s = false;
        if (str.trim().equals("1")) {
            this.s = true;
        }
    }

    public void o(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.F.put(str, str2);
    }

    public void o0(String str) {
        this.H = str;
    }

    public abstract void p(String str);

    public void p0(String str) {
        this.J = str;
    }

    public String q(String str) {
        if (this.f2863f.isEmpty()) {
            return null;
        }
        return this.f2863f.get(str);
    }

    public void q0(String str) {
        this.h = str;
    }

    public String r() {
        if (IAPLib.isBillTypeMOEnabled()) {
            d0(SUtils.getStringRS(R.string.k_BillTypeMO));
        }
        return this.P;
    }

    public void r0(String str) {
        this.o = str;
    }

    public String s() {
        return this.y;
    }

    public void s0(String str) {
        this.n = str;
    }

    public String t() {
        return this.f2864g;
    }

    public void t0(String str) {
        this.r = str;
    }

    public String toString() {
        return "ProfID: '" + this.n + "' BillingType: '" + this.f2864g + "' Price: '" + this.h + "' Currency: '" + this.i + "(' Formatted Price: '" + this.j + ")' TNC: '" + this.k + "' URL: '" + this.p + "' Proxy Server: '" + this.q + "' Proxy Port: '" + this.r + "' Alias: '" + this.u + "' ServerNumber: '" + this.t + "\n";
    }

    public String u() {
        return this.O;
    }

    public void u0(String str) {
        this.q = str;
    }

    public String v() {
        return this.i;
    }

    public void v0(String str) {
        this.t = str;
    }

    public int w() {
        return this.m;
    }

    public void w0(String str) {
        this.v = str;
    }

    public String x() {
        if (!IAPLib.c0 || W() || TextUtils.isEmpty(q("old_formatted_price"))) {
            return this.j + f();
        }
        return q("old_formatted_price") + f();
    }

    public void x0(String str) {
        this.w = str;
    }

    public String y() {
        return (!IAPLib.c0 || W() || TextUtils.isEmpty(q("old_formatted_price"))) ? this.j : q("old_formatted_price");
    }

    public void y0(String str) {
        this.k = str;
    }

    public String z() {
        return this.H;
    }

    public void z0(String str) {
        this.x = str;
    }
}
