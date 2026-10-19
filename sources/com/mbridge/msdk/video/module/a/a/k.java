package com.mbridge.msdk.video.module.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.q;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.w;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: StatisticsOnNotifyListener.java */
/* JADX INFO: loaded from: classes4.dex */
public class k extends f {
    protected boolean a;
    protected CampaignEx b;
    protected List<CampaignEx> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f7560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.download.a f7561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected com.mbridge.msdk.videocommon.b.c f7562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f7563g;
    protected String h;
    protected com.mbridge.msdk.video.module.a.a i;
    protected int j;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;

    public k(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.b.c cVar, String str, String str2, com.mbridge.msdk.video.module.a.a aVar2, int i, boolean z) {
        this.f7560d = false;
        this.i = new f();
        this.j = 1;
        if (!z && campaignEx != null && ak.b(str2) && aVar != null && aVar2 != null) {
            this.b = campaignEx;
            this.h = str;
            this.f7563g = str2;
            this.f7561e = aVar;
            this.f7562f = cVar;
            this.i = aVar2;
            this.a = true;
            this.j = i;
            this.f7560d = false;
            return;
        }
        if (!z || campaignEx == null || !ak.b(str2) || aVar2 == null) {
            return;
        }
        this.b = campaignEx;
        this.h = str;
        this.f7563g = str2;
        this.f7561e = aVar;
        this.f7562f = cVar;
        this.i = aVar2;
        this.a = true;
        this.j = i;
        this.f7560d = true;
    }

    public final void a() {
        if (!this.a || this.b == null) {
            return;
        }
        com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000061", this.b.getId(), this.b.getRequestId(), this.b.getRequestIdNotice(), this.f7563g, w.r(com.mbridge.msdk.foundation.controller.b.d().g()));
        nVar.b(this.b.isMraid() ? com.mbridge.msdk.foundation.entity.n.a : com.mbridge.msdk.foundation.entity.n.b);
        com.mbridge.msdk.foundation.same.report.n.b(nVar, com.mbridge.msdk.foundation.controller.b.d().g(), this.f7563g);
    }

    public final void a(int i) {
        if (this.b != null) {
            if (i == 1 || i == 2) {
                com.mbridge.msdk.video.module.b.b.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.b, i, this.j);
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.a.a.f, com.mbridge.msdk.video.module.a.a
    public void a(int i, Object obj) {
        super.a(i, obj);
        this.i.a(i, obj);
    }

    public final void a(int i, String str) {
        if (this.b != null) {
            com.mbridge.msdk.foundation.same.report.n.c(new com.mbridge.msdk.foundation.entity.n("2000062", this.b.getId(), this.b.getRequestId(), this.b.getRequestIdNotice(), this.f7563g, w.r(com.mbridge.msdk.foundation.controller.b.d().g()), i, str), com.mbridge.msdk.foundation.controller.b.d().g(), this.f7563g);
        }
    }

    public final void a(CampaignEx campaignEx) {
        this.b = campaignEx;
    }

    protected final void a(String str) {
        try {
            if (this.a) {
                q qVarA = q.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
                com.mbridge.msdk.foundation.entity.n nVar = null;
                if (!TextUtils.isEmpty(this.b.getNoticeUrl())) {
                    int iR = w.r(com.mbridge.msdk.foundation.controller.b.d().g());
                    nVar = new com.mbridge.msdk.foundation.entity.n("2000021", iR, this.b.getNoticeUrl(), str, w.a(com.mbridge.msdk.foundation.controller.b.d().g(), iR));
                } else if (!TextUtils.isEmpty(this.b.getClickURL())) {
                    int iR2 = w.r(com.mbridge.msdk.foundation.controller.b.d().g());
                    nVar = new com.mbridge.msdk.foundation.entity.n("2000021", iR2, this.b.getClickURL(), str, w.a(com.mbridge.msdk.foundation.controller.b.d().g(), iR2));
                }
                if (nVar != null) {
                    nVar.r(this.b.getId());
                    nVar.e(this.b.getVideoUrlEncode());
                    nVar.t(str);
                    nVar.n(this.b.getRequestId());
                    nVar.p(this.b.getRequestIdNotice());
                    nVar.q(this.f7563g);
                    qVarA.a(nVar);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(List<CampaignEx> list) {
        this.c = list;
    }

    public final void b() {
        Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.video.module.a.a.k.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    k kVar = k.this;
                    if (!kVar.a || kVar.b == null || !ak.b(kVar.f7563g) || com.mbridge.msdk.foundation.controller.b.d().g() == null) {
                        return;
                    }
                    com.mbridge.msdk.foundation.db.j jVarA = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
                    com.mbridge.msdk.foundation.entity.f fVar = new com.mbridge.msdk.foundation.entity.f();
                    fVar.a(System.currentTimeMillis());
                    fVar.b(k.this.f7563g);
                    fVar.a(k.this.b.getId());
                    jVarA.a(fVar);
                } catch (Throwable th) {
                    aa.b("NotifyListener", th.getMessage(), th);
                }
            }
        };
        com.mbridge.msdk.foundation.controller.c.a();
        com.mbridge.msdk.foundation.same.f.b.a().execute(runnable);
    }

    public final void b(int i) {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            String noticeUrl = campaignEx.getNoticeUrl();
            if (TextUtils.isEmpty(noticeUrl)) {
                return;
            }
            if (i == 1 || i == 2) {
                if (!noticeUrl.contains("endscreen_type")) {
                    StringBuilder sb = new StringBuilder(noticeUrl);
                    if (noticeUrl.contains("?")) {
                        sb.append("&endscreen_type=");
                        sb.append(i);
                    } else {
                        sb.append("?endscreen_type=");
                        sb.append(i);
                    }
                    noticeUrl = sb.toString();
                } else if (i == 2) {
                    if (noticeUrl.contains("endscreen_type=1")) {
                        noticeUrl = noticeUrl.replace("endscreen_type=1", "endscreen_type=2");
                    }
                } else if (noticeUrl.contains("endscreen_type=2")) {
                    noticeUrl = noticeUrl.replace("endscreen_type=2", "endscreen_type=1");
                }
                this.b.setNoticeUrl(noticeUrl);
            }
        }
    }

    protected final void b(String str) {
        List<CampaignEx> list;
        if (this.b == null || (list = this.c) == null || list.size() == 0) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("camp_position")) {
                this.b = this.c.get(jSONObject.getInt("camp_position"));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public final void c() {
        try {
            Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.video.module.a.a.k.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        k kVar = k.this;
                        if (kVar.a && kVar.b != null && ak.b(kVar.f7563g)) {
                            com.mbridge.msdk.videocommon.a.a aVarA = com.mbridge.msdk.videocommon.a.a.a();
                            k kVar2 = k.this;
                            aVarA.a(kVar2.b, kVar2.f7563g);
                        }
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            e2.printStackTrace();
                        }
                    }
                    try {
                        com.mbridge.msdk.videocommon.a.a aVarA2 = com.mbridge.msdk.videocommon.a.a.a();
                        k kVar3 = k.this;
                        aVarA2.c(kVar3.h, kVar3.b.getAdType());
                    } catch (Exception e3) {
                        if (MBridgeConstans.DEBUG) {
                            e3.printStackTrace();
                        }
                    } catch (Throwable th) {
                        aa.a("NotifyListener", th.getMessage());
                    }
                }
            };
            com.mbridge.msdk.foundation.controller.c.a();
            com.mbridge.msdk.foundation.same.f.b.a().execute(runnable);
        } catch (Throwable th) {
            aa.b("NotifyListener", th.getMessage(), th);
        }
    }

    protected final void d() {
        com.mbridge.msdk.videocommon.download.a aVar = this.f7561e;
        if (aVar != null) {
            aVar.f(true);
        }
    }

    protected final void e() {
        Map<String, Long> map;
        String str;
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isDynamicView() && this.f7560d && !this.b.isCampaignIsFiltered()) {
                this.l = true;
                return;
            }
            if (!this.a || TextUtils.isEmpty(this.b.getOnlyImpressionURL()) || (map = com.mbridge.msdk.foundation.same.a.d.a) == null || map.containsKey(this.b.getOnlyImpressionURL()) || this.l) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.d.a.put(this.b.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
            String onlyImpressionURL = this.b.getOnlyImpressionURL();
            if (this.b.getSpareOfferFlag() == 1) {
                str = onlyImpressionURL + "&to=1&cbt=" + this.b.getCbt() + "&tmorl=" + this.j;
            } else {
                str = onlyImpressionURL + "&to=0&cbt=" + this.b.getCbt() + "&tmorl=" + this.j;
            }
            String str2 = str;
            if (!this.f7560d || this.b.isCampaignIsFiltered()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.b, this.f7563g, str2, false, true, com.mbridge.msdk.click.a.a.h);
                c();
            }
            this.l = true;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected final void f() {
        try {
            if (!this.a || this.k || TextUtils.isEmpty(this.b.getImpressionURL())) {
                return;
            }
            this.k = true;
            if (this.b.isBidCampaign() && this.b != null) {
                try {
                    HashMap map = new HashMap();
                    List<com.mbridge.msdk.foundation.entity.c> listB = com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).b(this.b.getCampaignUnitId(), this.b.getRequestId());
                    if (listB != null && listB.size() > 0 && listB.get(0) != null) {
                        if (listB.get(0).d() == 1) {
                            map.put("encrypt_p=", "encrypt_p=" + listB.get(0).b());
                            map.put("irlfa=", "irlfa=1");
                            for (Map.Entry entry : map.entrySet()) {
                                String str = (String) entry.getKey();
                                String str2 = (String) entry.getValue();
                                CampaignEx campaignEx = this.b;
                                campaignEx.setImpressionURL(campaignEx.getImpressionURL().replaceAll(str, str2));
                                CampaignEx campaignEx2 = this.b;
                                campaignEx2.setOnlyImpressionURL(campaignEx2.getOnlyImpressionURL().replaceAll(str, str2));
                            }
                        }
                        aa.a("BidReplaceCampignDao", "removeReplace count " + com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(this.b.getRequestId()));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            String impressionURL = this.b.getImpressionURL();
            com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.b, this.f7563g, this.b.getSpareOfferFlag() == 1 ? impressionURL + "&to=1&cbt=" + this.b.getCbt() + "&tmorl=" + this.j : impressionURL + "&to=0&cbt=" + this.b.getCbt() + "&tmorl=" + this.j, false, true, com.mbridge.msdk.click.a.a.f6792g);
            com.mbridge.msdk.video.module.b.b.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.b);
            new Thread(new Runnable() { // from class: com.mbridge.msdk.video.module.a.a.k.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        com.mbridge.msdk.foundation.db.k.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g())).b(k.this.b.getId());
                    } catch (Throwable th) {
                        aa.b("NotifyListener", th.getMessage(), th);
                    }
                }
            }).start();
            if (!this.a || com.mbridge.msdk.foundation.same.a.d.f7096d == null || TextUtils.isEmpty(this.b.getId())) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.d.a(this.f7563g, this.b, "reward");
        } catch (Throwable th) {
            aa.b("NotifyListener", th.getMessage(), th);
        }
    }

    protected final void g() {
        CampaignEx campaignEx;
        List<String> pv_urls;
        try {
            if (!this.a || this.m || (campaignEx = this.b) == null) {
                return;
            }
            this.m = true;
            if ((campaignEx.isDynamicView() && this.f7560d && !this.b.isCampaignIsFiltered()) || (pv_urls = this.b.getPv_urls()) == null || pv_urls.size() <= 0) {
                return;
            }
            Iterator<String> it = pv_urls.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.b, this.f7563g, it.next(), false, true);
            }
        } catch (Throwable th) {
            aa.d("NotifyListener", th.getMessage());
        }
    }

    protected final void h() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || TextUtils.isEmpty(campaignEx.getCampaignUnitId()) || this.b.getNativeVideoTracking() == null || this.b.getNativeVideoTracking().o() == null) {
            return;
        }
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        CampaignEx campaignEx2 = this.b;
        com.mbridge.msdk.click.a.a(contextG, campaignEx2, campaignEx2.getCampaignUnitId(), this.b.getNativeVideoTracking().o(), false, false);
    }
}
