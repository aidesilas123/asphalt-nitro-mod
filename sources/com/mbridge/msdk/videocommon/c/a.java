package com.mbridge.msdk.videocommon.c;

import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardSettingController.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final String a = "com.mbridge.msdk.videocommon.c.a";

    static /* synthetic */ void a(a aVar, int i, int i2, String str) {
        try {
            new p(com.mbridge.msdk.foundation.controller.b.d().g()).a(i, d.a().q, i2, str, d.a().p ? d.a().E : d.a().z);
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0055 A[Catch: all -> 0x0071, TRY_LEAVE, TryCatch #0 {all -> 0x0071, blocks: (B:3:0x0022, B:5:0x0029, B:7:0x0050, B:11:0x005d, B:12:0x0061, B:16:0x006d, B:8:0x0055), top: B:22:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(android.content.Context r5, final java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            com.mbridge.msdk.foundation.same.net.h.d r0 = new com.mbridge.msdk.foundation.same.net.h.d
            r0.<init>()
            java.lang.String r1 = "app_id"
            r0.a(r1, r6)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r6)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            java.lang.String r7 = com.mbridge.msdk.foundation.tools.SameMD5.getMD5(r7)
            java.lang.String r1 = "sign"
            r0.a(r1, r7)
            com.mbridge.msdk.videocommon.d.b.a()     // Catch: java.lang.Throwable -> L71
            com.mbridge.msdk.videocommon.d.a r7 = com.mbridge.msdk.videocommon.d.b.a     // Catch: java.lang.Throwable -> L71
            if (r7 != 0) goto L55
            com.mbridge.msdk.foundation.a.a.a r7 = com.mbridge.msdk.foundation.a.a.a.a()     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r1.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.String r2 = "reward_"
            r1.append(r2)     // Catch: java.lang.Throwable -> L71
            com.mbridge.msdk.foundation.controller.b r2 = com.mbridge.msdk.foundation.controller.b.d()     // Catch: java.lang.Throwable -> L71
            java.lang.String r2 = r2.h()     // Catch: java.lang.Throwable -> L71
            r1.append(r2)     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L71
            java.lang.String r7 = r7.b(r1)     // Catch: java.lang.Throwable -> L71
            boolean r1 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L71
            if (r1 != 0) goto L55
            com.mbridge.msdk.videocommon.d.a r7 = com.mbridge.msdk.videocommon.d.a.a(r7)     // Catch: java.lang.Throwable -> L71
            goto L57
        L55:
            com.mbridge.msdk.videocommon.d.a r7 = com.mbridge.msdk.videocommon.d.b.a     // Catch: java.lang.Throwable -> L71
        L57:
            java.lang.String r1 = ""
            java.lang.String r2 = "vtag"
            if (r7 != 0) goto L61
            r0.a(r2, r1)     // Catch: java.lang.Throwable -> L71
            goto L7b
        L61:
            java.lang.String r7 = r7.a()     // Catch: java.lang.Throwable -> L71
            boolean r3 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L71
            if (r3 == 0) goto L6c
            goto L6d
        L6c:
            r1 = r7
        L6d:
            r0.a(r2, r1)     // Catch: java.lang.Throwable -> L71
            goto L7b
        L71:
            r7 = move-exception
            java.lang.String r1 = com.mbridge.msdk.videocommon.c.a.a
            java.lang.String r7 = r7.getMessage()
            com.mbridge.msdk.foundation.tools.aa.d(r1, r7)
        L7b:
            com.mbridge.msdk.videocommon.c.a$1 r7 = new com.mbridge.msdk.videocommon.c.a$1
            r7.<init>()
            com.mbridge.msdk.videocommon.c.b r6 = new com.mbridge.msdk.videocommon.c.b
            r6.<init>(r5)
            r5 = 1
            com.mbridge.msdk.foundation.same.net.g.d r1 = com.mbridge.msdk.foundation.same.net.g.d.a()
            java.lang.String r1 = r1.z
            r6.get(r5, r1, r0, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.c.a.a(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public final void a(Context context, final String str, String str2, String str3, final c cVar) {
        com.mbridge.msdk.foundation.same.net.h.d dVar = new com.mbridge.msdk.foundation.same.net.h.d();
        dVar.a("app_id", str);
        dVar.a("sign", SameMD5.getMD5(str + str2));
        dVar.a("unit_ids", o2.i.f6490d + str3 + o2.i.f6491e);
        try {
            com.mbridge.msdk.videocommon.d.c cVarC = com.mbridge.msdk.videocommon.d.b.a().c(str, str3);
            String str4 = "";
            if (cVarC == null) {
                dVar.a("vtag", "");
            } else {
                String strJ = cVarC.j();
                if (!TextUtils.isEmpty(strJ)) {
                    str4 = strJ;
                }
                dVar.a("vtag", str4);
            }
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
        com.mbridge.msdk.foundation.same.net.h.c cVar2 = new com.mbridge.msdk.foundation.same.net.h.c() { // from class: com.mbridge.msdk.videocommon.c.a.2
            @Override // com.mbridge.msdk.foundation.same.net.h.c
            public final void a(String str5) {
                try {
                    com.mbridge.msdk.videocommon.d.b.a().a(this.unitId);
                } catch (Exception e2) {
                    aa.d(a.a, e2.getMessage());
                }
                if (TextUtils.isEmpty(str5)) {
                    c cVar3 = cVar;
                    if (cVar3 != null) {
                        cVar3.b("request error");
                    }
                } else {
                    c cVar4 = cVar;
                    if (cVar4 != null) {
                        cVar4.b(str5);
                    }
                }
                a.a(a.this, 2, 3, str5);
            }

            @Override // com.mbridge.msdk.foundation.same.net.h.c
            public final void a(final JSONObject jSONObject) {
                try {
                    try {
                        com.mbridge.msdk.videocommon.d.b.a().a(this.unitId);
                    } catch (Exception e2) {
                        aa.d(a.a, e2.getMessage());
                    }
                    if (af.a(jSONObject)) {
                        if (jSONObject.optInt("vtag_status", 0) == 1) {
                            com.mbridge.msdk.videocommon.d.b.a();
                            String strB = com.mbridge.msdk.foundation.a.a.a.a().b("reward_" + str + "_" + this.unitId);
                            if (!TextUtils.isEmpty(strB)) {
                                try {
                                    jSONObject = f.a().a(new JSONObject(strB), jSONObject);
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                        }
                        if (com.mbridge.msdk.videocommon.d.b.c(jSONObject.toString())) {
                            jSONObject.put("current_time", System.currentTimeMillis());
                            Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.videocommon.c.a.2.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    com.mbridge.msdk.videocommon.d.b bVarA = com.mbridge.msdk.videocommon.d.b.a();
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    bVarA.a(str, anonymousClass2.unitId, jSONObject.toString());
                                }
                            };
                            com.mbridge.msdk.foundation.controller.c.a();
                            com.mbridge.msdk.foundation.same.f.b.a().execute(runnable);
                            c cVar3 = cVar;
                            if (cVar3 != null) {
                                cVar3.a("request success");
                            }
                        } else {
                            c cVar4 = cVar;
                            if (cVar4 != null) {
                                cVar4.b("data error");
                            }
                        }
                    } else {
                        com.mbridge.msdk.videocommon.d.b bVarA = com.mbridge.msdk.videocommon.d.b.a();
                        String str5 = str;
                        String str6 = this.unitId;
                        try {
                            String strB2 = com.mbridge.msdk.foundation.a.a.a.a().b("reward_" + str5 + "_" + str6);
                            if (!TextUtils.isEmpty(strB2)) {
                                JSONObject jSONObject2 = new JSONObject(strB2);
                                jSONObject2.put("current_time", System.currentTimeMillis());
                                bVarA.a(str5, str6, jSONObject2.toString());
                            }
                        } catch (Throwable th2) {
                            aa.d("RewardSettingManager", th2.getMessage());
                        }
                    }
                    a.a(a.this, 1, 3, "");
                } catch (Throwable th3) {
                    aa.d(a.a, th3.getMessage());
                }
            }
        };
        cVar2.setUnitId(str3);
        new b(context).get(1, d.a().z, dVar, cVar2);
    }
}
