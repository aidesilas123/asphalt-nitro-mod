package com.gameloft.android2d.iap.utils;

import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventParameters;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.wrapper.Image;
import com.json.o2;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: Item.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements Comparable<g> {
    private String a = "";
    private String b = "";
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2908d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2909e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Image f2910f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Hashtable<String, String> f2911g = new Hashtable<>();
    private Hashtable<String, com.gameloft.android2d.iap.billings.a> h = new Hashtable<>();
    private ArrayList<String> i = new ArrayList<>();

    public String A() {
        return m("item_json");
    }

    public String B() {
        String strM = m(AppLovinEventParameters.RESERVATION_END_TIMESTAMP);
        return strM != null ? strM : "";
    }

    public String C() {
        return m("managed");
    }

    public String D() {
        return m("name");
    }

    public String E() {
        String strM = m(o2.h.L);
        return strM != null ? strM : "0";
    }

    public String F() {
        if (IAPLib.c0) {
            return null;
        }
        return m("old_formatted_price");
    }

    public String G() {
        if (IAPLib.c0) {
            return null;
        }
        return m("old_price");
    }

    public String H() {
        return m(AppLovinEventParameters.PRODUCT_IDENTIFIER);
    }

    public String I() {
        return p();
    }

    public String J() {
        String strM = m("subscription_rewards");
        return strM != null ? strM : "";
    }

    public String K() {
        return m("tracking_uid");
    }

    public String L() {
        return this.b;
    }

    public Image M() {
        return this.f2910f;
    }

    public String N() {
        return this.f2909e;
    }

    public boolean O(String str) {
        return this.h.containsKey(str);
    }

    public void P(String str) {
        this.f2908d = str;
    }

    public void Q(String str) {
        this.c = str;
    }

    public void R(String str) {
        this.b = str.toLowerCase();
    }

    public void S(String str) {
        this.a = str;
    }

    public void T(Image image) {
        this.f2910f = image;
    }

    public void U(String str) {
        this.f2909e = str;
    }

    public void a(String str) {
        this.i.add(str);
    }

    public String[] e() {
        if (this.i.isEmpty()) {
            return null;
        }
        ArrayList<String> arrayList = this.i;
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public String f() {
        return m("replaced_content_id");
    }

    public void g(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.f2911g.put(str, str2);
    }

    public void h(com.gameloft.android2d.iap.billings.a aVar) {
        if (aVar != null) {
            this.h.put(aVar.t(), aVar);
        }
    }

    public long i(long j) {
        return j(j, false);
    }

    public long j(long j, boolean z) {
        return j;
    }

    public void k() {
        if (this.i == null) {
            this.i = new ArrayList<>();
        }
        this.i.clear();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public int compareTo(g gVar) {
        return Float.valueOf(Float.parseFloat(u().A())).compareTo(Float.valueOf(Float.parseFloat(gVar.u().A())));
    }

    public String m(String str) {
        if (this.f2911g.isEmpty()) {
            return null;
        }
        String str2 = this.f2911g.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String str3 = this.f2911g.get(str + "_" + IAPLib.getLanguage().toLowerCase());
        if (!TextUtils.isEmpty(str3)) {
            return str3;
        }
        return this.f2911g.get(str + "_" + "en".toLowerCase());
    }

    public com.gameloft.android2d.iap.billings.a n(String str) {
        if (this.h.isEmpty()) {
            return null;
        }
        return this.h.get(str);
    }

    public int o() {
        if (this.h.isEmpty()) {
            return 0;
        }
        return this.h.size();
    }

    public String p() {
        String strM = m("bundle");
        if (strM != null) {
            try {
                JSONArray jSONArray = new JSONArray(strM);
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    boolean zEqualsIgnoreCase = IAPLib.GetParamIAPObject(jSONObject.getString("item"), "consumable").equalsIgnoreCase("true");
                    if (!jSONObject.has("multiplier")) {
                        jSONObject.put("quantity", j(jSONObject.getLong("quantity"), zEqualsIgnoreCase));
                        if (jSONObject.has("replaced_quantity") && !jSONObject.getString("replaced_quantity").equals("null")) {
                            jSONObject.put("replaced_quantity", j(jSONObject.getLong("replaced_quantity"), zEqualsIgnoreCase));
                        }
                    }
                    jSONArray2.put(jSONObject);
                }
                return jSONArray2.toString();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public String q() {
        return m(BidResponsedEx.KEY_CID);
    }

    public long s() {
        String strM = m("amount");
        if (L().equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemBundle)) || L().equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemSubscription))) {
            return 1L;
        }
        if (IAPLib.c0 && !TextUtils.isEmpty(m("old_amount"))) {
            strM = m("old_amount");
        }
        if (strM != null) {
            return i(SUtils.parseLongNumber(strM));
        }
        return 0L;
    }

    public long t() {
        String strM = m("old_amount");
        if (IAPLib.c0 || strM == null) {
            return 0L;
        }
        return i(SUtils.parseLongNumber(strM));
    }

    public String toString() {
        String str = "******Item********\nId: '" + this.c + "' Type: '" + this.b + "' Type_pref: '" + this.a + "'";
        Enumeration<String> enumerationKeys = this.f2911g.keys();
        while (enumerationKeys.hasMoreElements()) {
            String strNextElement = enumerationKeys.nextElement();
            str = str + "\nName: " + strNextElement + " '" + this.f2911g.get(strNextElement) + "'";
        }
        Enumeration<String> enumerationKeys2 = this.h.keys();
        while (enumerationKeys2.hasMoreElements()) {
            str = (str + "\n-----Billing-------") + "\n" + this.h.get(enumerationKeys2.nextElement()).toString();
        }
        return str;
    }

    public com.gameloft.android2d.iap.billings.a u() {
        return n(this.a);
    }

    public String v() {
        return this.f2908d;
    }

    public String w() {
        return m("group");
    }

    public String x() {
        return this.c;
    }

    public String y() {
        return m("image");
    }

    public String z() {
        String strM = m("tag");
        return strM != null ? strM : "";
    }
}
