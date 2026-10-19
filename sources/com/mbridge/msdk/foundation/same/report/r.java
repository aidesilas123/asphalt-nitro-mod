package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.json.d1;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.s;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: RewardVideoReportManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class r {
    private static AtomicBoolean c;
    private final Executor a;
    private Boolean b;

    /* JADX INFO: compiled from: RewardVideoReportManager.java */
    private static final class a {
        private static final r a = new r();
    }

    private r() {
        this.a = Executors.newSingleThreadExecutor();
    }

    public static r a() {
        return a.a;
    }

    public static void a(String str, String str2, String str3, String str4, int i) {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "0");
            m.a().a(str, str3, str4, str2, i + "", map);
        } catch (Exception e2) {
            aa.d("RewardVideoReportManager", e2.getMessage());
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, int i) {
        try {
            HashMap map = new HashMap();
            map.put("bid_tk", str);
            map.put(CampaignEx.JSON_KEY_HB, "1");
            m.a().a(str2, str4, str5, str3, i + "", map);
        } catch (Exception e2) {
            aa.d("RewardVideoReportManager", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static s b(String str, String str2, String str3, boolean z, String str4) {
        try {
            if (c == null) {
                c = new AtomicBoolean(ac.a().a("c_r_a_l_c", 0) == 0);
            }
            s.a aVarA = new s.a("2000119").a(NotificationCompat.CATEGORY_EVENT, str);
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
            String str5 = "1";
            s.a aVarA2 = aVarA.a("message", str2).a("background", c.get() ? com.mbridge.msdk.foundation.controller.b.d().e() >= 1 ? "1" : "0" : UniquePlacementId.NO_ID);
            if (TextUtils.isEmpty(str3)) {
                str3 = "";
            }
            s.a aVarA3 = aVarA2.a("ad_type", str3);
            if (!z) {
                str5 = "0";
            }
            s.a aVarA4 = aVarA3.a(CampaignEx.JSON_KEY_HB, str5);
            if (TextUtils.isEmpty(str4)) {
                str4 = "";
            }
            return aVarA4.a(MBridgeConstans.PROPERTIES_UNIT_ID, str4).a();
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                aa.d("RewardVideoReportManager", th.getMessage());
            }
            return null;
        }
    }

    private boolean b() {
        if (this.b == null) {
            try {
                this.b = Boolean.valueOf(ac.a().a("r_v_r_i_a", false));
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("RewardVideoReportManager", th.getMessage());
                }
                this.b = Boolean.FALSE;
            }
        }
        if (this.b == null) {
            this.b = Boolean.FALSE;
        }
        return this.b.booleanValue();
    }

    private Runnable c(final String str, final String str2, final String str3, final boolean z, final String str4) {
        return new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.r.1
            @Override // java.lang.Runnable
            public final void run() {
                s sVarB = r.b(str, str2, str3, z, str4);
                if (sVarB != null) {
                    try {
                        sVarB.a(str4);
                    } catch (Throwable th) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("RewardVideoReportManager", th.getMessage());
                        }
                    }
                }
            }
        };
    }

    public final void a(String str, String str2, String str3, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("load_failed", str2, str3, z, str));
    }

    public final void a(String str, String str2, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("load", "", str2, z, str));
    }

    public final void b(String str, String str2, String str3, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("show_failed", str2, str3, z, str));
    }

    public final void b(String str, String str2, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("campaign_success", "", str2, z, str));
    }

    public final void c(String str, String str2, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("load_success", "", str2, z, str));
    }

    public final void d(String str, String str2, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("is_ready_true", "", str2, z, str));
    }

    public final void e(String str, String str2, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("is_ready_false", "", str2, z, str));
    }

    public final void f(String str, String str2, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c(d1.u, "", str2, z, str));
    }

    public final void g(String str, String str2, boolean z) {
        if (!b() || TextUtils.isEmpty(str) || this.a == null) {
            return;
        }
        this.a.execute(c("show_success", "", str2, z, str));
    }
}
