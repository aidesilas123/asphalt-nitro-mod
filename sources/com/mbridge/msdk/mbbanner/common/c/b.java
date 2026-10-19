package com.mbridge.msdk.mbbanner.common.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.db.k;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.e;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.mbbanner.common.b.d;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.videocommon.download.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: compiled from: BannerLoader.java */
/* JADX INFO: loaded from: classes4.dex */
public class b {
    private static final String a = "b";
    private Context b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.a.c f7284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.util.a f7285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.b.b f7286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f7287g;
    private int c = 0;
    private volatile boolean h = false;
    private Timer i = new Timer();
    private volatile List<String> j = new ArrayList();
    private volatile boolean k = false;
    private volatile boolean l = false;
    private volatile boolean m = false;

    /* JADX INFO: compiled from: BannerLoader.java */
    private static class a implements com.mbridge.msdk.foundation.same.c.c {
        private b a;
        private String b;
        private CampaignEx c;

        public a(b bVar, String str, CampaignEx campaignEx) {
            this.a = bVar;
            this.b = str;
            this.c = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onFailedLoad(String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                aa.b(b.a, "DownloadImageListener campaign image fail");
            }
            b bVar = this.a;
            if (bVar != null) {
                bVar.a(this.b, 1, str2, false, this.c);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onSuccessLoad(Bitmap bitmap, String str) {
            if (MBridgeConstans.DEBUG) {
                aa.b(b.a, "DownloadImageListener campaign image success");
            }
            b bVar = this.a;
            if (bVar != null) {
                bVar.a(this.b, 1, str, true, this.c);
            }
        }
    }

    public b(Context context, com.mbridge.msdk.mbbanner.common.a.c cVar, com.mbridge.msdk.mbbanner.common.b.b bVar, com.mbridge.msdk.mbbanner.common.util.a aVar) {
        this.b = context.getApplicationContext();
        this.f7284d = cVar;
        this.f7286f = bVar;
        this.f7285e = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String a(java.lang.String r14, java.lang.String r15, com.mbridge.msdk.foundation.entity.CampaignEx r16) throws java.lang.Throwable {
        /*
            r13 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r15)
            java.lang.String r1 = ""
            if (r0 != 0) goto La1
            r2 = 0
            com.mbridge.msdk.foundation.same.b.c r0 = com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_HTML     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            java.lang.String r0 = com.mbridge.msdk.foundation.same.b.e.b(r0)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            java.lang.String r3 = com.mbridge.msdk.foundation.tools.al.b(r15)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            java.lang.String r3 = com.mbridge.msdk.foundation.tools.SameMD5.getMD5(r3)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            if (r4 == 0) goto L25
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
        L25:
            java.lang.String r4 = ".html"
            java.lang.String r3 = r3.concat(r4)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            r4.<init>(r0, r3)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            android.net.Uri r0 = android.net.Uri.parse(r15)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            r0.getPath()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5e
            byte[] r0 = r15.getBytes()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L58
            r3.write(r0)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L58
            r3.flush()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L58
            java.lang.String r1 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L58
            r3.close()     // Catch: java.lang.Exception -> L4e
            goto L67
        L4e:
            r0 = move-exception
            r2 = r0
            r2.printStackTrace()
            goto L67
        L54:
            r0 = move-exception
            r1 = r0
            r2 = r3
            goto L95
        L58:
            r0 = move-exception
            r2 = r3
            goto L5f
        L5b:
            r0 = move-exception
            r1 = r0
            goto L95
        L5e:
            r0 = move-exception
        L5f:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L67
            r2.close()     // Catch: java.lang.Exception -> L4e
        L67:
            java.io.File r0 = new java.io.File
            r0.<init>(r1)
            boolean r2 = r0.exists()
            if (r2 == 0) goto L8a
            boolean r2 = r0.isFile()
            if (r2 == 0) goto L8a
            boolean r0 = r0.canRead()
            if (r0 != 0) goto L7f
            goto L8a
        L7f:
            r4 = 2
            r6 = 1
            r2 = r13
            r3 = r14
            r5 = r15
            r7 = r16
            r2.a(r3, r4, r5, r6, r7)
            goto La1
        L8a:
            r9 = 2
            r11 = 0
            r7 = r13
            r8 = r14
            r10 = r15
            r12 = r16
            r7.a(r8, r9, r10, r11, r12)
            goto La1
        L95:
            if (r2 == 0) goto La0
            r2.close()     // Catch: java.lang.Exception -> L9b
            goto La0
        L9b:
            r0 = move-exception
            r2 = r0
            r2.printStackTrace()
        La0:
            throw r1
        La1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbbanner.common.c.b.a(java.lang.String, java.lang.String, com.mbridge.msdk.foundation.entity.CampaignEx):java.lang.String");
    }

    private List<CampaignEx> a(String str, CampaignUnit campaignUnit) {
        ArrayList arrayList = new ArrayList();
        if (campaignUnit != null) {
            try {
                if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
                    ArrayList<CampaignEx> ads = campaignUnit.getAds();
                    for (int i = 0; i < ads.size(); i++) {
                        CampaignEx campaignEx = ads.get(i);
                        if (campaignEx != null && campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getBannerUrl()) || !TextUtils.isEmpty(campaignEx.getBannerHtml()) || !TextUtils.isEmpty(campaignEx.getImageUrl()))) {
                            if (af.b(campaignEx)) {
                                campaignEx.setRtinsType(af.c(this.b, campaignEx.getPackageName()) ? 1 : 2);
                            }
                            if (campaignEx.getWtick() == 1 || !af.c(this.b, campaignEx.getPackageName())) {
                                arrayList.add(campaignEx);
                            } else if (af.b(campaignEx)) {
                                arrayList.add(campaignEx);
                            } else {
                                af.a(str, campaignEx, com.mbridge.msdk.foundation.same.a.w);
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return arrayList;
    }

    static /* synthetic */ void a(b bVar, final String str, final CampaignUnit campaignUnit) throws Throwable {
        CampaignEx campaignEx = null;
        if (campaignUnit == null) {
            bVar.f7285e.a(bVar.f7286f, new e(3, "campaignUnit is NULL!"), str, null);
            bVar.f7287g.a(str);
            return;
        }
        List<CampaignEx> listA = bVar.a(str, campaignUnit);
        new Thread(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.c.b.3
            @Override // java.lang.Runnable
            public final void run() {
                k.a(h.a(b.this.b)).b();
                CampaignUnit campaignUnit2 = campaignUnit;
                if (campaignUnit2 == null || campaignUnit2.getAds() == null || campaignUnit.getAds().size() <= 0) {
                    return;
                }
                BannerUtils.uisList(b.this.b, campaignUnit.getAds());
            }
        }).start();
        if (listA == null || listA.size() == 0) {
            e eVar = new e(11, "Need show campaign list is NULL!");
            com.mbridge.msdk.mbbanner.common.util.a aVar = bVar.f7285e;
            com.mbridge.msdk.mbbanner.common.b.b bVar2 = bVar.f7286f;
            if (campaignUnit.getAds() != null && campaignUnit.getAds().size() != 0) {
                campaignEx = campaignUnit.getAds().get(0);
            }
            aVar.a(bVar2, eVar, str, campaignEx);
            bVar.f7287g.a(str);
            try {
                com.mbridge.msdk.mbbanner.common.util.a aVar2 = bVar.f7285e;
                q.a(com.mbridge.msdk.foundation.controller.b.d().g(), eVar, str, aVar2 != null ? aVar2.a() : false, campaignUnit);
                return;
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                    return;
                }
                return;
            }
        }
        final CampaignEx campaignEx2 = listA.get(0);
        bVar.i.schedule(new TimerTask() { // from class: com.mbridge.msdk.mbbanner.common.c.b.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                if (b.this.h) {
                    return;
                }
                b.this.h = true;
                b.this.a(str, -1, "", false, campaignEx2);
            }
        }, 60000);
        bVar.f7284d.a(campaignUnit.getSessionId());
        int size = bVar.c;
        try {
            if (listA.size() > 0) {
                size += listA.size();
            }
            if (size > bVar.f7284d.c()) {
                size = 0;
            }
            if (ak.b(str)) {
                bVar.f7284d.a(size);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        String strTrim = campaignEx2.getBannerUrl().trim();
        if (TextUtils.isEmpty(strTrim)) {
            String strTrim2 = campaignEx2.getBannerHtml().trim();
            if (TextUtils.isEmpty(strTrim2)) {
                bVar.l = true;
                bVar.k = true;
            } else {
                String strA = bVar.a(str, strTrim2, campaignEx2);
                if (listA.size() > 0) {
                    for (int i = 0; i < listA.size(); i++) {
                        listA.get(i).setBannerHtml(strA);
                        listA.get(i).setHasMBTplMark(strTrim2.contains("<MBTPLMARK>"));
                    }
                }
            }
        } else {
            if (!TextUtils.isEmpty(strTrim)) {
                g.a().a(strTrim, new com.mbridge.msdk.mbbanner.common.b.e(bVar, str, campaignEx2));
            }
            if (listA.size() > 0) {
                for (int i2 = 0; i2 < listA.size(); i2++) {
                    listA.get(i2).setBannerUrl(campaignEx2.getBannerUrl());
                    listA.get(i2).setHasMBTplMark(true);
                }
            }
        }
        bVar.a(str, listA);
    }

    private void a(String str) {
        if (this.m) {
            return;
        }
        if ((this.k || this.l) && this.j.size() == 0) {
            this.h = true;
            this.m = true;
            this.i.cancel();
            this.f7285e.a(this.f7286f, str);
            this.f7287g.a(str);
        }
    }

    private void a(String str, List<CampaignEx> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (CampaignEx campaignEx : list) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                this.j.add(campaignEx.getImageUrl());
                com.mbridge.msdk.foundation.same.c.b.a(this.b).a(campaignEx.getImageUrl(), new a(this, str, campaignEx));
            }
        }
    }

    private int b(String str) {
        try {
            int iB = this.f7284d.b();
            if (iB > this.f7284d.c()) {
                return 0;
            }
            return iB;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public final void a(String str, int i, String str2, boolean z, CampaignEx campaignEx) {
        if (!z) {
            this.i.cancel();
            this.h = true;
            this.f7285e.a(this.f7286f, str, campaignEx);
            this.f7287g.a(str);
            return;
        }
        if (i == 1) {
            synchronized (this) {
                this.j.remove(str2);
                if (this.j.size() == 0) {
                    a(str);
                }
            }
            return;
        }
        if (i == 2) {
            this.l = true;
            a(str);
        } else if (i == 3) {
            this.k = true;
            a(str);
        }
    }

    public final void a(String str, String str2, final com.mbridge.msdk.mbbanner.common.a.b bVar, d dVar) {
        boolean z;
        try {
            this.f7287g = dVar;
            com.mbridge.msdk.mbbanner.common.f.a aVar = new com.mbridge.msdk.mbbanner.common.f.a() { // from class: com.mbridge.msdk.mbbanner.common.c.b.2
                @Override // com.mbridge.msdk.mbbanner.common.f.a
                public final void a(int i, String str3) {
                    try {
                        String strE = bVar.e();
                        new HashMap().put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        m.a().a("2000126", strE, new HashMap());
                    } catch (Exception unused) {
                    }
                    b.this.f7285e.a(b.this.f7286f, new e(3, str3), this.unitId, null);
                    b.this.f7287g.a(this.unitId);
                }

                @Override // com.mbridge.msdk.mbbanner.common.f.a
                public final void a(CampaignUnit campaignUnit) throws Throwable {
                    try {
                        HashMap map = new HashMap();
                        map.put("result", "1");
                        campaignUnit.setLocalRequestId(bVar.e());
                        m.a().a("2000126", campaignUnit.getAds(), map);
                    } catch (Exception unused) {
                    }
                    try {
                        b.this.f7285e.a(b.this.f7286f, campaignUnit, this.unitId);
                        b.a(b.this, this.unitId, campaignUnit);
                    } catch (Exception e2) {
                        b.this.f7285e.a(b.this.f7286f, new e(3, e2.getMessage()), this.unitId, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.ads.get(0));
                        b.this.f7287g.a(this.unitId);
                    }
                }
            };
            aVar.setUnitId(str2);
            aVar.setPlacementId(str);
            aVar.setAdType(296);
            com.mbridge.msdk.mbbanner.common.e.a aVar2 = new com.mbridge.msdk.mbbanner.common.e.a(this.b);
            this.c = b(str2);
            com.mbridge.msdk.foundation.same.net.h.d dVarA = com.mbridge.msdk.mbbanner.common.a.d.a(false, this.b, str2, this.f7284d.a(), this.c, bVar);
            String strH = af.h(str2);
            if (!TextUtils.isEmpty(strH)) {
                dVarA.a("j", strH);
            }
            String strC = bVar.c();
            if (TextUtils.isEmpty(strC)) {
                z = false;
            } else {
                aVar.a(strC);
                z = true;
            }
            this.f7285e.a(z);
            try {
                HashMap map = new HashMap();
                map.put("auto_load", (bVar.f() ? 1 : 2) + "");
                m.a().a("2000125", bVar.e(), map);
            } catch (Exception unused) {
            }
            aVar2.choiceV3OrV5BySetting(1, dVarA, aVar, strC);
        } catch (Exception e2) {
            e2.printStackTrace();
            this.f7285e.a(this.f7286f, new e(1, e2.getMessage()), str2, null);
            this.f7287g.a(str2);
        }
    }
}
