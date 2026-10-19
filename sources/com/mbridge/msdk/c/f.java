package com.mbridge.msdk.c;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ai;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: SettingManager.java */
/* JADX INFO: loaded from: classes4.dex */
public class f {
    public static final String a = "f";
    private static f b;
    private static HashMap<String, h> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile e f6776d = null;

    private f() {
    }

    public static synchronized f a() {
        if (b == null) {
            b = new f();
        }
        return b;
    }

    public static void a(Context context, String str) {
        FastKV fastKVBuild;
        com.mbridge.msdk.foundation.controller.c.a();
        Map<String, Object> all = null;
        try {
            fastKVBuild = new FastKV.Builder(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_CONFIG), "mbridge").build();
        } catch (Exception unused) {
            fastKVBuild = null;
        }
        if (fastKVBuild == null) {
            try {
                Map<String, ?> all2 = context.getSharedPreferences("mbridge", 0).getAll();
                for (String str2 : all2.keySet()) {
                    if (str2.startsWith(str + "_")) {
                        c.put(str2, h.b((String) all2.get(str2)));
                    }
                }
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        try {
            all = fastKVBuild.getAll();
        } catch (Exception unused2) {
        }
        if (all != null) {
            try {
                for (String str3 : all.keySet()) {
                    if (str3.startsWith(str + "_")) {
                        c.put(str3, h.b((String) all.get(str3)));
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    private h h(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = com.mbridge.msdk.foundation.controller.b.d().h();
        }
        String str3 = str + "_" + str2;
        h hVarB = null;
        if (c.containsKey(str3)) {
            return c.get(str3);
        }
        try {
            hVarB = h.b(com.mbridge.msdk.foundation.a.a.a.a().b(str3));
            c.put(str3, hVarB);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return hVarB;
    }

    public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return jSONObject2;
        }
        if (jSONObject2 != null && jSONObject2.length() != 0) {
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if ("unitSetting".equals(next) && jSONObject.has("unitSetting")) {
                    JSONArray jSONArray = jSONObject.getJSONArray("unitSetting");
                    jSONArray.put(0, a((JSONObject) jSONArray.get(0), (JSONObject) jSONObject2.getJSONArray("unitSetting").get(0)));
                    jSONObject.put(next, jSONArray);
                } else {
                    jSONObject.put(next, jSONObject2.opt(next));
                }
            }
        }
        return jSONObject;
    }

    public final void a(String str, String str2, String str3) {
        String str4 = str + "_" + str2;
        com.mbridge.msdk.foundation.a.a.a.a().a(str4, str3);
        c.put(str4, h.b(str3));
    }

    public final boolean a(String str) {
        e eVarB = b(str);
        if (eVarB != null) {
            return eVarB.Z() + (eVarB.Y() * 1000) <= System.currentTimeMillis();
        }
        return true;
    }

    public final boolean a(String str, int i, String str2) {
        try {
            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
            String str3 = str + "_" + i + "_" + str2;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = 0;
            long jLongValue = ((Long) ai.b(contextG, str3, 0L)).longValue();
            e eVarB = b(str);
            if (eVarB == null) {
                eVarB = a().b();
            } else {
                j = jLongValue;
            }
            if (j + (eVarB.S() * 1000) > jCurrentTimeMillis) {
                return false;
            }
            ai.a(contextG, str3, Long.valueOf(jCurrentTimeMillis));
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final boolean a(String str, String str2) {
        e eVarB = b(str2);
        if (a(str2) && a(str2, 1, str)) {
            new g().a(com.mbridge.msdk.foundation.controller.b.d().g(), str2, com.mbridge.msdk.foundation.controller.b.d().j());
        }
        h hVarE = e(str2, str);
        if (eVarB != null && hVarE != null) {
            long jU = eVarB.U() * 1000;
            if (hVarE.u() + jU > System.currentTimeMillis()) {
                return false;
            }
        }
        return true;
    }

    public final e b() {
        e eVar = new e();
        eVar.r(1);
        eVar.e(true);
        eVar.c(3600L);
        eVar.d(0L);
        eVar.d(false);
        eVar.c(false);
        eVar.a(7200L);
        eVar.b("<mvpackage>mbridge</mvpackage>");
        eVar.p(1);
        eVar.b(1800L);
        eVar.q(259200);
        eVar.e(10L);
        eVar.k(1);
        eVar.j(1);
        eVar.l(1);
        eVar.m(0);
        eVar.n(1);
        eVar.o(-1);
        eVar.c(0);
        eVar.e(com.mbridge.msdk.c.a.b.a);
        eVar.d(com.mbridge.msdk.c.a.b.b);
        eVar.b(120);
        eVar.f(false);
        eVar.t(0);
        eVar.u(120);
        eVar.v(1);
        eVar.g(com.mbridge.msdk.foundation.same.a.x);
        eVar.f(com.mbridge.msdk.foundation.same.a.A);
        eVar.e(com.mbridge.msdk.foundation.same.a.z);
        eVar.a(10);
        eVar.h(com.mbridge.msdk.foundation.same.a.B);
        eVar.d(10);
        eVar.x(0);
        eVar.w(0);
        eVar.a("");
        eVar.y(1);
        eVar.b(false);
        eVar.s(1);
        eVar.a(true);
        return eVar;
    }

    public final e b(String str) {
        if (f6776d == null) {
            try {
                String strB = com.mbridge.msdk.foundation.a.a.a.a().b(str);
                if (!TextUtils.isEmpty(strB)) {
                    JSONObject jSONObject = new JSONObject(strB);
                    if (jSONObject.has(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                        jSONObject.remove(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                    }
                    if (jSONObject.has("c")) {
                        jSONObject.remove("c");
                    }
                    f6776d = e.c(jSONObject.toString());
                    if (f6776d != null) {
                        f6776d.ai();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return f6776d;
    }

    public final void b(String str, String str2) {
        com.mbridge.msdk.foundation.a.a.a.a().a(str, str2);
        f6776d = e.c(str2);
        if (f6776d != null) {
            f6776d.ai();
        }
    }

    public final h c(String str, String str2) {
        h hVarE = e(str, str2);
        return hVarE == null ? h.l() : hVarE;
    }

    public final String c(String str) {
        if (str == null) {
            return "";
        }
        try {
            String strB = com.mbridge.msdk.foundation.a.a.a.a().b(str);
            return strB == null ? "" : strB;
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
            return "";
        }
    }

    public final h d(String str, String str2) {
        h hVarH = h(str, str2);
        return hVarH == null ? h.l() : hVarH;
    }

    public final String d(String str) {
        return com.mbridge.msdk.foundation.a.a.a.a().b("ivreward_" + str);
    }

    public final h e(String str, String str2) {
        h hVarH = h(str, str2);
        if (hVarH != null && hVarH.j() == 0) {
            hVarH.c(1);
        }
        return hVarH;
    }

    public final void e(String str) {
        com.mbridge.msdk.foundation.a.a.a.a().c("ivreward_" + str);
    }

    public final h f(String str, String str2) {
        return h(str, str2);
    }

    public final void f(String str) {
        try {
            String strC = c(str);
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strC);
            jSONObject.put("current_time", System.currentTimeMillis());
            b(str, jSONObject.toString());
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    public final e g(String str) {
        e eVarB;
        try {
            return (TextUtils.isEmpty(str) || (eVarB = b(str)) == null) ? b() : eVarB;
        } catch (Exception unused) {
            return b();
        }
    }

    public final void g(String str, String str2) {
        try {
            String strB = com.mbridge.msdk.foundation.a.a.a.a().b(str + "_" + str2);
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strB);
            jSONObject.put("current_time", System.currentTimeMillis());
            a(str, str2, jSONObject.toString());
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }
}
