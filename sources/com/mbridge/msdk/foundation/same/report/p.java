package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.json.b4;
import com.json.o2;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import java.io.File;
import java.net.URLEncoder;

/* JADX INFO: compiled from: ReportController.java */
/* JADX INFO: loaded from: classes4.dex */
public class p {
    public static final String a = "p";
    private final Context b;
    private int c;

    public p(Context context) {
        this.c = 0;
        this.b = context.getApplicationContext();
    }

    public p(Context context, int i) {
        this.c = 0;
        this.b = context;
        this.c = i;
    }

    public final void a() {
        try {
            if (q.a()) {
                com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
                String strH = com.mbridge.msdk.foundation.controller.b.d().h();
                com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(strH);
                if (eVarB == null) {
                    eVarB = com.mbridge.msdk.c.f.a().b();
                }
                int iL = eVarB.L();
                String str = "key=2000053&Appid=" + strH + o2.i.c + "uptips2" + o2.i.b + eVarB.K() + o2.i.c + "info_status" + o2.i.b + com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().c() + o2.i.c + "iseu" + o2.i.b + iL;
                String strA = com.mbridge.msdk.foundation.tools.g.a();
                if (!TextUtils.isEmpty(strA)) {
                    str = str + o2.i.c + v4.w0 + o2.i.b + strA;
                }
                String str2 = str + o2.i.c + "GDPR_area" + o2.i.b + eVarB.aB() + o2.i.c + "GDPR_consent" + o2.i.b + com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().f();
                if (k.a().c()) {
                    k.a().a(str2);
                    return;
                }
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(str2, this.b, ""), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.6
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str3) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str3) {
                    }
                });
                q.b();
            }
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    public final void a(int i, int i2, int i3, String str, String str2) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
            StringBuilder sb = new StringBuilder();
            sb.append("key");
            sb.append(o2.i.b);
            sb.append("2000112");
            sb.append(o2.i.c);
            sb.append("st_net");
            sb.append(o2.i.b);
            sb.append(i2);
            sb.append(o2.i.c);
            sb.append("result");
            sb.append(o2.i.b);
            sb.append(i);
            sb.append(o2.i.c);
            sb.append("type");
            sb.append(o2.i.b);
            sb.append(i3);
            sb.append(o2.i.c);
            sb.append("url");
            sb.append(o2.i.b);
            sb.append(str2);
            sb.append(o2.i.c);
            sb.append("reason");
            sb.append(o2.i.b);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            sb.append(str);
            if (k.a().c()) {
                k.a().a(sb.toString());
            } else {
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(sb.toString(), this.b, ""), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.11
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str3) {
                        aa.a("", "reportSettingLoadFailed onFailed:" + str3);
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str3) {
                        aa.a("", "reportSettingLoadFailed onSuccess");
                    }
                });
            }
        } catch (Throwable unused) {
            aa.d(a, "reportSettingLoadFailed onFailed");
        }
    }

    public final void a(int i, int i2, String str, String str2, String str3) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
            StringBuilder sb = new StringBuilder();
            sb.append("key");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode("2000058", b4.L));
            sb.append(o2.i.c);
            sb.append("appid");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(com.mbridge.msdk.foundation.controller.b.d().h(), b4.L));
            sb.append(o2.i.c);
            sb.append("dl_type");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(i + "", b4.L));
            sb.append(o2.i.c);
            sb.append("dl_link_type");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(i2 + "", b4.L));
            sb.append(o2.i.c);
            sb.append("rid");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str, b4.L));
            sb.append(o2.i.c);
            sb.append("rid_n");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str2, b4.L));
            sb.append(o2.i.c);
            sb.append(BidResponsedEx.KEY_CID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str3, b4.L));
            sb.append(o2.i.c);
            sb.append("tgt_v");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(w.k(this.b) + "", b4.L));
            sb.append(o2.i.c);
            sb.append("app_v_n");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(w.j(this.b) + "", b4.L));
            sb.append(o2.i.c);
            sb.append("app_v_c");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(w.i(this.b) + "", b4.L));
            if (k.a().c()) {
                k.a().a(sb.toString());
            } else {
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(sb.toString(), this.b, ""), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.7
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str4) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str4) {
                    }
                });
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public final void a(int i, String str) {
        new com.mbridge.msdk.foundation.same.report.d.a(this.b).post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(NotificationCompat.CATEGORY_EVENT, q.a((Campaign) null, i, "request"), this.b, str), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.1
            @Override // com.mbridge.msdk.foundation.same.report.d.b
            public final void onFailed(String str2) {
            }

            @Override // com.mbridge.msdk.foundation.same.report.d.b
            public final void onSuccess(String str2) {
            }
        });
    }

    public final void a(final com.mbridge.msdk.foundation.entity.l lVar, final Boolean bool) {
        if (lVar != null) {
            if (lVar.c().equals("GET")) {
                new com.mbridge.msdk.foundation.same.report.d.a(this.b).get(0, lVar.b(), null, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.12
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str) {
                        com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.p.12.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    if (p.this.b != null) {
                                        AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                        if (lVar == null) {
                                            return;
                                        }
                                        com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(p.this.b)).a(lVar.b());
                                        if (!bool.booleanValue() || com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(p.this.b)).b() <= 20) {
                                            return;
                                        }
                                        com.mbridge.msdk.foundation.controller.c.a().c();
                                    }
                                } catch (Exception e2) {
                                    if (MBridgeConstans.DEBUG) {
                                        aa.b(p.a, "reportNetError", e2);
                                    }
                                }
                            }
                        });
                    }
                });
                return;
            }
            if (lVar.c().equals("POST")) {
                com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
                if (TextUtils.isEmpty(lVar.d())) {
                    return;
                }
                com.mbridge.msdk.foundation.same.net.h.d dVarA = q.a(lVar.d(), this.b, lVar.a());
                if (lVar.e() > 0) {
                    dVarA.a("retry", lVar.e() + "");
                }
                aVar.post(0, lVar.b(), dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.13
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str) {
                        com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.p.13.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (p.this.b != null) {
                                    AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                                    if (lVar == null) {
                                        return;
                                    }
                                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(p.this.b)).a(lVar);
                                }
                            }
                        });
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str) {
                        com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.p.13.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (p.this.b != null) {
                                    AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                                    if (lVar == null) {
                                        return;
                                    }
                                    try {
                                        com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(p.this.b)).a(lVar.d(), lVar.b(), lVar.f());
                                        if (!bool.booleanValue() || com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(p.this.b)).a() <= 0) {
                                            return;
                                        }
                                        com.mbridge.msdk.foundation.controller.c.a().c();
                                    } catch (Exception e2) {
                                        if (MBridgeConstans.DEBUG) {
                                            aa.b(p.a, "reportNetError", e2);
                                        }
                                    }
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    public final void a(String str, com.mbridge.msdk.foundation.entity.d dVar, String str2) {
        com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
        String strA = com.mbridge.msdk.foundation.entity.d.a(dVar);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        if (k.a().c()) {
            k.a().a(strA);
        } else {
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(strA, this.b, str2), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.5
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str3) {
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str3) {
                }
            });
        }
    }

    public final void a(String str, final File file) {
        new com.mbridge.msdk.foundation.same.report.d.a(this.b).post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(this.b, str), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.3
            @Override // com.mbridge.msdk.foundation.same.report.d.b
            public final void onFailed(String str2) {
            }

            @Override // com.mbridge.msdk.foundation.same.report.d.b
            public final void onSuccess(String str2) {
                File file2 = file;
                if (file2 != null) {
                    file2.delete();
                }
            }
        });
    }

    public final void a(String str, String str2, String str3) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
            String str4 = "click_type=" + URLEncoder.encode("1", b4.L) + o2.i.c + BidResponsedEx.KEY_CID + o2.i.b + URLEncoder.encode(str, b4.L) + o2.i.c + MBridgeConstans.PROPERTIES_UNIT_ID + o2.i.b + URLEncoder.encode(str2, b4.L) + o2.i.c + "key" + o2.i.b + URLEncoder.encode("2000027", b4.L) + o2.i.c + "http_url" + o2.i.b + URLEncoder.encode(str3, b4.L);
            if (k.a().c()) {
                k.a().a(str4);
            } else {
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(str4, this.b, str2), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.2
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str5) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str5) {
                    }
                });
            }
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
    }

    public final void a(final String str, String str2, String str3, Frame frame) {
        com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
        com.mbridge.msdk.foundation.same.net.h.d dVarA = q.a(str2, this.b, str3);
        if (frame != null) {
            dVarA.a(SDKAnalyticsEvents.PARAMETER_SESSION_ID, frame.getSessionId());
            dVarA.a(CampaignUnit.JSON_KEY_PARENT_SESSION_ID, frame.getParentSessionId());
        }
        aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.4
            @Override // com.mbridge.msdk.foundation.same.report.d.b
            public final void onFailed(String str4) {
            }

            @Override // com.mbridge.msdk.foundation.same.report.d.b
            public final void onSuccess(String str4) {
                if ("click_duration".equals(str) || "load_duration".equals(str)) {
                    com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.p.4.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.mbridge.msdk.foundation.controller.c.a().c();
                        }
                    });
                }
            }
        });
    }

    public final void a(String str, String str2, String str3, String str4, String str5) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
            StringBuilder sb = new StringBuilder();
            int iR = w.r(this.b);
            sb.append("key");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode("2000071", b4.L));
            sb.append(o2.i.c);
            sb.append("rid");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str, b4.L));
            sb.append(o2.i.c);
            sb.append("rid_n");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str2, b4.L));
            sb.append(o2.i.c);
            sb.append(BidResponsedEx.KEY_CID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str3, b4.L));
            sb.append(o2.i.c);
            sb.append(MBridgeConstans.PROPERTIES_UNIT_ID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str4, b4.L));
            sb.append(o2.i.c);
            sb.append("reason");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str5, b4.L));
            sb.append(o2.i.c);
            sb.append(KidozParams.NETWORK_TYPE);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(iR + "", b4.L));
            sb.append(o2.i.c);
            sb.append("result");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode("0", b4.L));
            if (k.a().c()) {
                k.a().a(sb.toString());
            } else {
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(sb.toString(), this.b, str4), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.10
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str6) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str6) {
                    }
                });
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public final void a(String str, String str2, String str3, String str4, String str5, boolean z) {
        try {
            if (TextUtils.isEmpty(str5)) {
                return;
            }
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
            StringBuilder sb = new StringBuilder();
            if (z) {
                sb.append("hb=");
                sb.append(1);
                sb.append(o2.i.c);
            }
            sb.append("key");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode("2000066", b4.L));
            sb.append(o2.i.c);
            sb.append("rid");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str, b4.L));
            sb.append(o2.i.c);
            sb.append("rid_n");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str2, b4.L));
            sb.append(o2.i.c);
            sb.append(BidResponsedEx.KEY_CID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str3, b4.L));
            sb.append(o2.i.c);
            sb.append(MBridgeConstans.PROPERTIES_UNIT_ID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str4, b4.L));
            sb.append(o2.i.c);
            sb.append("err_method");
            sb.append(o2.i.b);
            sb.append(str5);
            if (k.a().c()) {
                k.a().a(sb.toString());
            } else {
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(sb.toString(), this.b, str4), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.8
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str6) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str6) {
                    }
                });
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public final void b(String str, String str2, String str3, String str4, String str5, boolean z) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(this.b);
            StringBuilder sb = new StringBuilder();
            if (z) {
                sb.append("hb=");
                sb.append(1);
                sb.append(o2.i.c);
            }
            sb.append("key");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode("2000065", b4.L));
            sb.append(o2.i.c);
            sb.append("rid");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str, b4.L));
            sb.append(o2.i.c);
            sb.append("rid_n");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str2, b4.L));
            sb.append(o2.i.c);
            sb.append(BidResponsedEx.KEY_CID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str3, b4.L));
            sb.append(o2.i.c);
            sb.append(MBridgeConstans.PROPERTIES_UNIT_ID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str4, b4.L));
            sb.append(o2.i.c);
            sb.append(CampaignEx.JSON_KEY_CLICK_URL);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str5, b4.L));
            if (k.a().c()) {
                k.a().a(sb.toString());
            } else {
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, q.a(sb.toString(), this.b, str4), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.p.9
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str6) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str6) {
                    }
                });
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }
}
