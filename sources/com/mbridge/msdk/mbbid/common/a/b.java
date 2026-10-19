package com.mbridge.msdk.mbbid.common.a;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.h.d;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.mbbid.out.BidListennning;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: RequesManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BidListennning f7299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BidResponsedEx f7300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7301g;
    private long i;
    private long j;
    private boolean k;
    private int l;
    private boolean h = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f7298d = com.mbridge.msdk.foundation.controller.b.d().g();

    public b(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    static /* synthetic */ void a(b bVar, BidResponsed bidResponsed) {
        BidListennning bidListennning = bVar.f7299e;
        if (bidListennning != null) {
            bidListennning.onSuccessed(bidResponsed);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        BidListennning bidListennning = this.f7299e;
        if (bidListennning != null) {
            bidListennning.onFailed(str);
        }
    }

    public final void a(int i) {
        this.l = i;
    }

    public final void a(long j) {
        this.i = j;
    }

    public final void a(BidListennning bidListennning) {
        this.f7299e = bidListennning;
    }

    public final void a(boolean z) {
        this.k = z;
    }

    public final void b(int i) {
        this.f7301g = i;
    }

    public final void b(long j) {
        this.j = j;
    }

    public final void b(boolean z) {
        try {
            if (this.h) {
                a("current unit is biding");
                return;
            }
            this.h = true;
            if (this.f7298d == null) {
                a("context is null");
            }
            com.mbridge.msdk.mbbid.common.b.a aVar = new com.mbridge.msdk.mbbid.common.b.a(this.f7298d);
            d dVar = new d();
            String strH = com.mbridge.msdk.foundation.controller.b.d().h();
            dVar.a("app_id", strH);
            dVar.a("sign", SameMD5.getMD5(strH + com.mbridge.msdk.foundation.controller.b.d().j()));
            dVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.b);
            if (!TextUtils.isEmpty(this.a)) {
                dVar.a("placement_id", this.a);
            }
            dVar.a("bid_floor", this.c);
            dVar.a(d.c, af.b(this.f7298d, this.b));
            dVar.a(d.b, com.mbridge.msdk.foundation.same.a.d.a(this.b, ""));
            String str = "1";
            dVar.a("req_type", this.k ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP);
            dVar.a("orientation", w.h(this.f7298d) + "");
            int i = this.f7301g;
            if (i == 296) {
                if (this.i <= 0 || this.j <= 0) {
                    a("bid required param is missing or error");
                    return;
                }
                dVar.a(CampaignUnit.JSON_KEY_UNIT_SIZE, this.j + "x" + this.i);
                try {
                    Method method = Class.forName("com.mbridge.msdk.mbbanner.common.util.BannerUtils").getMethod("getCloseIds", String.class);
                    if (method.invoke(null, this.b) instanceof String) {
                        dVar.a("close_id", method.invoke(null, this.b).toString());
                    }
                } catch (Exception unused) {
                    a("banner module is miss");
                    return;
                }
            } else if (i == 297) {
                if (this.i <= 0 || this.j <= 0) {
                    a("ad display area is too small");
                    return;
                }
                dVar.a(CampaignUnit.JSON_KEY_UNIT_SIZE, this.j + "x" + this.i);
                StringBuilder sb = new StringBuilder();
                sb.append(this.l);
                sb.append("");
                dVar.a("orientation", sb.toString());
            } else if (i != 298) {
                if (!z) {
                    str = "0";
                }
                dVar.a("rw_plus", str);
            } else {
                if (this.i <= 0 || this.j <= 0) {
                    a("bid required param is missing or error");
                    return;
                }
                dVar.a(CampaignUnit.JSON_KEY_UNIT_SIZE, this.j + "x" + this.i);
            }
            final String md5 = SameMD5.getMD5(af.c());
            dVar.a(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
            a aVar2 = new a(this.a, this.b) { // from class: com.mbridge.msdk.mbbid.common.a.b.1
                @Override // com.mbridge.msdk.mbbid.common.b.b
                public final void a(int i2, String str2) {
                    b.this.h = false;
                    com.mbridge.msdk.mbbid.common.c.a.a(b.this.f7298d, b.this.b, str2, md5);
                    b.this.a(str2);
                }

                @Override // com.mbridge.msdk.mbbid.common.b.b
                public final void a(BidResponsedEx bidResponsedEx) {
                    b.this.h = false;
                    b.this.f7300f = bidResponsedEx;
                    com.mbridge.msdk.mbbid.common.c.a.a(b.this.f7298d, b.this.b, bidResponsedEx.getBidId(), md5, bidResponsedEx.getBidToken());
                    b.a(b.this, (BidResponsed) bidResponsedEx);
                }
            };
            aVar2.setUnitId(this.b);
            aVar2.setPlacementId(this.a);
            aVar.get(1, com.mbridge.msdk.foundation.same.net.g.d.a().a(false, ""), dVar, aVar2);
        } catch (Throwable th) {
            a(th.getMessage());
        }
    }
}
