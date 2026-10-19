package com.gameloft.android2d.iap.utils;

import com.android.billingclient.api.SkuDetails;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.json.o2;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ShopProfile.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    private int[] j;
    private int[] k;
    private Hashtable<String, Hashtable<Integer, g>> a = new Hashtable<>();
    private Hashtable<String, g> b = new Hashtable<>();
    private Hashtable<String, Integer> c = new Hashtable<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Hashtable<String, SkuDetails> f2912d = new Hashtable<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f2913e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<String> f2914f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Hashtable<String, String> f2915g = new Hashtable<>();
    private String h = "1,2,3,4,5,6,";
    private String i = "1,2,3,4,5,6,";
    private String l = "";
    private String m = "";
    private String n = "";
    private String o = "";
    private String p = "";
    private String q = "";
    private String r = "";
    private String s = "";
    private String t = "";
    private String u = "";
    private String v = "";
    private String w = "";
    private String x = "";
    private int y = 0;
    private Hashtable<String, String> z = new Hashtable<>();
    private String A = "";
    private String B = "";
    private String C = "";
    private int D = 0;
    private String E = "";
    private String F = "";
    private String G = "";
    private boolean H = false;

    public String A(String str) {
        if (this.f2915g.isEmpty() || !this.f2915g.containsKey(str)) {
            return null;
        }
        return this.f2915g.get(str);
    }

    public String B(String str) {
        if (this.z.isEmpty()) {
            return null;
        }
        if (this.z.containsKey(str)) {
            return this.z.get(str);
        }
        if (this.z.containsKey(str + "_" + IAPLib.getLanguage().toLowerCase())) {
            return this.z.get(str + "_" + IAPLib.getLanguage().toLowerCase());
        }
        if (!this.z.containsKey(str + "_" + "en".toLowerCase())) {
            return null;
        }
        return this.z.get(str + "_" + "en".toLowerCase());
    }

    public String C() {
        return B("tnc_title");
    }

    public String D() {
        return B("direct_iap_tnc_title");
    }

    public String E() {
        return this.u;
    }

    public String F(String str, String str2) {
        SkuDetails skuDetailsG = G(str);
        if (skuDetailsG == null) {
            return null;
        }
        str2.hashCode();
        switch (str2) {
            case "price_amount_micros":
                break;
        }
        return null;
    }

    public SkuDetails G(String str) {
        if (this.f2912d.isEmpty()) {
            return null;
        }
        return this.f2912d.get(str);
    }

    public boolean H(String str) {
        return this.a.containsKey(str.toLowerCase());
    }

    public boolean I() {
        return this.a.isEmpty();
    }

    public void J() {
        this.h = "0,1,2,3,4,5,";
        this.i = "0,1,2,3,4,5,";
        try {
            String strRmsLoad = RMS.rmsLoad(SUtils.getStringRS(R.string.k_IAPSaveOrderDisplayPrefix) + Device.getSimOperator1());
            if (SUtils.isValidString(strRmsLoad)) {
                strRmsLoad.indexOf(";");
                this.h = strRmsLoad.substring(0, strRmsLoad.indexOf(";"));
                this.i = strRmsLoad.substring(strRmsLoad.indexOf(";") + 1);
            }
        } catch (Exception unused) {
        }
    }

    public void K() {
        try {
            for (g gVar : this.f2913e) {
                if (gVar != null) {
                    String strL = gVar.L();
                    String strB = gVar.u().B();
                    if (!this.a.containsKey(strL)) {
                        Hashtable<Integer, g> hashtable = new Hashtable<>();
                        if (strB != "") {
                            hashtable.put(Integer.valueOf(Integer.parseInt(strB)), gVar);
                            this.c.put(strL.toLowerCase() + "_0", Integer.valueOf(Integer.parseInt(strB)));
                        } else {
                            gVar.u().r0(String.valueOf(0));
                            hashtable.put(0, gVar);
                            this.c.put(strL.toLowerCase() + "_0", 0);
                        }
                        this.a.put(strL, hashtable);
                    } else if (strB != "") {
                        this.c.put(strL.toLowerCase() + "_" + this.a.get(strL).size(), Integer.valueOf(Integer.parseInt(strB)));
                        this.a.get(strL).put(Integer.valueOf(Integer.parseInt(strB)), gVar);
                    } else {
                        int size = this.a.get(strL).size();
                        String str = "" + size;
                        this.c.put(strL.toLowerCase() + "_" + size, Integer.valueOf(Integer.parseInt(str)));
                        gVar.u().r0(String.valueOf(str));
                        this.a.get(strL).put(Integer.valueOf(Integer.parseInt(str)), gVar);
                    }
                    this.b.put(gVar.x(), gVar);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void L() {
        String str;
        boolean z;
        Enumeration<String> enumeration;
        String str2;
        String str3;
        String str4 = "old_formatted_price";
        String str5 = "old_price";
        if (this.f2915g.isEmpty()) {
            return;
        }
        Enumeration<String> enumerationKeys = this.b.keys();
        while (enumerationKeys.hasMoreElements()) {
            g gVar = this.b.get(enumerationKeys.nextElement());
            String strX = gVar.x();
            if (A(strX) != null) {
                try {
                    JSONObject jSONObject = new JSONObject(A(strX));
                    JSONObject jSONObject2 = new JSONObject(gVar.A());
                    JSONArray jSONArray = jSONObject2.getJSONArray("billing_methods");
                    String strF = gVar.f();
                    String str6 = "";
                    if (strF == null || A(strF) == null) {
                        str = "";
                        z = false;
                    } else {
                        JSONObject jSONObject3 = new JSONObject(A(strF));
                        String string = jSONObject3.getString("price");
                        String string2 = jSONObject3.getString("display_price");
                        z = true;
                        str6 = string;
                        str = string2;
                    }
                    enumeration = enumerationKeys;
                    int i = 0;
                    while (true) {
                        str2 = str4;
                        if (i >= jSONArray.length()) {
                            break;
                        }
                        JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                        String str7 = str5;
                        jSONObject4.put("price", jSONObject.get("price"));
                        jSONObject4.put("display_price", jSONObject.get("display_price"));
                        jSONObject4.put("currency", jSONObject.get("currency"));
                        jSONObject4.put("currency_symbol", jSONObject.get("currency_symbol"));
                        if (z) {
                            jSONObject4.put("replaced_price", str6);
                            jSONObject4.put("replaced_display_price", str);
                        }
                        i++;
                        str4 = str2;
                        str5 = str7;
                    }
                    String str8 = str5;
                    jSONObject2.put("billing_methods", jSONArray);
                    jSONObject2.put("locale", IAPLib.getLanguage() + "_" + jSONObject.get("currency").toString().substring(0, 2) + "@currency=" + jSONObject.get("currency"));
                    this.b.get(strX).g("item_json", jSONObject2.toString());
                    this.b.get(strX).u().q0(jSONObject.getString("price"));
                    this.b.get(strX).u().m0(jSONObject.getString("display_price"));
                    this.b.get(strX).u().h0(jSONObject.getString("currency"));
                    if (z) {
                        str5 = str8;
                        this.b.get(strX).g(str5, str6);
                        this.b.get(strX).u().n(str5, str6);
                        str3 = str2;
                        this.b.get(strX).g(str3, str);
                        this.b.get(strX).u().n(str3, str);
                    } else {
                        str3 = str2;
                        str5 = str8;
                    }
                } catch (JSONException unused) {
                    return;
                }
            } else {
                enumeration = enumerationKeys;
                str3 = str4;
            }
            str4 = str3;
            enumerationKeys = enumeration;
        }
    }

    public void M() {
        this.h = "0,1,2,3,4,5,";
        this.i = "0,1,2,3,4,5,";
    }

    public void N() {
        RMS.rmsSave(SUtils.getStringRS(R.string.k_IAPSaveOrderDisplayPrefix) + Device.getSimOperator1(), this.h + ";" + this.i);
    }

    public void O(String str) {
        this.v = str;
    }

    public void P(String str) {
        this.m = str;
    }

    public void Q(String str) {
        this.l = str;
    }

    public void R(String str) {
        this.n = str;
    }

    public void S(int i) {
        this.D = i;
    }

    public void T(String str) {
        this.w = str;
    }

    public void U(String str) {
        this.x = str;
    }

    public void V(String str) {
        this.o = str;
    }

    public void W(String str) {
        this.p = str;
    }

    public void X(String str) {
        this.h = str;
    }

    public void Y(String str) {
        this.i = str;
    }

    public void Z(String str) {
        this.s = str;
    }

    public String a() {
        return this.G;
    }

    public void a0(String str) {
        this.t = str;
    }

    public void b(String str) {
        this.G = str;
    }

    public void b0(String str) {
        this.q = str;
    }

    public void c(g gVar) {
        if (gVar != null) {
            try {
                this.f2913e.add(gVar);
            } catch (Exception unused) {
            }
        }
    }

    public void c0(String str) {
        this.r = str;
    }

    public void d(g gVar) {
        if (gVar != null) {
            try {
                String strL = gVar.L();
                this.f2914f.add(gVar.x());
                if (gVar.f() != null) {
                    this.f2914f.add(gVar.f());
                }
                String strB = gVar.u().B();
                if (strL.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemBundle)) || strL.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemSubscription))) {
                    strB = "";
                }
                if (!this.a.containsKey(strL)) {
                    Hashtable<Integer, g> hashtable = new Hashtable<>();
                    if (strB != "") {
                        hashtable.put(Integer.valueOf(Integer.parseInt(strB)), gVar);
                        this.c.put(strL.toLowerCase() + "_0", Integer.valueOf(Integer.parseInt(strB)));
                    } else {
                        gVar.u().r0(String.valueOf(0));
                        hashtable.put(0, gVar);
                        this.c.put(strL.toLowerCase() + "_0", 0);
                    }
                    this.a.put(strL, hashtable);
                } else if (strB != "") {
                    this.c.put(strL.toLowerCase() + "_" + this.a.get(strL).size(), Integer.valueOf(Integer.parseInt(strB)));
                    this.a.get(strL).put(Integer.valueOf(Integer.parseInt(strB)), gVar);
                } else {
                    int size = this.a.get(strL).size();
                    this.c.put(strL.toLowerCase() + "_" + size, Integer.valueOf(size));
                    Float fValueOf = Float.valueOf(gVar.u().A());
                    int i = 0;
                    for (int i2 = 0; i2 < size && Float.valueOf(this.a.get(strL).get(Integer.valueOf(i2)).u().A()).floatValue() <= fValueOf.floatValue(); i2++) {
                        i++;
                    }
                    while (size > i) {
                        int i3 = size - 1;
                        this.a.get(strL).put(Integer.valueOf(size), this.a.get(strL).get(Integer.valueOf(i3)));
                        this.a.get(strL).get(Integer.valueOf(i3)).u().r0(String.valueOf(size));
                        size--;
                    }
                    gVar.u().r0(String.valueOf(i));
                    this.a.get(strL).put(Integer.valueOf(i), gVar);
                }
                this.b.put(gVar.x(), gVar);
            } catch (Exception unused) {
            }
        }
    }

    public void d0(String str) {
        this.A = str;
    }

    public void e(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.z.put(str, str2);
    }

    public void e0(boolean z) {
        this.H = z;
    }

    public Hashtable<String, Hashtable<Integer, g>> f() {
        return this.a;
    }

    public void f0(String str) {
        this.B = str;
    }

    public String g() {
        return this.v;
    }

    public void g0(String str) {
        this.C = str;
    }

    public int h() {
        return this.D;
    }

    public void h0(String str) {
        this.E = str;
    }

    public g i(String str) {
        if (str == null) {
            return null;
        }
        Enumeration<String> enumerationKeys = this.b.keys();
        while (enumerationKeys.hasMoreElements()) {
            g gVar = this.b.get(enumerationKeys.nextElement());
            if (str.equals(gVar.v())) {
                return gVar;
            }
        }
        return null;
    }

    public void i0(String str) {
        this.F = str;
    }

    public g j(String str) {
        if (str == null) {
            return null;
        }
        Enumeration<String> enumerationKeys = this.b.keys();
        while (enumerationKeys.hasMoreElements()) {
            g gVar = this.b.get(enumerationKeys.nextElement());
            com.gameloft.android2d.iap.billings.a aVarU = gVar.u();
            if (str.equals(aVarU.U()) || str.equals(aVarU.e())) {
                return gVar;
            }
        }
        return null;
    }

    public void j0(String str) {
        this.u = str;
    }

    public Hashtable<Integer, g> k(String str) {
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        return null;
    }

    public void k0(String str, SkuDetails skuDetails) {
        this.f2912d.put(str, skuDetails);
    }

    public g l(String str, int i) {
        String lowerCase = str.toLowerCase();
        int iT = lowerCase.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCash)) ? t(i) : lowerCase.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCoin)) ? u(i) : -1;
        Hashtable<Integer, g> hashtableK = k(lowerCase);
        if (hashtableK != null) {
            return hashtableK.get(Integer.valueOf(iT));
        }
        return null;
    }

    public void l0(String str, String str2) {
        try {
            J();
            int size = this.a.containsKey(str) ? this.a.get(str).size() : -1;
            if (size > 0) {
                this.j = new int[size];
                String string = "";
                for (int i = 0; i < size; i++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(string);
                    sb.append(this.c.get(str + "_" + i));
                    string = sb.toString();
                    this.c.remove(str + "_" + i);
                }
                int i2 = 0;
                for (int i3 = 0; i3 < this.h.length() - 1; i3 += 2) {
                    int i4 = Integer.parseInt(this.h.substring(i3, i3 + 1));
                    if (string.indexOf("" + i4) != -1) {
                        this.j[i2] = i4;
                        i2++;
                    }
                }
            }
            int size2 = this.a.containsKey(str2) ? this.a.get(str2).size() : -1;
            if (size2 > 0) {
                this.k = new int[size2];
                String string2 = "";
                for (int i5 = 0; i5 < size2; i5++) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(string2);
                    sb2.append(this.c.get(str2 + "_" + i5));
                    string2 = sb2.toString();
                    this.c.remove(str2 + "_" + i5);
                }
                int i6 = 0;
                for (int i7 = 0; i7 < this.i.length() - 1; i7 += 2) {
                    int i8 = Integer.parseInt(this.i.substring(i7, i7 + 1));
                    if (string2.indexOf("" + i8) != -1) {
                        this.k[i6] = i8;
                        i6++;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public g m(String str) {
        Enumeration<String> enumerationKeys = this.a.keys();
        if (enumerationKeys == null) {
            return null;
        }
        while (enumerationKeys.hasMoreElements()) {
            String strNextElement = enumerationKeys.nextElement();
            if (strNextElement != null && strNextElement.equals(str)) {
                Enumeration<g> enumerationElements = this.a.get(strNextElement).elements();
                if (enumerationElements.hasMoreElements()) {
                    return enumerationElements.nextElement();
                }
            }
        }
        return null;
    }

    public Hashtable<String, g> n() {
        if (this.a.isEmpty()) {
            return null;
        }
        Enumeration<String> enumerationKeys = this.b.keys();
        Hashtable<String, g> hashtable = new Hashtable<>();
        while (enumerationKeys.hasMoreElements()) {
            g gVar = this.b.get(enumerationKeys.nextElement());
            if (gVar.C().equalsIgnoreCase("1")) {
                hashtable.put(gVar.L(), gVar);
            }
        }
        if (hashtable.isEmpty()) {
            return null;
        }
        return hashtable;
    }

    public String o(String str) {
        return F(str, "price_amount_micros");
    }

    public String p(String str) {
        return F(str, "price_currency_code");
    }

    public String q(String str) {
        return F(str, "price");
    }

    public int r(String str) {
        if (!H(str)) {
            return -1;
        }
        return this.c.get(str.toLowerCase() + "_0").intValue();
    }

    public int s(int i) {
        if (!H(SUtils.getStringRS(R.string.k_ItemBundle))) {
            return -1;
        }
        return this.c.get(SUtils.getStringRS(R.string.k_ItemBundle).toLowerCase() + "_" + i).intValue();
    }

    public int t(int i) {
        int[] iArr = this.j;
        if (iArr != null) {
            return iArr[i];
        }
        return -1;
    }

    public String toString() {
        String str = (((("****************ShopProfile*****************\nCountry Id: '" + this.l + "' [" + this.m + "]' [" + this.n + o2.i.f6491e) + "Operator Id: '" + this.o + "' [" + this.p + o2.i.f6491e) + "Platform Id: '" + this.s + "' [" + this.t + o2.i.f6491e) + "Product Id: '" + this.q + "' [" + this.r + o2.i.f6491e) + "Lan Id: '" + this.w + "' [" + this.x + o2.i.f6491e;
        Enumeration<String> enumerationKeys = this.a.keys();
        while (enumerationKeys.hasMoreElements()) {
            String strNextElement = enumerationKeys.nextElement();
            str = str + "\n----------------------List Type: '" + strNextElement + "'---------------------------";
            Enumeration<g> enumerationElements = this.a.get(strNextElement).elements();
            while (enumerationElements.hasMoreElements()) {
                str = str + "\n" + enumerationElements.nextElement().toString();
            }
        }
        return str;
    }

    public int u(int i) {
        int[] iArr = this.k;
        if (iArr != null) {
            return iArr[i];
        }
        return -1;
    }

    public int v(int i) {
        if (!H(SUtils.getStringRS(R.string.k_ItemSubscription))) {
            return -1;
        }
        return this.c.get(SUtils.getStringRS(R.string.k_ItemSubscription).toLowerCase() + "_" + i).intValue();
    }

    public String w() {
        return this.A;
    }

    public boolean x() {
        return this.H;
    }

    public String y() {
        return this.B;
    }

    public String z() {
        return this.C;
    }
}
