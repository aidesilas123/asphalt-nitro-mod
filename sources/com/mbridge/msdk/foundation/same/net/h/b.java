package com.mbridge.msdk.foundation.same.net.h;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.appevents.UserDataStore;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.h;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.net.Aa;
import com.mbridge.msdk.foundation.same.net.m;
import com.mbridge.msdk.foundation.same.net.o;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.out.CustomInfoManager;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.File;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: compiled from: CommonAsyncHttpRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public class b {
    private static final String TAG = "b";
    protected Context mContext;

    public b(Context context) {
        if (context == null) {
            this.mContext = com.mbridge.msdk.foundation.controller.b.d().g();
        } else {
            this.mContext = context.getApplicationContext();
        }
    }

    private String asUrlParams(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            StringBuilder sb = new StringBuilder();
            try {
                for (String str : map.keySet()) {
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = map.get(str);
                        if (TextUtils.isEmpty(str2)) {
                            str2 = "";
                        }
                        sb.append(o2.i.c);
                        sb.append(str);
                        sb.append(o2.i.b);
                        sb.append(str2);
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d(TAG, e2.getMessage());
                }
                sb = null;
            }
            if (sb != null && sb.length() > 0) {
                return sb.toString();
            }
        }
        return null;
    }

    public static void downloadFile(File file, String str, com.mbridge.msdk.foundation.same.net.e eVar) {
        o.a().a(file, str, eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void post(int r16, java.lang.String r17, com.mbridge.msdk.foundation.same.net.h.d r18, com.mbridge.msdk.foundation.same.net.m r19, com.mbridge.msdk.foundation.same.net.e r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 495
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.h.b.post(int, java.lang.String, com.mbridge.msdk.foundation.same.net.h.d, com.mbridge.msdk.foundation.same.net.m, com.mbridge.msdk.foundation.same.net.e, boolean, boolean):void");
    }

    public void addExtraParams(String str, d dVar) {
        if (dVar != null) {
            dVar.a(MRAIDPresenter.OPEN, com.mbridge.msdk.foundation.same.a.v);
            String strA = Aa.a();
            if (strA == null) {
                strA = "";
            }
            dVar.a("channel", strA);
            dVar.a("band_width", com.mbridge.msdk.foundation.same.net.a.a().e() + "");
            String str2 = dVar.c().get(MBridgeConstans.PROPERTIES_UNIT_ID);
            if (str2 != null) {
                String customInfoByUnitId = CustomInfoManager.getInstance().getCustomInfoByUnitId(str2, str);
                if (!TextUtils.isEmpty(customInfoByUnitId)) {
                    dVar.a("ch_info", customInfoByUnitId);
                }
                h hVarE = com.mbridge.msdk.c.f.a().e(com.mbridge.msdk.foundation.controller.b.d().h(), str2);
                if (hVarE != null && !TextUtils.isEmpty(hVarE.a())) {
                    dVar.a("u_stid", hVarE.a());
                }
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.g()) {
                dVar.a("dev_source", MBridgeConstans.API_REUQEST_CATEGORY_APP);
            }
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                dVar.a("re_domain", "1");
            }
        }
    }

    public void choiceV3OrV5BySetting(int i, d dVar, com.mbridge.msdk.foundation.same.net.e eVar, String str) {
        choiceV3OrV5BySetting(i, dVar, eVar, str, new com.mbridge.msdk.foundation.same.net.b());
    }

    public void choiceV3OrV5BySetting(int i, d dVar, com.mbridge.msdk.foundation.same.net.e eVar, String str, m mVar) {
        com.mbridge.msdk.c.e eVarG = com.mbridge.msdk.c.f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
        int iAJ = TextUtils.isEmpty(str) ? eVarG.aJ() : eVarG.aI();
        String strA = com.mbridge.msdk.foundation.same.net.g.d.a().a(str, iAJ);
        if (iAJ < 2) {
            if (mVar == null) {
                postV5(i, strA, dVar, eVar);
                return;
            } else {
                postV5(i, strA, dVar, eVar, mVar, false);
                return;
            }
        }
        if (iAJ % 2 == 0) {
            if (dVar == null) {
                dVar = new d();
            }
            JSONArray jSONArrayB = com.mbridge.msdk.foundation.db.a.a.a().b();
            if (jSONArrayB != null) {
                String string = jSONArrayB.toString();
                int iB = com.mbridge.msdk.foundation.same.net.g.d.a().b();
                if (iB > 0 && string.length() > iB) {
                    post(i, strA, dVar, eVar);
                    return;
                }
                dVar.a(d.f7152e, string);
            }
        }
        d dVar2 = dVar;
        if (mVar == null) {
            getLoadOrSetting(i, strA, dVar2, eVar);
        } else {
            getLoadOrSetting(i, strA, dVar2, mVar, eVar, true);
        }
    }

    public void get(int i, String str, d dVar, com.mbridge.msdk.foundation.same.net.e eVar) {
        get(i, str, dVar, new com.mbridge.msdk.foundation.same.net.b(), eVar, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void get(int r14, java.lang.String r15, com.mbridge.msdk.foundation.same.net.h.d r16, com.mbridge.msdk.foundation.same.net.m r17, com.mbridge.msdk.foundation.same.net.e r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instruction units count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.h.b.get(int, java.lang.String, com.mbridge.msdk.foundation.same.net.h.d, com.mbridge.msdk.foundation.same.net.m, com.mbridge.msdk.foundation.same.net.e, boolean, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void get(int r3, java.lang.String r4, java.util.Map<java.lang.String, java.lang.String> r5, com.mbridge.msdk.foundation.same.net.m r6, com.mbridge.msdk.foundation.same.net.e r7) {
        /*
            r2 = this;
            if (r5 != 0) goto L7
            java.util.HashMap r5 = new java.util.HashMap
            r5.<init>()
        L7:
            com.mbridge.msdk.foundation.controller.b r0 = com.mbridge.msdk.foundation.controller.b.d()
            java.lang.String r0 = r0.h()
            java.lang.String r1 = "app_id"
            r5.put(r1, r0)
            java.lang.String r0 = "sdk_version"
            java.lang.String r1 = "MAL_16.5.91"
            r5.put(r0, r1)
            java.lang.String r0 = "platform"
            java.lang.String r1 = "1"
            r5.put(r0, r1)
            java.lang.String r5 = r2.asUrlParams(r5)
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 != 0) goto L40
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r4)
            java.lang.String r4 = "?"
            r0.append(r4)
            r0.append(r5)
            java.lang.String r4 = r0.toString()
        L40:
            boolean r5 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r5 == 0) goto L5a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "get wx scheme url = "
            r5.append(r0)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "AppletsModel"
            com.mbridge.msdk.foundation.tools.aa.a(r0, r5)
        L5a:
            r5 = 0
            r0 = 0
            if (r3 == 0) goto L73
            r1 = 1
            if (r3 == r1) goto L6d
            r1 = 2
            if (r3 == r1) goto L65
            goto L79
        L65:
            com.mbridge.msdk.foundation.same.net.e.c r3 = new com.mbridge.msdk.foundation.same.net.e.c     // Catch: java.lang.Exception -> L6b
            r3.<init>(r5, r4, r0, r7)     // Catch: java.lang.Exception -> L6b
            goto L78
        L6b:
            goto L79
        L6d:
            com.mbridge.msdk.foundation.same.net.e.d r3 = new com.mbridge.msdk.foundation.same.net.e.d     // Catch: java.lang.Exception -> L6b
            r3.<init>(r5, r4, r0, r7)     // Catch: java.lang.Exception -> L6b
            goto L78
        L73:
            com.mbridge.msdk.foundation.same.net.e.f r3 = new com.mbridge.msdk.foundation.same.net.e.f     // Catch: java.lang.Exception -> L6b
            r3.<init>(r5, r4, r0, r7)     // Catch: java.lang.Exception -> L6b
        L78:
            r0 = r3
        L79:
            if (r0 == 0) goto L88
            r0.a(r6)     // Catch: java.lang.Exception -> L88
            int r3 = r0.h()     // Catch: java.lang.Exception -> L88
            r0.b(r3)     // Catch: java.lang.Exception -> L88
            com.mbridge.msdk.foundation.same.net.o.b(r0)     // Catch: java.lang.Exception -> L88
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.net.h.b.get(int, java.lang.String, java.util.Map, com.mbridge.msdk.foundation.same.net.m, com.mbridge.msdk.foundation.same.net.e):void");
    }

    public void getCampaign(int i, String str, d dVar, m mVar, com.mbridge.msdk.foundation.same.net.e eVar) {
        d dVar2;
        try {
            com.mbridge.msdk.c.e eVarG = com.mbridge.msdk.c.f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
            int iAJ = TextUtils.isEmpty(str) ? eVarG.aJ() : eVarG.aI();
            String strA = com.mbridge.msdk.foundation.same.net.g.d.a().a(str, iAJ);
            if (mVar == null) {
                mVar = new com.mbridge.msdk.foundation.same.net.b();
            }
            if (iAJ < 2) {
                postV5(i, strA, dVar, eVar, mVar, true);
                return;
            }
            if (iAJ % 2 == 0) {
                dVar2 = dVar == null ? new d() : dVar;
                JSONArray jSONArrayB = com.mbridge.msdk.foundation.db.a.a.a().b();
                if (jSONArrayB != null) {
                    String string = jSONArrayB.toString();
                    int iB = com.mbridge.msdk.foundation.same.net.g.d.a().b();
                    if (iB > 0 && string.length() > iB) {
                        post(i, strA, dVar2, mVar, eVar, true, false);
                        return;
                    }
                    dVar2.a(d.f7152e, string);
                }
            } else {
                dVar2 = dVar;
            }
            get(i, strA, dVar2, mVar, eVar, true, true);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.d(TAG, e2.getMessage());
            }
        }
    }

    public void getLoadOrSetting(int i, String str, d dVar, com.mbridge.msdk.foundation.same.net.e eVar) {
        getLoadOrSetting(i, str, dVar, new com.mbridge.msdk.foundation.same.net.b(), eVar, true);
    }

    public void getLoadOrSetting(int i, String str, d dVar, m mVar, com.mbridge.msdk.foundation.same.net.e eVar, boolean z) {
        get(i, str, dVar, mVar, eVar, z, false);
    }

    public void post(int i, String str, d dVar, com.mbridge.msdk.foundation.same.net.e eVar) {
        post(i, str, dVar, new com.mbridge.msdk.foundation.same.net.b(), eVar, false, false);
    }

    public void postFocusReport(int i, String str, d dVar, com.mbridge.msdk.foundation.same.net.e eVar) {
        post(i, str, dVar, new com.mbridge.msdk.foundation.same.net.b(), eVar, false, true);
    }

    public void postV5(int i, String str, d dVar, com.mbridge.msdk.foundation.same.net.e eVar) {
        String str2 = dVar.c().get("sign");
        if (str2 == null) {
            str2 = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        dVar.a("ts", jCurrentTimeMillis + "");
        dVar.a(UserDataStore.STATE, SameMD5.getMD5(jCurrentTimeMillis + str2));
        post(i, str, dVar, new com.mbridge.msdk.foundation.same.net.b(), eVar, false, false);
    }

    public void postV5(int i, String str, d dVar, com.mbridge.msdk.foundation.same.net.e eVar, m mVar, boolean z) {
        String str2 = dVar.c().get("sign");
        if (str2 == null) {
            str2 = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        dVar.a("ts", jCurrentTimeMillis + "");
        dVar.a(UserDataStore.STATE, SameMD5.getMD5(jCurrentTimeMillis + str2));
        if (mVar != null) {
            post(i, str, dVar, mVar, eVar, z, false);
        } else {
            post(i, str, dVar, new com.mbridge.msdk.foundation.same.net.b(), eVar, z, false);
        }
    }
}
