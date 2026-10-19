package com.mbridge.msdk.c;

import android.content.Context;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: SettingRequestController.java */
/* JADX INFO: loaded from: classes4.dex */
public class g {
    private static final String a = "g";

    static /* synthetic */ void a(g gVar, int i, int i2, String str, String str2) {
        try {
            new p(com.mbridge.msdk.foundation.controller.b.d().g()).a(i, i2, 0, str, str2);
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    static /* synthetic */ void a(g gVar, int i, String str) {
        try {
            new p(com.mbridge.msdk.foundation.controller.b.d().g()).a(i, com.mbridge.msdk.foundation.same.net.g.d.a().q, 1, str, com.mbridge.msdk.foundation.same.net.g.d.a().p ? com.mbridge.msdk.foundation.same.net.g.d.a().C : com.mbridge.msdk.foundation.same.net.g.d.a().x);
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    static /* synthetic */ void a(g gVar, Context context, String str) {
        e eVarB;
        f fVarA = f.a();
        if (fVarA != null && (eVarB = fVarA.b(str)) != null) {
            MBridgeConstans.OMID_JS_SERVICE_URL = eVarB.ax();
            MBridgeConstans.OMID_JS_H5_URL = eVarB.aw();
        }
        com.mbridge.msdk.a.b.a(context);
        com.mbridge.msdk.a.b.b(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        String str = com.mbridge.msdk.foundation.same.net.g.d.a().p ? com.mbridge.msdk.foundation.same.net.g.d.a().C : com.mbridge.msdk.foundation.same.net.g.d.a().x;
        try {
            if (!com.mbridge.msdk.foundation.same.net.g.d.a().p || !com.mbridge.msdk.foundation.same.net.g.d.a().M || com.mbridge.msdk.foundation.same.net.g.d.a().L >= com.mbridge.msdk.foundation.same.net.g.d.a().O.size()) {
                return str;
            }
            String str2 = com.mbridge.msdk.foundation.same.net.g.d.a().O.get(com.mbridge.msdk.foundation.same.net.g.d.a().L);
            if (TextUtils.isEmpty(str2)) {
                return str;
            }
            if (!str2.startsWith(ProxyConfig.MATCH_HTTP) && !str2.startsWith("https")) {
                return str;
            }
            return str2 + "/setting";
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Context context, final String str, final String str2) {
        if (!(!com.mbridge.msdk.foundation.same.net.g.d.a().d())) {
            a(context, str, str2);
            return;
        }
        try {
            if (com.mbridge.msdk.foundation.same.net.g.d.a().M) {
                return;
            }
            com.mbridge.msdk.foundation.same.net.g.d.a().M = true;
            if (System.currentTimeMillis() >= com.mbridge.msdk.foundation.a.a.a.a().a("mkey_spare_host_ts").longValue() + 86400000) {
                String strB = com.mbridge.msdk.foundation.a.a.a.a().b("mkey_spare_host");
                if (!TextUtils.isEmpty(strB)) {
                    for (String str3 : strB.split("\n")) {
                        if (!TextUtils.isEmpty(str3.trim()) && !com.mbridge.msdk.foundation.same.net.g.d.a().N.contains(str3.trim())) {
                            com.mbridge.msdk.foundation.same.net.g.d.a().N.add(str3.trim());
                            com.mbridge.msdk.foundation.same.net.g.d.a().O.add(str3.trim());
                        }
                    }
                    b(context, str, str2);
                    return;
                }
            }
            new com.mbridge.msdk.foundation.same.net.h.b(context.getApplicationContext()).get(0, com.mbridge.msdk.foundation.same.net.g.d.a().J, new com.mbridge.msdk.foundation.same.net.h.d(), new com.mbridge.msdk.foundation.same.net.c.a() { // from class: com.mbridge.msdk.c.g.2
                @Override // com.mbridge.msdk.foundation.same.net.c.a
                public final void a(String str4) {
                    aa.a(g.a, "fetch CNDSettingHost success, content = " + str4);
                    if (TextUtils.isEmpty(str4)) {
                        return;
                    }
                    com.mbridge.msdk.foundation.a.a.a.a().a("mkey_spare_host_ts", System.currentTimeMillis());
                    com.mbridge.msdk.foundation.a.a.a.a().a("mkey_spare_host", str4);
                    for (String str5 : str4.split("\n")) {
                        if (!TextUtils.isEmpty(str5.trim()) && !com.mbridge.msdk.foundation.same.net.g.d.a().N.contains(str5.trim())) {
                            com.mbridge.msdk.foundation.same.net.g.d.a().N.add(str5.trim());
                            com.mbridge.msdk.foundation.same.net.g.d.a().O.add(str5.trim());
                        }
                    }
                    g.this.b(context, str, str2);
                }

                @Override // com.mbridge.msdk.foundation.same.net.c.a
                public final void b(String str4) {
                    com.mbridge.msdk.foundation.same.net.g.d.a().M = false;
                    aa.a(g.a, "fetch CNDSettingHost failed, errorCode = " + str4);
                }
            });
        } catch (Throwable th) {
            com.mbridge.msdk.foundation.same.net.g.d.a().M = false;
            aa.d(a, th.getMessage());
        }
    }

    static /* synthetic */ void b(g gVar) {
        try {
            new p(com.mbridge.msdk.foundation.controller.b.d().g()).a();
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    public final void a(final Context context, final String str, final String str2) {
        if (context == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.net.h.d dVar = new com.mbridge.msdk.foundation.same.net.h.d();
        dVar.a("app_id", str);
        dVar.a("sign", SameMD5.getMD5(str + str2));
        try {
            String strAL = f.a().g(str).aL();
            if (TextUtils.isEmpty(strAL)) {
                strAL = "";
            }
            dVar.a("vtag", strAL);
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
        if (com.mbridge.msdk.foundation.same.net.g.d.a().M) {
            dVar.a("st_net", com.mbridge.msdk.foundation.same.net.g.d.a().q + "");
        }
        com.mbridge.msdk.foundation.same.net.h.c cVar = new com.mbridge.msdk.foundation.same.net.h.c() { // from class: com.mbridge.msdk.c.g.1
            @Override // com.mbridge.msdk.foundation.same.net.h.c
            public final void a(String str3) {
                g.a(g.this, 2, com.mbridge.msdk.foundation.same.net.g.d.a().q, str3, g.this.b());
                if (com.mbridge.msdk.foundation.same.net.g.d.a().p) {
                    com.mbridge.msdk.foundation.same.net.g.d.a().L++;
                } else {
                    com.mbridge.msdk.foundation.same.net.g.d.a().K++;
                }
                g.this.b(context, str, str2);
                g.b(g.this);
                aa.d(g.a, "get app setting error" + str3);
            }

            @Override // com.mbridge.msdk.foundation.same.net.h.c
            public final void a(JSONObject jSONObject) {
                try {
                    String strB = g.this.b();
                    int i = com.mbridge.msdk.foundation.same.net.g.d.a().q;
                    if (af.a(jSONObject)) {
                        if (jSONObject.optInt("vtag_status", 0) == 1) {
                            String strC = f.a().c(str);
                            if (!TextUtils.isEmpty(strC)) {
                                try {
                                    jSONObject = f.a().a(new JSONObject(strC), jSONObject);
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                        jSONObject.put("current_time", System.currentTimeMillis());
                        if (com.mbridge.msdk.foundation.same.net.g.d.a().p) {
                            if (TextUtils.isEmpty(jSONObject.optString("hst_st_t"))) {
                                jSONObject.put("hst_st_t", com.mbridge.msdk.foundation.same.net.g.d.a().f7149f);
                            }
                        } else if (TextUtils.isEmpty(jSONObject.optString("hst_st"))) {
                            jSONObject.put("hst_st", com.mbridge.msdk.foundation.same.net.g.d.a().f7148e);
                        }
                        f.a().b(str, jSONObject.toString());
                        com.mbridge.msdk.foundation.same.net.g.d.a().c();
                        if (!TextUtils.isEmpty(jSONObject.optString("mraid_js"))) {
                            com.mbridge.msdk.c.b.a.a().a(context, jSONObject.optString("mraid_js"));
                        }
                        if (!TextUtils.isEmpty(jSONObject.optString("web_env_url"))) {
                            com.mbridge.msdk.c.b.b.a().a(context, jSONObject.optString("web_env_url"));
                        }
                        g.a(g.this, context, str);
                    } else {
                        f.a().f(str);
                    }
                    g.a(g.this, 1, i, "", strB);
                    g.b(g.this);
                } catch (Exception e3) {
                    aa.d(g.a, e3.getMessage());
                }
            }
        };
        com.mbridge.msdk.c.a.c cVar2 = new com.mbridge.msdk.c.a.c(context);
        String str3 = com.mbridge.msdk.foundation.same.net.g.d.a().x;
        try {
            if (com.mbridge.msdk.foundation.same.net.g.d.a().p && com.mbridge.msdk.foundation.same.net.g.d.a().M && com.mbridge.msdk.foundation.same.net.g.d.a().L < com.mbridge.msdk.foundation.same.net.g.d.a().O.size()) {
                String str4 = com.mbridge.msdk.foundation.same.net.g.d.a().O.get(com.mbridge.msdk.foundation.same.net.g.d.a().L);
                if (!TextUtils.isEmpty(str4) && (str4.startsWith(ProxyConfig.MATCH_HTTP) || str4.startsWith("https"))) {
                    str3 = str4 + "/setting";
                }
            }
        } catch (Throwable th2) {
            aa.d(a, th2.getMessage());
        }
        cVar2.get(1, str3, dVar, cVar);
    }

    public final void a(Context context, final String str, String str2, final String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str = com.mbridge.msdk.foundation.controller.b.d().h();
            str2 = com.mbridge.msdk.foundation.controller.b.d().j();
        }
        if (f.a().a(str3, str) && f.a().a(str, 2, str3)) {
            com.mbridge.msdk.foundation.same.net.h.d dVar = new com.mbridge.msdk.foundation.same.net.h.d();
            String str4 = o2.i.f6490d + str3 + o2.i.f6491e;
            dVar.a("unit_ids", str4);
            dVar.a("app_id", str);
            dVar.a("sign", SameMD5.getMD5(str + str2));
            try {
                String strY = f.a().c(str, str4).y();
                if (TextUtils.isEmpty(strY)) {
                    strY = "";
                }
                dVar.a("vtag", strY);
            } catch (Throwable th) {
                aa.d(a, th.getMessage());
            }
            new com.mbridge.msdk.c.a.c(context).get(1, com.mbridge.msdk.foundation.same.net.g.d.a().x, dVar, new com.mbridge.msdk.foundation.same.net.h.c() { // from class: com.mbridge.msdk.c.g.3
                @Override // com.mbridge.msdk.foundation.same.net.h.c
                public final void a(String str5) {
                    g.a(g.this, 2, str5);
                }

                @Override // com.mbridge.msdk.foundation.same.net.h.c
                public final void a(JSONObject jSONObject) {
                    try {
                        if (af.a(jSONObject)) {
                            String strOptString = jSONObject.optString("vtag", "");
                            String strOptString2 = jSONObject.optString("rid", "");
                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("unitSetting");
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
                                if (jSONObject.optInt("vtag_status", 0) == 1) {
                                    f.a();
                                    String strB = com.mbridge.msdk.foundation.a.a.a.a().b(str + "_" + str3);
                                    if (!TextUtils.isEmpty(strB)) {
                                        try {
                                            jSONObjectOptJSONObject = f.a().a(new JSONObject(strB), jSONObjectOptJSONObject);
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                }
                                jSONObjectOptJSONObject.put("current_time", System.currentTimeMillis());
                                jSONObjectOptJSONObject.put("vtag", strOptString);
                                jSONObjectOptJSONObject.put("rid", strOptString2);
                                f.a().a(str, str3, jSONObjectOptJSONObject.toString());
                            }
                        } else {
                            f.a().g(str, str3);
                        }
                        g.a(g.this, 1, "");
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            });
        }
    }
}
