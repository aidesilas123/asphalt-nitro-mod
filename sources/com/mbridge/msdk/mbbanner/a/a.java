package com.mbridge.msdk.mbbanner.a;

import com.mbridge.msdk.c.f;
import com.mbridge.msdk.c.g;
import com.mbridge.msdk.c.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.e;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.an;
import com.mbridge.msdk.mbbanner.common.a.b;
import com.mbridge.msdk.mbbanner.common.c.c;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: BannerController.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static String a = "BannerController";
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MBridgeIds f7256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7258f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MBBannerView f7259g;
    private int h;
    private int i;
    private int j;
    private BannerAdListener l;
    private CampaignUnit m;
    private c n;
    private h o;
    private g p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private int k = -1;
    private com.mbridge.msdk.mbbanner.common.b.c v = new com.mbridge.msdk.mbbanner.common.b.c() { // from class: com.mbridge.msdk.mbbanner.a.a.1
        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void a() {
            if (a.this.l != null) {
                a.this.l.onClick(a.this.f7256d);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void a(CampaignEx campaignEx) {
            a.this.d();
            if (a.this.l != null) {
                a.this.l.onLogImpression(a.this.f7256d);
                try {
                    m.a().a("2000130", campaignEx, new HashMap());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void a(String str) {
            a.this.a(str);
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void a(List<CampaignEx> list) {
            if (a.this.l != null) {
                a.this.l.onLoadSuccessed(a.this.f7256d);
                try {
                    m.a().a("2000127", list, new HashMap());
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void b() {
            if (a.this.l != null) {
                a.this.l.onLeaveApp(a.this.f7256d);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void c() {
            if (a.this.l != null) {
                a.this.l.showFullScreen(a.this.f7256d);
                a.this.u = true;
                com.mbridge.msdk.mbbanner.common.c.a.a().a(2, a.this.c, a.this.b, null, null);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void d() {
            if (a.this.l != null) {
                a.this.l.closeFullScreen(a.this.f7256d);
                a.this.u = false;
                com.mbridge.msdk.mbbanner.common.c.a.a().a(3, a.this.c, a.this.b, new b(a.this.i + "x" + a.this.h, a.this.j * 1000), a.this.w);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.c
        public final void e() {
            if (a.this.l != null) {
                a.this.l.onCloseBanner(a.this.f7256d);
                try {
                    m.a().a("2000152", a.this.f7256d, new HashMap());
                } catch (Exception unused) {
                }
            }
        }
    };
    private com.mbridge.msdk.mbbanner.common.b.b w = new com.mbridge.msdk.mbbanner.common.b.b() { // from class: com.mbridge.msdk.mbbanner.a.a.2
        @Override // com.mbridge.msdk.mbbanner.common.b.b
        public final void a(String str, CampaignUnit campaignUnit, boolean z) {
            a.this.m = campaignUnit;
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.b
        public final void a(String str, e eVar, boolean z, CampaignEx campaignEx) {
            if (a.this.l != null) {
                a.this.l.onLoadFailed(a.this.f7256d, eVar != null ? eVar.e() : "");
            }
            a.this.d();
            try {
                q.a(com.mbridge.msdk.foundation.controller.b.d().g(), eVar, a.this.b, z, campaignEx);
            } catch (Exception unused) {
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.b
        public final void a(String str, boolean z) {
            if (a.this.m != null) {
                try {
                    q.a(com.mbridge.msdk.foundation.controller.b.d().g(), a.this.m.getAds(), a.this.b, z);
                } catch (Exception unused) {
                }
            }
            if (a.this.f7259g != null) {
                a.this.t = true;
                a.this.h();
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.b.b
        public final void a(String str, boolean z, CampaignEx campaignEx) {
            if (a.this.l != null) {
                a.this.l.onLoadFailed(a.this.f7256d, "banner res load failed");
            }
            a.this.d();
            q.a(com.mbridge.msdk.foundation.controller.b.d().g(), new e(6, "banner res load failed"), a.this.b, z, campaignEx);
        }
    };

    public a(MBBannerView mBBannerView, BannerSize bannerSize, String str, String str2) {
        this.f7259g = mBBannerView;
        if (bannerSize != null) {
            this.h = bannerSize.getHeight();
            this.i = bannerSize.getWidth();
        }
        this.b = str2;
        this.c = str;
        this.f7256d = new MBridgeIds(str, str2);
        String strH = com.mbridge.msdk.foundation.controller.b.d().h();
        String strJ = com.mbridge.msdk.foundation.controller.b.d().j();
        if (this.p == null) {
            this.p = new g();
        }
        this.p.a(com.mbridge.msdk.foundation.controller.b.d().g(), strH, strJ, this.b);
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        BannerAdListener bannerAdListener = this.l;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.f7256d, str);
            try {
                HashMap map = new HashMap();
                map.put("code", "");
                map.put("reason", str);
                map.put("failingURL", "");
                m.a().a("2000131", this.f7256d, map);
            } catch (Exception unused) {
            }
        }
        d();
    }

    private int b(int i) {
        if (i <= 0) {
            return i;
        }
        if (i < 10) {
            return 10;
        }
        if (i > 180) {
            return 180;
        }
        return i;
    }

    private void g() {
        h hVarE = f.a().e(com.mbridge.msdk.foundation.controller.b.d().h(), this.b);
        this.o = hVarE;
        if (hVarE == null) {
            this.o = h.d(this.b);
        }
        if (this.k == -1) {
            this.j = b(this.o.c());
        }
        if (this.f7258f == 0) {
            boolean z = this.o.d() == 1;
            this.f7257e = z;
            c cVar = this.n;
            if (cVar != null) {
                cVar.a(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.s || !this.t) {
            return;
        }
        try {
            m.a().a("2000129", this.f7256d, new HashMap());
        } catch (Exception unused) {
        }
        MBBannerView mBBannerView = this.f7259g;
        if (this.m != null) {
            if (this.n == null) {
                this.n = new c(mBBannerView, this.v, this.c, this.b, this.f7257e, this.o);
            }
            this.n.b(this.q);
            this.n.c(this.r);
            this.n.a(this.f7257e, this.f7258f);
            this.n.a(this.m);
        } else {
            a("banner show failed because campain is exception");
        }
        this.t = false;
    }

    private void i() {
        MBBannerView mBBannerView = this.f7259g;
        if (mBBannerView != null) {
            if (!this.q || !this.r || this.u || an.a(mBBannerView, 1)) {
                com.mbridge.msdk.mbbanner.common.c.a.a().a(2, this.c, this.b, null, null);
            } else {
                com.mbridge.msdk.mbbanner.common.c.a.a().a(3, this.c, this.b, new b(this.i + "x" + this.h, this.j * 1000), this.w);
            }
            if (this.q) {
                return;
            }
            com.mbridge.msdk.mbbanner.common.c.a.a().a(4, this.c, this.b, null, null);
            com.mbridge.msdk.mbbanner.common.c.a.a().a(this.b);
        }
    }

    private void j() {
        i();
        c cVar = this.n;
        if (cVar != null) {
            cVar.b(this.q);
            this.n.c(this.r);
        }
    }

    public final String a() {
        CampaignUnit campaignUnit = this.m;
        return (campaignUnit == null || campaignUnit.getRequestId() == null) ? "" : this.m.getRequestId();
    }

    public final void a(int i) {
        int iB = b(i);
        this.k = iB;
        this.j = iB;
    }

    public final void a(int i, int i2, int i3, int i4) {
        c cVar = this.n;
        if (cVar != null) {
            cVar.a(i, i2, i3, i4);
        }
    }

    public final void a(BannerAdListener bannerAdListener) {
        this.l = bannerAdListener;
    }

    public final void a(BannerSize bannerSize) {
        if (bannerSize != null) {
            this.h = bannerSize.getHeight();
            this.i = bannerSize.getWidth();
        }
    }

    public final void a(String str, String str2) {
        this.f7256d.setLocalRequestId(str2);
        if (this.h < 1 || this.i < 1) {
            BannerAdListener bannerAdListener = this.l;
            if (bannerAdListener != null) {
                bannerAdListener.onLoadFailed(this.f7256d, "banner load failed because params are exception");
                return;
            }
            return;
        }
        boolean zA = false;
        try {
            zA = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.a(com.mbridge.msdk.foundation.controller.b.d().g());
        } catch (Exception unused) {
        }
        if (!zA) {
            BannerAdListener bannerAdListener2 = this.l;
            if (bannerAdListener2 != null) {
                bannerAdListener2.onLoadFailed(this.f7256d, "banner load failed because WebView is not available");
                return;
            }
            return;
        }
        b bVar = new b(this.i + "x" + this.h, this.j * 1000);
        bVar.a(str);
        bVar.c(str2);
        bVar.b(this.c);
        com.mbridge.msdk.mbbanner.common.c.a.a().a(this.c, this.b, bVar, this.w);
        com.mbridge.msdk.mbbanner.common.c.a.a().a(1, this.c, this.b, bVar, this.w);
    }

    public final void a(boolean z) {
        this.f7257e = z;
        this.f7258f = z ? 1 : 2;
    }

    public final String b() {
        CampaignUnit campaignUnit = this.m;
        return campaignUnit != null ? com.mbridge.msdk.foundation.same.b.a(campaignUnit.ads) : "";
    }

    public final void b(boolean z) {
        this.q = z;
        j();
        h();
    }

    public final void c() {
        this.s = true;
        if (this.l != null) {
            this.l = null;
        }
        if (this.w != null) {
            this.w = null;
        }
        if (this.v != null) {
            this.v = null;
        }
        if (this.f7259g != null) {
            this.f7259g = null;
        }
        com.mbridge.msdk.mbbanner.common.c.a.a().a(4, this.c, this.b, null, null);
        com.mbridge.msdk.mbbanner.common.c.a.a().a(this.b);
        com.mbridge.msdk.mbbanner.common.c.a.a().b();
        c cVar = this.n;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final void c(boolean z) {
        this.r = z;
        j();
    }

    public final void d() {
        if (this.s) {
            return;
        }
        i();
        g();
        b bVar = new b(this.i + "x" + this.h, this.j * 1000);
        bVar.b(this.c);
        bVar.a(true);
        com.mbridge.msdk.mbbanner.common.c.a.a().b(this.c, this.b, bVar, this.w);
    }

    public final void e() {
        com.mbridge.msdk.mbbanner.common.c.a.a().a(4, this.c, this.b, new b(this.i + "x" + this.h, this.j * 1000), this.w);
    }

    public final void f() {
        com.mbridge.msdk.mbbanner.common.c.a.a().a(3, this.c, this.b, new b(this.i + "x" + this.h, this.j * 1000), this.w);
    }
}
