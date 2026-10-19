package com.mbridge.msdk.foundation.b;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.j;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.al;
import com.mbridge.msdk.foundation.tools.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: BaseCandidateCache.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static int b = 4;
    private static String c = "BaseCandidateCache";
    protected com.mbridge.msdk.foundation.db.c a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private JSONArray f7006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JSONObject f7007f;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BaseCandidateCache.java */
    public static class C0398a {
        private double a;
        private b b;

        public C0398a(double d2, b bVar) {
            this.a = d2;
            this.b = bVar;
        }

        public final b a() {
            return this.b;
        }
    }

    private String a(String str, int i, String str2, String str3) {
        if (TextUtils.isEmpty(str) || str.contains("ca_sce") || str.contains("real_rid") || str.contains("real_bp")) {
            return str;
        }
        if (al.c(str) > 0) {
            return str + "&ca_sce=" + i + "&real_rid=" + str2 + "&real_bp=" + str3;
        }
        return str + "?ca_sce=" + i + "&real_rid=" + str2 + "&real_bp=" + str3;
    }

    private String a(Map<Integer, String> map, int i, String str, String str2) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                String value = entry.getValue();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(CampaignEx.JSON_AD_IMP_KEY, entry.getKey());
                jSONObject.put("url", a(value, i, str, str2));
                jSONArray.put(jSONObject);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return jSONArray.toString();
    }

    private List<Map<Integer, String>> a(List<Map<Integer, String>> list, int i, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Map<Integer, String> map = list.get(i2);
            if (map != null && map.size() > 0) {
                for (Map.Entry<Integer, String> entry : map.entrySet()) {
                    map.put(entry.getKey(), a(entry.getValue(), i, str, str2));
                }
                arrayList.add(map);
            }
        }
        return arrayList;
    }

    private String[] a(String[] strArr, int i, String str, String str2) {
        if (strArr == null || strArr.length == 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr2[i2] = a(strArr[i2], i, str, str2);
        }
        return strArr2;
    }

    private List<String> b(List<String> list, int i, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(a(list.get(i2), i, str, str2));
        }
        return arrayList;
    }

    public final long a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return 0L;
        }
        String ecppv = list.get(0).getEcppv();
        if (TextUtils.isEmpty(ecppv)) {
            return 0L;
        }
        String strB = u.b(ecppv);
        if (TextUtils.isEmpty(strB)) {
            return 0L;
        }
        try {
            if (Double.parseDouble(strB) <= 0.0d) {
                return 0L;
            }
            JSONObject jSONObjectE = e(b(str));
            int iOptInt = jSONObjectE != null ? jSONObjectE.optInt("max_cache_num", 20) : 20;
            com.mbridge.msdk.foundation.db.c cVar = this.a;
            if (cVar == null || iOptInt <= 0) {
                return -1L;
            }
            return cVar.a(list, this.f7005d);
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1L;
        }
    }

    public final c a() {
        JSONArray jSONArray;
        c cVar = new c();
        try {
            jSONArray = this.f7006e;
        } catch (Exception unused) {
            cVar.e("checkConfigAndDB exception");
            cVar.a(c.f7012d);
        }
        if (jSONArray != null && jSONArray.length() != 0) {
            if (this.a == null) {
                cVar.e("db error");
                cVar.a(c.f7012d);
                return cVar;
            }
            return cVar;
        }
        cVar.e("setting config is null");
        cVar.a(c.b);
        return cVar;
    }

    public final List<b> a(int i) {
        com.mbridge.msdk.foundation.db.c cVar;
        if (i >= 0 && (cVar = this.a) != null) {
            cVar.a(this.f7005d, i);
            a(b, 1, null, true, "", "", i, this.f7005d);
        }
        com.mbridge.msdk.foundation.db.c cVar2 = this.a;
        if (cVar2 != null) {
            return cVar2.b(this.f7005d, 0);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x017e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(int r17, int r18, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r19, boolean r20, java.lang.String r21, java.lang.String r22, int r23, java.lang.String r24) {
        /*
            Method dump skipped, instruction units count: 425
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.b.a.a(int, int, java.util.List, boolean, java.lang.String, java.lang.String, int, java.lang.String):void");
    }

    public final void a(String str) {
        this.f7005d = str;
    }

    public final void a(String str, String str2, int i, String str3) {
        try {
            if (this.a == null || TextUtils.isEmpty(str3)) {
                return;
            }
            if (i == 1) {
                this.a.a(str2, str, this.f7005d, i);
                a(b, 3, null, true, str2, str, -1, this.f7005d);
            } else if (i == 2) {
                this.a.a(this.f7005d, str2, str);
                a(b, 1, null, true, str2, str, -1, this.f7005d);
            } else if (i == 3) {
                this.a.b(str2, str, this.f7005d);
                a(b, 4, null, true, str2, str, -1, this.f7005d);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(List<C0398a> list, int i) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    Collections.sort(list, new Comparator<C0398a>() { // from class: com.mbridge.msdk.foundation.b.a.1
                        @Override // java.util.Comparator
                        public final /* synthetic */ int compare(C0398a c0398a, C0398a c0398a2) {
                            return Double.compare(c0398a.a, c0398a2.a);
                        }
                    });
                    int size = list.size() - i;
                    if (size > 0) {
                        List<C0398a> listSubList = list.subList(0, size);
                        if (this.a == null || listSubList.size() <= 0) {
                            return;
                        }
                        for (int i2 = 0; i2 < listSubList.size(); i2++) {
                            b bVar = listSubList.get(i2).b;
                            this.a.a(this.f7005d, bVar.b(), bVar.c());
                            a(b, 1, null, true, bVar.b(), bVar.c(), -1, this.f7005d);
                        }
                    }
                }
            } catch (Exception e2) {
                aa.a(c, e2);
            }
        }
    }

    public final void a(List<CampaignEx> list, String str, String str2, int i, String str3, int i2, double d2) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        CampaignEx campaignEx = list.get(i3);
                        campaignEx.setReadyState(0);
                        campaignEx.setNLRid(str);
                        campaignEx.setNRid(str2);
                        campaignEx.setErrReasonByDefaultAd(str3);
                        campaignEx.setErrTypeByDefaultAd(i);
                        String strA = u.a(d2 + "");
                        campaignEx.setNoticeUrl(a(campaignEx.getNoticeUrl(), i2, str2, strA));
                        campaignEx.setClickURL(a(campaignEx.getClickURL(), i2, str2, strA));
                        campaignEx.setImpressionURL(a(campaignEx.getImpressionURL(), i2, str2, strA));
                        campaignEx.setOnlyImpressionURL(a(campaignEx.getOnlyImpressionURL(), i2, str2, strA));
                        campaignEx.setAdvImp(a(campaignEx.getAdvImpList(), i2, str2, strA));
                        j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                        if (nativeVideoTracking != null) {
                            nativeVideoTracking.k(a(nativeVideoTracking.l(), i2, str2, strA));
                            nativeVideoTracking.c(a(nativeVideoTracking.c(), i2, str2, strA));
                            nativeVideoTracking.o(a(nativeVideoTracking.p(), i2, str2, strA));
                            nativeVideoTracking.s(a(nativeVideoTracking.t(), i2, str2, strA));
                            nativeVideoTracking.a(a(nativeVideoTracking.a(), i2, str2, strA));
                            nativeVideoTracking.b(a(nativeVideoTracking.b(), i2, str2, strA));
                            nativeVideoTracking.r(a(nativeVideoTracking.s(), i2, str2, strA));
                            nativeVideoTracking.u(a(nativeVideoTracking.v(), i2, str2, strA));
                            nativeVideoTracking.t(a(nativeVideoTracking.v(), i2, str2, strA));
                            nativeVideoTracking.v(a(nativeVideoTracking.w(), i2, str2, strA));
                            nativeVideoTracking.h(a(nativeVideoTracking.h(), i2, str2, strA));
                            nativeVideoTracking.p(a(nativeVideoTracking.q(), i2, str2, strA));
                            nativeVideoTracking.q(a(nativeVideoTracking.r(), i2, str2, strA));
                            nativeVideoTracking.n(a(nativeVideoTracking.o(), i2, str2, strA));
                            nativeVideoTracking.e(a(nativeVideoTracking.e(), i2, str2, strA));
                            nativeVideoTracking.f(a(nativeVideoTracking.f(), i2, str2, strA));
                            nativeVideoTracking.g(a(nativeVideoTracking.g(), i2, str2, strA));
                            nativeVideoTracking.i(a(nativeVideoTracking.j(), i2, str2, strA));
                            nativeVideoTracking.j(a(nativeVideoTracking.k(), i2, str2, strA));
                            nativeVideoTracking.l(a(nativeVideoTracking.m(), i2, str2, strA));
                            nativeVideoTracking.a(a(nativeVideoTracking.i(), i2, str2, strA));
                            nativeVideoTracking.d(a(nativeVideoTracking.d(), i2, str2, strA));
                            nativeVideoTracking.m(a(nativeVideoTracking.n(), i2, str2, strA));
                            campaignEx.setNativeVideoTracking(nativeVideoTracking);
                            campaignEx.setNativeVideoTrackingString(CampaignEx.object2TrackingStr(nativeVideoTracking));
                        }
                        campaignEx.setPv_urls(b(campaignEx.getPv_urls(), i2, str2, strA));
                    }
                    if (list.size() == 1) {
                        m.a().a(list.get(0));
                    } else {
                        m.a().b(list);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void a(JSONArray jSONArray) {
        this.f7006e = jSONArray;
    }

    public final String b(String str) {
        c cVarD = d(str);
        if (cVarD != null && cVarD.e() != c.f7012d && cVarD.e() != c.b) {
            String[] strArrSplit = u.b(str.split("_")[3]).split("\\|");
            if (strArrSplit.length > 1) {
                return strArrSplit[1];
            }
        }
        return "";
    }

    public final double c(String str) {
        c cVarD = d(str);
        if (cVarD != null && cVarD.e() != c.f7012d && cVarD.e() != c.b) {
            try {
                String[] strArrSplit = u.b(str.split("_")[3]).split("\\|");
                if (strArrSplit.length > 0) {
                    return Double.parseDouble(strArrSplit[0]);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return -1.0d;
    }

    public final c d(String str) {
        c cVar = new c();
        if (TextUtils.isEmpty(str) || str.split("_").length <= 3 || TextUtils.isEmpty(str.split("_")[3])) {
            cVar.e("bid token exception");
            cVar.a(c.b);
            return cVar;
        }
        JSONArray jSONArray = this.f7006e;
        if (jSONArray == null || jSONArray.length() == 0) {
            cVar.e("config is empty");
            cVar.a(c.b);
            return cVar;
        }
        String strB = u.b(str.split("_")[3]);
        if (TextUtils.isEmpty(strB)) {
            cVar.e("bid token exception:decode error");
            cVar.a(c.b);
            return cVar;
        }
        String[] strArrSplit = strB.split("\\|");
        if (strArrSplit.length == 0) {
            cVar.e("bid token can not get bid price");
            cVar.a(c.b);
            return cVar;
        }
        if (strArrSplit.length > 0) {
            try {
                Double.parseDouble(strArrSplit[0]);
            } catch (Exception unused) {
                cVar.e("bid token can not cast bid price");
                cVar.a(c.b);
                return cVar;
            }
        }
        if (TextUtils.isEmpty(this.f7005d)) {
            cVar.e("unitId is empty");
            cVar.a(c.f7012d);
        }
        return cVar;
    }

    public final JSONObject e(String str) {
        JSONArray jSONArray = this.f7006e;
        if (jSONArray == null) {
            return null;
        }
        if (jSONArray.length() <= 1) {
            return this.f7006e.optJSONObject(0);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (int i = 0; i < this.f7006e.length(); i++) {
            try {
                JSONObject jSONObjectOptJSONObject = this.f7006e.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && str.equals(jSONObjectOptJSONObject.getString("g"))) {
                    this.f7007f = jSONObjectOptJSONObject;
                    return jSONObjectOptJSONObject;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }
}
