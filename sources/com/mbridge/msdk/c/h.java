package com.mbridge.msdk.c;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.sdk.AppLovinEventTypes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: UnitSetting.java */
/* JADX INFO: loaded from: classes4.dex */
public final class h {
    private int A;
    private int B;
    private int C;
    private int M;
    private int N;
    private int a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<Integer> f6782g;
    private long h;
    private List<Integer> j;
    private int k;
    private int l;
    private int m;
    private int n;
    private String o;
    private int p;
    private int s;
    private int t;
    private long u;
    private String v;
    private int w;
    private long x;
    private long y;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6779d = 30;
    private int i = 1;
    private int q = 1;
    private int r = 5000;
    private int z = 60;
    private String D = "";
    private int E = 10;
    private int F = 60;
    private String G = "";
    private String H = "";
    private String I = "";
    private int J = 1;
    private int K = 100;
    private int L = 0;

    public static h b(String str) {
        h hVar = null;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            h hVar2 = new h();
            try {
                JSONObject jSONObject = new JSONObject(str);
                hVar2.f6780e = jSONObject.optString(CampaignEx.JSON_KEY_CAMPAIGN_UNITID);
                String strOptString = jSONObject.optString("ab_id");
                hVar2.G = strOptString;
                com.mbridge.msdk.foundation.controller.b.c.put(hVar2.f6780e, strOptString);
                hVar2.I = jSONObject.optString("rid");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("adSourceList");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i)));
                    }
                    hVar2.f6782g = arrayList;
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("ad_source_timeout");
                if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                        arrayList2.add(Integer.valueOf(jSONArrayOptJSONArray2.optInt(i2)));
                    }
                    hVar2.j = arrayList2;
                }
                hVar2.k = jSONObject.optInt("tpqn");
                hVar2.l = jSONObject.optInt("aqn");
                hVar2.m = jSONObject.optInt("acn");
                hVar2.n = jSONObject.optInt("wt");
                int i3 = 1;
                hVar2.q = jSONObject.optInt("iscasf", 1);
                hVar2.r = jSONObject.optInt("spmxrt", 5000);
                hVar2.h = jSONObject.optLong("current_time");
                hVar2.i = jSONObject.optInt(TypedValues.CycleType.S_WAVE_OFFSET);
                hVar2.u = jSONObject.optLong("dlct", 3600L);
                hVar2.s = jSONObject.optInt("autoplay", 0);
                hVar2.t = jSONObject.optInt("dlnet", 2);
                hVar2.v = jSONObject.optString("no_offer");
                hVar2.w = jSONObject.optInt("cb_type");
                hVar2.x = jSONObject.optLong("clct", 86400L);
                hVar2.y = jSONObject.optLong("clcq", 300L);
                hVar2.K = jSONObject.optInt(CampaignEx.JSON_KEY_READY_RATE, 100);
                hVar2.L = jSONObject.optInt("cd_rate", 0);
                hVar2.M = jSONObject.optInt(AppLovinEventTypes.USER_VIEWED_CONTENT, 1);
                hVar2.N = jSONObject.optInt("impt", 0);
                hVar2.p = jSONObject.optInt("icon_type", 1);
                hVar2.o = jSONObject.optString("no_ads_url", "");
                hVar2.a = jSONObject.optInt("playclosebtn_tm", -1);
                hVar2.b = jSONObject.optInt("play_ctdown", 0);
                hVar2.c = jSONObject.optInt("close_alert", 0);
                hVar2.f6779d = jSONObject.optInt("intershowlimit", 30);
                hVar2.z = jSONObject.optInt("refreshFq", 60);
                hVar2.A = jSONObject.optInt("closeBtn", 0);
                int iOptInt = jSONObject.optInt("tmorl", 1);
                if (iOptInt <= 2 && iOptInt > 0) {
                    i3 = iOptInt;
                }
                hVar2.J = i3;
                hVar2.D = jSONObject.optString("placementid", "");
                hVar2.E = jSONObject.optInt("ltafemty", 10);
                hVar2.F = jSONObject.optInt("ltorwc", 60);
                hVar2.H = jSONObject.optString("vtag", "");
                return hVar2;
            } catch (Exception e2) {
                e = e2;
                hVar = hVar2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        e.printStackTrace();
        return hVar;
    }

    public static h c(String str) {
        h hVarL = l();
        hVarL.s = 0;
        return hVarL;
    }

    public static h d(String str) {
        h hVar = new h();
        ArrayList arrayList = new ArrayList();
        arrayList.add(1);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(8);
        arrayList2.add(8);
        hVar.i = 1;
        hVar.f6780e = str;
        hVar.f6782g = arrayList;
        hVar.j = arrayList2;
        hVar.k = 1;
        hVar.m = -2;
        hVar.l = -2;
        hVar.n = 5;
        hVar.u = 3600L;
        hVar.t = 2;
        hVar.s = 1;
        hVar.K = 100;
        hVar.L = 0;
        hVar.M = 1;
        hVar.N = 0;
        hVar.z = 60;
        hVar.E = 10;
        hVar.F = 60;
        return hVar;
    }

    public static h e(String str) {
        h hVar = new h();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(1);
            hVar.f6782g = arrayList;
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(30);
            hVar.j = arrayList2;
            hVar.f6780e = str;
            hVar.i = 1;
            hVar.k = 1;
            hVar.m = -2;
            hVar.l = -2;
            hVar.n = 5;
            hVar.u = 3600L;
            hVar.t = 2;
            hVar.s = 3;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return hVar;
    }

    public static h f(String str) {
        h hVar = new h();
        try {
            hVar.f6780e = str;
            hVar.i = 1;
            hVar.k = 1;
            hVar.n = 5;
            hVar.m = 1;
            hVar.l = 1;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return hVar;
    }

    public static h l() {
        return new h();
    }

    public final String a() {
        return this.G;
    }

    public final void a(int i) {
        this.B = i;
    }

    public final void a(String str) {
        this.f6780e = str;
    }

    public final String b() {
        return this.I;
    }

    public final void b(int i) {
        this.C = i;
    }

    public final int c() {
        return this.z;
    }

    public final void c(int i) {
        this.s = i;
    }

    public final int d() {
        return this.A;
    }

    public final int e() {
        return this.N;
    }

    public final int f() {
        return this.K;
    }

    public final int g() {
        return this.L;
    }

    public final void g(String str) {
        this.D = str;
    }

    public final int h() {
        return this.M;
    }

    public final long i() {
        return this.u;
    }

    public final int j() {
        return this.s;
    }

    public final int k() {
        return this.t;
    }

    public final int m() {
        return this.n;
    }

    public final int n() {
        return this.q;
    }

    public final int o() {
        return this.r;
    }

    public final int p() {
        return this.l;
    }

    public final int q() {
        return this.m;
    }

    public final List<Integer> r() {
        return this.f6782g;
    }

    public final List<Integer> s() {
        return this.j;
    }

    public final JSONObject t() {
        JSONObject jSONObject = new JSONObject();
        try {
            List<Integer> list = this.f6782g;
            if (list != null && list.size() > 0) {
                int size = this.f6782g.size();
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < size; i++) {
                    jSONArray.put(this.f6782g.get(i));
                }
                jSONObject.put("adSourceList", jSONArray);
            }
            List<Integer> list2 = this.j;
            if (list2 != null && list2.size() > 0) {
                int size2 = this.j.size();
                JSONArray jSONArray2 = new JSONArray();
                for (int i2 = 0; i2 < size2; i2++) {
                    jSONArray2.put(this.j.get(i2));
                }
                jSONObject.put("ad_source_timeout", jSONArray2);
            }
            jSONObject.put("tpqn", this.k);
            jSONObject.put("aqn", this.l);
            jSONObject.put("acn", this.m);
            jSONObject.put("wt", this.n);
            jSONObject.put("current_time", this.h);
            jSONObject.put(TypedValues.CycleType.S_WAVE_OFFSET, this.i);
            jSONObject.put("dlct", this.u);
            jSONObject.put("autoplay", this.s);
            jSONObject.put("dlnet", this.t);
            jSONObject.put("no_offer", this.v);
            jSONObject.put("cb_type", this.w);
            jSONObject.put("clct", this.x);
            jSONObject.put("clcq", this.y);
            jSONObject.put(CampaignEx.JSON_KEY_READY_RATE, this.K);
            jSONObject.put(AppLovinEventTypes.USER_VIEWED_CONTENT, this.M);
            jSONObject.put("impt", this.N);
            jSONObject.put("icon_type", this.p);
            jSONObject.put("no_ads_url", this.o);
            jSONObject.put("playclosebtn_tm", this.a);
            jSONObject.put("play_ctdown", this.b);
            jSONObject.put("close_alert", this.c);
            jSONObject.put("closeBtn", this.A);
            jSONObject.put("refreshFq", this.z);
            jSONObject.put("countdown", this.C);
            jSONObject.put("allowSkip", this.B);
            jSONObject.put("tmorl", this.J);
            jSONObject.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, this.f6780e);
            jSONObject.put("placementid", this.D);
            jSONObject.put("ltafemty", this.E);
            jSONObject.put("ltorwc", this.F);
            jSONObject.put("vtag", this.H);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public final String toString() {
        List<Integer> list = this.f6782g;
        String str = "";
        if (list != null && list.size() > 0) {
            Iterator<Integer> it = this.f6782g.iterator();
            while (it.hasNext()) {
                str = str + it.next() + ",";
            }
        }
        return "offset = " + this.i + " unitId = " + this.f6780e + " fbPlacementId = " + this.f6781f + str;
    }

    public final long u() {
        return this.h;
    }

    public final int v() {
        return this.i;
    }

    public final int w() {
        return this.E;
    }

    public final int x() {
        return this.F;
    }

    public final String y() {
        return this.H;
    }
}
