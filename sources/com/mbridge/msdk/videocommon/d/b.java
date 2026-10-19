package com.mbridge.msdk.videocommon.d;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.videocommon.download.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardSettingManager.java */
/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile b f7588d;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CopyOnWriteArrayList<String> f7589e = new CopyOnWriteArrayList<>();
    private static ConcurrentHashMap<String, c> b = new ConcurrentHashMap<>();
    public static a a = null;

    private b() {
    }

    public static b a() {
        if (f7588d == null) {
            synchronized (b.class) {
                if (f7588d == null) {
                    f7588d = new b();
                }
            }
        }
        return f7588d;
    }

    private final boolean a(c cVar) {
        a aVarB = b();
        if (aVarB == null || cVar == null) {
            return true;
        }
        return cVar.x() + aVarB.e() <= System.currentTimeMillis();
    }

    private static c b(boolean z) {
        c cVar = new c();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new com.mbridge.msdk.videocommon.b.b(1, 60, null));
            cVar.a((List<com.mbridge.msdk.videocommon.b.b>) arrayList);
            cVar.m(1);
            cVar.l(1);
            cVar.n(1);
            cVar.q(1);
            cVar.o(1);
            cVar.p(1);
            cVar.h(3);
            cVar.i(80);
            cVar.j(100);
            cVar.k(0);
            cVar.g(2);
            cVar.e(-1);
            cVar.x(70);
            cVar.d(2);
            if (z) {
                cVar.c(5);
            } else {
                cVar.c(-1);
            }
            cVar.b(0);
            cVar.a(0);
            cVar.f(1);
            cVar.r(1);
            cVar.t(3);
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.add(4);
            arrayList2.add(6);
            cVar.a(arrayList2);
            cVar.u(1);
            cVar.v(1);
            cVar.w(60);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return cVar;
    }

    public static boolean c(String str) {
        JSONArray jSONArrayOptJSONArray;
        try {
            if (!TextUtils.isEmpty(str) && (jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("unitSetting")) != null) {
                String strOptString = jSONArrayOptJSONArray.optJSONObject(0).optString(CampaignEx.JSON_KEY_CAMPAIGN_UNITID);
                if (jSONArrayOptJSONArray.length() > 0) {
                    if (!TextUtils.isEmpty(strOptString)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void d(String str, String str2) {
        if (this.c) {
            return;
        }
        this.c = true;
        new com.mbridge.msdk.videocommon.c.a().a(com.mbridge.msdk.foundation.controller.b.d().g(), str, str2);
    }

    private void e(final String str, final String str2) {
        if (!TextUtils.isEmpty(str)) {
            g.a().a(new HashMap(), str, new g.d() { // from class: com.mbridge.msdk.videocommon.d.b.1
                @Override // com.mbridge.msdk.videocommon.download.g.a
                public final void a(String str3, String str4) {
                    q.a(com.mbridge.msdk.foundation.controller.b.d().g(), str, str2, 2, str4);
                }

                @Override // com.mbridge.msdk.videocommon.download.g.a
                public final void a(String str3, String str4, boolean z) {
                    q.a(com.mbridge.msdk.foundation.controller.b.d().g(), str, str2, 1, "");
                }
            });
            return;
        }
        q.a(com.mbridge.msdk.foundation.controller.b.d().g(), str, str2, 2, "alert url is exception ,url:" + str);
    }

    public final c a(String str, String str2) {
        c cVar;
        String str3 = "reward_" + str + "_" + str2;
        if (!b.containsKey(str3)) {
            c cVarC = c.c(com.mbridge.msdk.foundation.a.a.a.a().b(str3));
            if (a(cVarC)) {
                a(str, com.mbridge.msdk.foundation.controller.b.d().j(), str2, null);
                return null;
            }
            b.put(str3, cVarC);
            return cVarC;
        }
        boolean zA = false;
        try {
            cVar = b.get(str3);
            try {
                zA = a(cVar);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            cVar = null;
        }
        if (zA) {
            a(str, com.mbridge.msdk.foundation.controller.b.d().j(), str2, null);
        }
        return cVar;
    }

    public final c a(String str, String str2, boolean z) {
        c cVar;
        String str3 = "reward_" + str + "_" + str2;
        if (b.containsKey(str3)) {
            boolean zA = false;
            try {
                cVar = b.get(str3);
                try {
                    zA = a(cVar);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                cVar = null;
            }
            if (zA) {
                a(str, com.mbridge.msdk.foundation.controller.b.d().j(), str2, null);
            }
            return cVar;
        }
        c cVarC = c.c(com.mbridge.msdk.foundation.a.a.a.a().b(str3));
        if (!a(cVarC)) {
            b.put(str3, cVarC);
            return cVarC;
        }
        if (cVarC != null) {
            return cVarC;
        }
        a(str, com.mbridge.msdk.foundation.controller.b.d().j(), str2, null);
        return b(z);
    }

    public final void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f7589e.remove(str);
        } catch (Exception unused) {
        }
    }

    public final void a(String str, String str2, String str3) {
        String str4 = "reward_" + str + "_" + str2;
        com.mbridge.msdk.foundation.a.a.a.a().a(str4, str3);
        b.put(str4, c.c(str3));
        if (TextUtils.isEmpty(c.a)) {
            return;
        }
        e(c.a, str2);
    }

    public final void a(String str, String str2, String str3, com.mbridge.msdk.videocommon.c.c cVar) {
        if (!TextUtils.isEmpty(str3) && !this.f7589e.contains(str3)) {
            if (!TextUtils.isEmpty(str3)) {
                this.f7589e.add(str3);
            }
            new com.mbridge.msdk.videocommon.c.a().a(com.mbridge.msdk.foundation.controller.b.d().g(), str, str2, str3, cVar);
        }
    }

    public final void a(boolean z) {
        this.c = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.mbridge.msdk.videocommon.d.a b() {
        /*
            r7 = this;
            com.mbridge.msdk.videocommon.d.a r0 = com.mbridge.msdk.videocommon.d.b.a
            if (r0 != 0) goto L77
            com.mbridge.msdk.foundation.a.a.a r0 = com.mbridge.msdk.foundation.a.a.a.a()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "reward_"
            r1.append(r2)
            com.mbridge.msdk.foundation.controller.b r2 = com.mbridge.msdk.foundation.controller.b.d()
            java.lang.String r2 = r2.h()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r0 = r0.b(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L60
            com.mbridge.msdk.videocommon.d.a r0 = com.mbridge.msdk.videocommon.d.a.a(r0)
            if (r0 == 0) goto L44
            long r1 = r0.d()
            long r3 = java.lang.System.currentTimeMillis()
            long r5 = r0.i()
            long r5 = r5 + r1
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 <= 0) goto L44
            r1 = 0
            goto L45
        L44:
            r1 = 1
        L45:
            if (r1 != 0) goto L48
            return r0
        L48:
            com.mbridge.msdk.foundation.controller.b r0 = com.mbridge.msdk.foundation.controller.b.d()
            java.lang.String r0 = r0.h()
            com.mbridge.msdk.foundation.controller.b r1 = com.mbridge.msdk.foundation.controller.b.d()
            java.lang.String r1 = r1.j()
            r7.d(r0, r1)
            com.mbridge.msdk.videocommon.d.a r0 = r7.c()
            return r0
        L60:
            com.mbridge.msdk.foundation.controller.b r0 = com.mbridge.msdk.foundation.controller.b.d()
            java.lang.String r0 = r0.h()
            com.mbridge.msdk.foundation.controller.b r1 = com.mbridge.msdk.foundation.controller.b.d()
            java.lang.String r1 = r1.j()
            r7.d(r0, r1)
            com.mbridge.msdk.videocommon.d.a r0 = r7.c()
        L77:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.d.b.b():com.mbridge.msdk.videocommon.d.a");
    }

    public final void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a().a(com.mbridge.msdk.foundation.controller.b.d().h(), str, false);
        String str2 = c.a;
        if (TextUtils.isEmpty(str2) || !TextUtils.isEmpty(g.a().b(str2))) {
            return;
        }
        e(str2, str);
    }

    public final void b(String str, String str2) {
        com.mbridge.msdk.foundation.a.a.a.a().a("reward_" + str, str2);
        a = a.a(str2);
    }

    public final a c() {
        a aVar = new a();
        HashMap map = new HashMap(5);
        map.put("1", 1000);
        map.put("9", 1000);
        map.put("8", 1000);
        HashMap map2 = new HashMap(3);
        map2.put("1", new com.mbridge.msdk.videocommon.b.c("Virtual Item", 1));
        aVar.a(map);
        aVar.b(map2);
        aVar.a(43200L);
        aVar.b(5400L);
        aVar.c(3600L);
        aVar.d(3600L);
        aVar.e(5L);
        aVar.a(1);
        return aVar;
    }

    public final c c(String str, String str2) {
        String str3 = "reward_" + str + "_" + str2;
        return b.containsKey(str3) ? b.get(str3) : c.c(com.mbridge.msdk.foundation.a.a.a.a().b(str3));
    }
}
