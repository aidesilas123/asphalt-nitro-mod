package com.mbridge.msdk.videocommon.d;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardSetting.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private Map<String, Integer> a;
    private Map<String, com.mbridge.msdk.videocommon.b.c> b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f7586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f7587g;
    private long h;
    private String i;
    private int j = 0;
    private String k = "";
    private String l = "";

    public static a a(String str) {
        a aVar;
        a aVar2 = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                aVar = new a();
            } catch (Exception e2) {
                e = e2;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("caplist");
                aVar.i = jSONObject.optString("ab_id", "");
                aVar.l = jSONObject.optString("rid", "");
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                    HashMap map = new HashMap();
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys != null && itKeys.hasNext()) {
                        String next = itKeys.next();
                        int iIntValue = Integer.valueOf(jSONObjectOptJSONObject.optInt(next, 1000)).intValue();
                        if (!TextUtils.isEmpty(next)) {
                            if (TextUtils.isEmpty(next) || iIntValue != 0) {
                                map.put(next, Integer.valueOf(iIntValue));
                            } else {
                                map.put(next, 1000);
                            }
                        }
                    }
                    aVar.a = map;
                }
                aVar.b = com.mbridge.msdk.videocommon.b.c.a(jSONObject.optJSONArray("reward"));
                aVar.c = jSONObject.optLong("getpf", 43200L);
                aVar.f7584d = jSONObject.optLong("ruct", 5400L);
                aVar.f7585e = jSONObject.optLong(CampaignEx.JSON_KEY_PLCT, 3600L);
                aVar.f7586f = jSONObject.optLong("dlct", 3600L);
                aVar.f7587g = jSONObject.optLong("vcct", 5L);
                aVar.h = jSONObject.optLong("current_time");
                aVar.k = jSONObject.optString("vtag", "");
                return aVar;
            } catch (Exception e3) {
                e = e3;
                aVar2 = aVar;
                e.printStackTrace();
                return aVar2;
            }
        }
        return aVar2;
    }

    public final String a() {
        return this.k;
    }

    public final void a(int i) {
        this.j = i;
    }

    public final void a(long j) {
        this.c = j;
    }

    public final void a(Map<String, Integer> map) {
        this.a = map;
    }

    public final String b() {
        return this.i;
    }

    public final void b(long j) {
        this.f7584d = j;
    }

    public final void b(Map<String, com.mbridge.msdk.videocommon.b.c> map) {
        this.b = map;
    }

    public final String c() {
        return this.l;
    }

    public final void c(long j) {
        this.f7585e = j;
    }

    public final long d() {
        return this.c * 1000;
    }

    public final void d(long j) {
        this.f7586f = j;
    }

    public final long e() {
        return this.f7584d * 1000;
    }

    public final void e(long j) {
        this.f7587g = j;
    }

    public final long f() {
        return this.f7585e * 1000;
    }

    public final long g() {
        return this.f7586f;
    }

    public final long h() {
        return this.f7587g;
    }

    public final long i() {
        return this.h;
    }

    public final Map<String, Integer> j() {
        if (this.a == null) {
            HashMap map = new HashMap();
            this.a = map;
            map.put("1", 1000);
            this.a.put("9", 1000);
            this.a.put("8", 1000);
        }
        return this.a;
    }

    public final Map<String, com.mbridge.msdk.videocommon.b.c> k() {
        return this.b;
    }

    public final JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        try {
            Map<String, Integer> map = this.a;
            if (map != null && map.size() > 0) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, Integer> entry : this.a.entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue().intValue());
                    }
                    jSONObject.put("caplist", jSONObject2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            Map<String, com.mbridge.msdk.videocommon.b.c> map2 = this.b;
            if (map2 != null && map2.size() > 0) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<String, com.mbridge.msdk.videocommon.b.c> entry2 : this.b.entrySet()) {
                        JSONObject jSONObject3 = new JSONObject();
                        String key = entry2.getKey();
                        com.mbridge.msdk.videocommon.b.c value = entry2.getValue();
                        if (value != null) {
                            jSONObject3.put("name", value.a());
                            jSONObject3.put("amount", value.b());
                            jSONObject3.put("id", key);
                        }
                        jSONArray.put(jSONObject3);
                    }
                    jSONObject.put("reward", jSONArray);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            jSONObject.put("getpf", this.c);
            jSONObject.put("ruct", this.f7584d);
            jSONObject.put(CampaignEx.JSON_KEY_PLCT, this.f7585e);
            jSONObject.put("dlct", this.f7586f);
            jSONObject.put("vcct", this.f7587g);
            jSONObject.put("current_time", this.h);
            jSONObject.put("vtag", this.k);
            jSONObject.put("isDefault", this.j);
            return jSONObject;
        } catch (Exception e4) {
            e4.printStackTrace();
            return jSONObject;
        }
    }
}
