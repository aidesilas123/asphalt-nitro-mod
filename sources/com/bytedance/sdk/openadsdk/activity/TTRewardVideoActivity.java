package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.work.WorkRequest;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.apiImpl.d.a;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.g.d;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.core.q;
import com.bytedance.sdk.openadsdk.core.r;
import com.bytedance.sdk.openadsdk.core.s;
import com.bytedance.sdk.openadsdk.core.widget.a;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.n.a.e;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.gameloft.adsmanager.JavaUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private static String n;
    private static String o;
    private static String p;
    private static String q;
    private static String r;
    private static a u;
    protected int k;
    protected int l;
    protected a m;
    private String s;
    private String t;
    private final AtomicBoolean v = new AtomicBoolean(false);
    private int w = -1;
    private boolean x;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final boolean z, final int i, final String str2, final int i2, final String str3) {
        aa.c(new h("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTRewardVideoActivity.this.a(0).executeRewardVideoCallback(TTRewardVideoActivity.this.b.c, str, z, i, str2, i2, str3);
                } catch (Throwable th) {
                    l.a("TTAD.RVA", "rewarded_video", "executeRewardVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z, boolean z2) {
        if (!z2 && this.x && t.c(this.b.a)) {
            this.b.Q.g();
            return;
        }
        if (!o.d().h(String.valueOf(this.b.o))) {
            if (!z2 && this.b.u.get() && t.c(this.b.a)) {
                this.b.Q.g();
                return;
            } else if (z) {
                finish();
                return;
            } else {
                t();
                return;
            }
        }
        if (this.v.get()) {
            if (t.c(this.b.a)) {
                this.b.Q.g();
                return;
            } else if (z) {
                finish();
                return;
            } else {
                t();
                return;
            }
        }
        if (t.c(this.b.a) && this.b.Q.i().getVisibility() == 0) {
            this.b.Q.g();
            return;
        }
        this.b.E.set(true);
        this.b.G.o();
        if (z) {
            this.b.I.n();
        }
        final com.bytedance.sdk.openadsdk.core.widget.a aVar = new com.bytedance.sdk.openadsdk.core.widget.a(this);
        this.c.m = aVar;
        if (z) {
            aVar.a(o).b(r).c(p);
        } else {
            aVar.a(n).b(q).c(p);
        }
        this.c.m.a(new a.InterfaceC0144a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.a.InterfaceC0144a
            public void a() {
                TTRewardVideoActivity.this.b.G.n();
                if (z) {
                    TTRewardVideoActivity.this.b.I.a(1000L);
                }
                aVar.dismiss();
                TTRewardVideoActivity.this.b.E.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.a.InterfaceC0144a
            public void b() {
                aVar.dismiss();
                TTRewardVideoActivity.this.x = true;
                TTRewardVideoActivity.this.b.E.set(false);
                TTRewardVideoActivity.this.b.I.f(Integer.MAX_VALUE);
                if (!z) {
                    TTRewardVideoActivity.this.t();
                } else if (t.c(TTRewardVideoActivity.this.b.a)) {
                    TTRewardVideoActivity.this.b.Q.g();
                } else {
                    TTRewardVideoActivity.this.b.L.f();
                    TTRewardVideoActivity.this.finish();
                }
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        o.a aVar = new o.a();
        aVar.a(this.b.G.g());
        aVar.c(this.b.G.s());
        aVar.b(this.b.G.k());
        aVar.c(3);
        aVar.d(this.b.G.r());
        com.bytedance.sdk.openadsdk.b.d.a.a.a(this.b.G.c(), aVar, this.b.G.a());
        r.c(this.b.o);
        this.b.G.a("skip");
        if (this.b.b) {
            a(true, 4);
            if (com.bytedance.sdk.openadsdk.core.model.o.a(this.b.a) && !this.b.A.get()) {
                finish();
            }
        } else {
            finish();
        }
        com.bytedance.sdk.openadsdk.core.g.a aVarAu = this.b.a.au();
        if (aVarAu != null) {
            d dVarA = aVarAu.a();
            long jG = this.b.G.g();
            dVarA.f(jG);
            dVarA.e(jG);
        }
        e.a(this.b.a, 5);
    }

    private JSONObject u() {
        JSONObject jSONObject = new JSONObject();
        int iT = (int) this.b.G.t();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_NAME, this.b.a.s());
            jSONObject.put(CampaignEx.JSON_KEY_REWARD_AMOUNT, this.b.a.t());
            jSONObject.put("network", com.bytedance.sdk.component.utils.o.c(getApplicationContext()));
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            int iH = this.b.a.H();
            String strC = "unKnow";
            if (iH == 2) {
                strC = ac.b();
            } else if (iH == 1) {
                strC = ac.c();
            }
            jSONObject.put("user_agent", strC);
            jSONObject.put("extra", this.b.a.aR());
            jSONObject.put("media_extra", this.s);
            jSONObject.put("video_duration", this.b.a.K().f());
            jSONObject.put("play_start_ts", this.k);
            jSONObject.put("play_end_ts", this.l);
            jSONObject.put("duration", iT);
            jSONObject.put("user_id", this.t);
            jSONObject.put("trans_id", com.bytedance.sdk.openadsdk.utils.r.a().replace("-", ""));
            return jSONObject;
        } catch (Throwable th) {
            l.c("TTAD.RVA", "", th);
            return null;
        }
    }

    private void v() {
        if (this.f1116g) {
            return;
        }
        this.f1116g = true;
        if (b.c()) {
            a("onAdClose");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.d.a aVar = this.m;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void a() {
        this.b.R.a(null, TTAdDislikeToast.getSkipText());
        this.b.R.e(true);
    }

    protected void a(long j, long j2) {
        long j3 = j + (((long) this.b.h) * 1000);
        if (this.w == -1) {
            this.w = com.bytedance.sdk.openadsdk.core.o.d().z(String.valueOf(this.b.o)).f1672f;
        }
        if (j2 <= 0) {
            return;
        }
        if (j2 >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS && j3 >= 27000) {
            l.b("TTAD.RVA", "try verify reward 1");
            s();
        } else if ((j3 * 100) / j2 >= this.w) {
            l.b("TTAD.RVA", "try verify reward 2");
            s();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void a(@NonNull Intent intent) {
        super.a(intent);
        this.s = intent.getStringExtra("media_extra");
        this.t = intent.getStringExtra("user_id");
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.b
    public void a(Bundle bundle) {
        if (!b.c()) {
            this.m = s.a().c();
        }
        if (this.m != null || bundle == null) {
            return;
        }
        this.m = u;
        u = null;
    }

    protected void a(String str) {
        a(str, false, 0, "", 0, "");
    }

    public boolean a(long j, boolean z) {
        g gVar = new g();
        gVar.a(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.b;
        aVar.G.a(aVar.T.f(), gVar);
        c.a aVar2 = new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.5
            boolean a;

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a() {
                TTRewardVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                TTRewardVideoActivity.this.m();
                TTRewardVideoActivity.this.s();
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity.b.b) {
                    tTRewardVideoActivity.a(false, true, 6);
                } else {
                    tTRewardVideoActivity.finish();
                }
                com.bytedance.sdk.openadsdk.component.reward.a.l lVar = TTRewardVideoActivity.this.b.G;
                lVar.a(!lVar.z() ? 1 : 0, 1 ^ (TTRewardVideoActivity.this.b.G.z() ? 1 : 0));
                TTRewardVideoActivity.this.b.G.m();
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a(long j2, int i) {
                if (this.a) {
                    return;
                }
                this.a = true;
                TTRewardVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                TTRewardVideoActivity.this.m();
                TTRewardVideoActivity.this.s();
                TTRewardVideoActivity.this.b.D.set(true);
                if (TTRewardVideoActivity.this.b.a.bg()) {
                    TTRewardVideoActivity.this.b.a.E(1);
                    TTRewardVideoActivity.this.b.T.r();
                }
                if (TTRewardVideoActivity.this.b.a.o() == 21 && !TTRewardVideoActivity.this.b.a.c()) {
                    TTRewardVideoActivity.this.b.a.b(true);
                    TTRewardVideoActivity.this.b.T.r();
                }
                TTRewardVideoActivity.this.l = (int) (System.currentTimeMillis() / 1000);
                if (com.bytedance.sdk.openadsdk.core.model.o.c(TTRewardVideoActivity.this.b.a) || com.bytedance.sdk.openadsdk.core.model.o.b(TTRewardVideoActivity.this.b.a)) {
                    TTRewardVideoActivity.this.a(false, 5);
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.model.o.a(TTRewardVideoActivity.this.b.a) && !TTRewardVideoActivity.this.b.A.get()) {
                    TTRewardVideoActivity.this.b.a(true);
                    TTRewardVideoActivity.this.b.R.e(true);
                    return;
                }
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity.b.b) {
                    tTRewardVideoActivity.a(false, 5);
                } else {
                    tTRewardVideoActivity.finish();
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a(long j2, long j3) {
                com.bytedance.sdk.openadsdk.component.reward.a.a aVar3 = TTRewardVideoActivity.this.b;
                if (!aVar3.f1315e && aVar3.G.b()) {
                    TTRewardVideoActivity.this.b.G.o();
                }
                if (TTRewardVideoActivity.this.b.u.get()) {
                    return;
                }
                TTRewardVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                if (j2 != TTRewardVideoActivity.this.b.G.h()) {
                    TTRewardVideoActivity.this.m();
                }
                TTRewardVideoActivity.this.b.G.a(j2);
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                long j4 = j2 / 1000;
                double d2 = j4;
                tTRewardVideoActivity.f1115f = (int) (tTRewardVideoActivity.b.G.A() - d2);
                TTRewardVideoActivity tTRewardVideoActivity2 = TTRewardVideoActivity.this;
                int i = tTRewardVideoActivity2.f1115f;
                if (i >= 0) {
                    tTRewardVideoActivity2.b.R.a(String.valueOf(i), null);
                }
                TTRewardVideoActivity tTRewardVideoActivity3 = TTRewardVideoActivity.this;
                tTRewardVideoActivity3.f1115f = (int) (tTRewardVideoActivity3.b.G.A() - d2);
                int i2 = (int) j4;
                int iJ = com.bytedance.sdk.openadsdk.core.o.d().j(String.valueOf(TTRewardVideoActivity.this.b.o));
                boolean z2 = iJ >= 0;
                if ((TTRewardVideoActivity.this.b.E.get() || TTRewardVideoActivity.this.b.v.get()) && TTRewardVideoActivity.this.b.G.b()) {
                    TTRewardVideoActivity.this.b.G.o();
                }
                TTRewardVideoActivity.this.b.T.e(i2);
                TTRewardVideoActivity.this.a(j2, j3);
                TTRewardVideoActivity tTRewardVideoActivity4 = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity4.f1115f > 0) {
                    tTRewardVideoActivity4.b.R.d(true);
                    if (!z2 || i2 < iJ) {
                        TTRewardVideoActivity tTRewardVideoActivity5 = TTRewardVideoActivity.this;
                        tTRewardVideoActivity5.b.R.a(String.valueOf(tTRewardVideoActivity5.f1115f), null);
                    } else {
                        TTRewardVideoActivity.this.b.a(true);
                        TTRewardVideoActivity tTRewardVideoActivity6 = TTRewardVideoActivity.this;
                        tTRewardVideoActivity6.b.R.a(String.valueOf(tTRewardVideoActivity6.f1115f), TTAdDislikeToast.getSkipText());
                        TTRewardVideoActivity.this.b.R.e(true);
                    }
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void b(long j2, int i) {
                TTRewardVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                if (TTRewardVideoActivity.this.b.G.b()) {
                    TTRewardVideoActivity.this.l();
                    return;
                }
                TTRewardVideoActivity.this.b.G.m();
                TTRewardVideoActivity.this.s();
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                if (tTRewardVideoActivity.b.b) {
                    tTRewardVideoActivity.a(false, true, 3);
                } else {
                    tTRewardVideoActivity.finish();
                }
                com.bytedance.sdk.openadsdk.component.reward.a.l lVar = TTRewardVideoActivity.this.b.G;
                lVar.a(!lVar.z() ? 1 : 0, 2);
            }
        };
        this.b.G.a(aVar2);
        com.bytedance.sdk.openadsdk.core.model.o oVar = this.b.T.o;
        if (oVar != null) {
            oVar.a(aVar2);
        }
        boolean zA = this.b.G.a(j, z, null, this.c);
        if (zA && !z) {
            this.k = (int) (System.currentTimeMillis() / 1000);
        }
        return zA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void c(int i) {
        if (i == 10000) {
            s();
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        u = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void finish() {
        v();
        super.finish();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void h() {
        if (b.c()) {
            a("onAdShow");
        } else {
            com.bytedance.sdk.openadsdk.apiImpl.d.a aVar = this.m;
            if (aVar != null) {
                aVar.a();
            }
        }
        if (p()) {
            this.b.J.j();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.c
    public void i() {
        s();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0037  */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void j() {
        /*
            r12 = this;
            com.bytedance.sdk.openadsdk.core.settings.e r0 = com.bytedance.sdk.openadsdk.core.o.d()
            com.bytedance.sdk.openadsdk.component.reward.a.a r1 = r12.b
            int r1 = r1.o
            java.lang.String r1 = java.lang.String.valueOf(r1)
            com.bytedance.sdk.openadsdk.core.settings.a r0 = r0.z(r1)
            int r0 = r0.f1672f
            com.bytedance.sdk.openadsdk.component.reward.a.a r1 = r12.b
            com.bytedance.sdk.openadsdk.core.model.q r1 = r1.a
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.t.l(r1)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L3a
            com.bytedance.sdk.openadsdk.component.reward.a.a r1 = r12.b
            com.bytedance.sdk.openadsdk.component.reward.a.l r1 = r1.G
            double r4 = r1.A()
            r6 = 4636737291354636288(0x4059000000000000, double:100.0)
            r8 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r1 = r12.f1115f
            double r10 = (double) r1
            double r10 = r10 / r4
            double r8 = r8 - r10
            double r8 = r8 * r6
            double r0 = (double) r0
            int r4 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r4 < 0) goto L37
            goto L38
        L37:
            r2 = 0
        L38:
            r3 = r2
            goto L82
        L3a:
            com.bytedance.sdk.openadsdk.component.reward.a.a r1 = r12.b
            com.bytedance.sdk.openadsdk.core.model.q r1 = r1.a
            int r1 = r1.aq()
            r4 = 1120403456(0x42c80000, float:100.0)
            r5 = 1065353216(0x3f800000, float:1.0)
            com.bytedance.sdk.openadsdk.component.reward.a.a r6 = r12.b
            com.bytedance.sdk.openadsdk.component.reward.a.g r6 = r6.I
            int r6 = r6.k()
            float r6 = (float) r6
            float r1 = (float) r1
            float r6 = r6 / r1
            float r5 = r5 - r6
            float r5 = r5 * r4
            float r0 = (float) r0
            int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r0 < 0) goto L5b
            r0 = 1
            goto L5c
        L5b:
            r0 = 0
        L5c:
            com.bytedance.sdk.openadsdk.core.settings.e r1 = com.bytedance.sdk.openadsdk.core.o.d()
            com.bytedance.sdk.openadsdk.component.reward.a.a r4 = r12.b
            int r4 = r4.o
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r1 = r1.a(r4)
            if (r1 != 0) goto L7f
            if (r0 == 0) goto L37
            com.bytedance.sdk.openadsdk.component.reward.a.a r0 = r12.b
            com.bytedance.sdk.openadsdk.component.reward.a.m r0 = r0.Q
            com.bytedance.sdk.openadsdk.core.x r0 = r0.j()
            boolean r0 = r0.e()
            if (r0 == 0) goto L37
            goto L38
        L7f:
            if (r1 != r2) goto L82
            r3 = r0
        L82:
            if (r3 == 0) goto L87
            r12.s()
        L87:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.j():void");
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void n() {
        View viewJ = this.b.T.j();
        if (viewJ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTRewardVideoActivity.this.b.Q.w() && TTRewardVideoActivity.this.b.u.get()) {
                        TTRewardVideoActivity.this.b.Q.G();
                        TTRewardVideoActivity.this.b.T.f(8);
                        TTRewardVideoActivity.this.b.X.sendEmptyMessageDelayed(600, 5000L);
                        return;
                    }
                    boolean zE = false;
                    if (TTRewardVideoActivity.this.b.a.bh()) {
                        if (TTRewardVideoActivity.this.b.a.at()) {
                            com.bytedance.sdk.openadsdk.component.reward.a.a aVar = TTRewardVideoActivity.this.b;
                            if (aVar.S != null) {
                                aVar.a.E(2);
                                zE = TTRewardVideoActivity.this.b.S.e();
                            }
                        } else if (TTRewardVideoActivity.this.b.a.be() == 0 && !TTRewardVideoActivity.this.b.Q.o()) {
                            TTRewardVideoActivity.this.b.a.E(11);
                            if (TTRewardVideoActivity.this.b.Q.d()) {
                                TTRewardVideoActivity.this.b.a.E(12);
                            }
                            try {
                                TTRewardVideoActivity.this.b.T.r();
                                zE = true;
                            } catch (Exception unused) {
                            }
                        }
                    }
                    if (zE) {
                        return;
                    }
                    TTRewardVideoActivity.this.b.Q.y();
                    TTRewardVideoActivity.this.b.L.f();
                    if (!t.k(TTRewardVideoActivity.this.b.a) || t.c(TTRewardVideoActivity.this.b.a)) {
                        TTRewardVideoActivity.this.finish();
                    } else {
                        TTRewardVideoActivity.this.a(true, true);
                    }
                }
            };
            viewJ.setOnClickListener(onClickListener);
            viewJ.setTag(viewJ.getId(), onClickListener);
        }
        this.b.R.a(new com.bytedance.sdk.openadsdk.component.reward.top.b() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.3
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
            public void a(View view) {
                if (TTRewardVideoActivity.this.b.a.bi()) {
                    if (TTRewardVideoActivity.this.b.T.k() != null) {
                        TTRewardVideoActivity.this.b.a.E(2);
                        TTRewardVideoActivity.this.b.T.r();
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.component.reward.a.a aVar = TTRewardVideoActivity.this.b;
                if (!aVar.b && aVar.a.bh() && !TTRewardVideoActivity.this.b.a.at()) {
                    TTRewardVideoActivity.this.b.a.E(13);
                    try {
                        TTRewardVideoActivity.this.b.T.r();
                        return;
                    } catch (Exception unused) {
                    }
                }
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                tTRewardVideoActivity.a(t.k(tTRewardVideoActivity.b.a), false);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
            public void b(View view) {
                com.bytedance.sdk.openadsdk.component.reward.b.b bVar = TTRewardVideoActivity.this.c;
                if (bVar != null && bVar.d() != null) {
                    TTRewardVideoActivity.this.c.d().a(TTRewardVideoActivity.this.b.f1314d);
                }
                TTRewardVideoActivity.this.b.f1314d = !r4.f1314d;
                l.a("TTAD.RVA", "rewarded_video", "will set is Mute " + TTRewardVideoActivity.this.b.f1314d + " mLastVolume=" + TTRewardVideoActivity.this.b.O.a());
                com.bytedance.sdk.openadsdk.component.reward.a.a aVar = TTRewardVideoActivity.this.b;
                aVar.G.b(aVar.f1314d);
                if (!t.l(TTRewardVideoActivity.this.b.a) || TTRewardVideoActivity.this.b.u.get()) {
                    if (t.b(TTRewardVideoActivity.this.b.a)) {
                        com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = TTRewardVideoActivity.this.b;
                        aVar2.O.a(aVar2.f1314d, true);
                    }
                    com.bytedance.sdk.openadsdk.component.reward.a.a aVar3 = TTRewardVideoActivity.this.b;
                    aVar3.Q.d(aVar3.f1314d);
                    q qVar = TTRewardVideoActivity.this.b.a;
                    if (qVar == null || qVar.au() == null || TTRewardVideoActivity.this.b.a.au().a() == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.component.reward.a.a aVar4 = TTRewardVideoActivity.this.b;
                    if (aVar4.G != null) {
                        if (aVar4.f1314d) {
                            aVar4.a.au().a().h(TTRewardVideoActivity.this.b.G.g());
                        } else {
                            aVar4.a.au().a().i(TTRewardVideoActivity.this.b.G.g());
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
            public void c(View view) {
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                tTRewardVideoActivity.b.N.a(tTRewardVideoActivity.c);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean o() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            if (n == null) {
                n = com.bytedance.sdk.component.utils.s.a(this, "tt_reward_msg");
                o = com.bytedance.sdk.component.utils.s.a(this, "tt_msgPlayable");
                p = com.bytedance.sdk.component.utils.s.a(this, "tt_negtiveBtnBtnText");
                q = com.bytedance.sdk.component.utils.s.a(this, "tt_postiveBtnText");
                r = com.bytedance.sdk.component.utils.s.a(this, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th) {
            l.e("TTAD.RVA", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        v();
        if (b.c()) {
            a("recycleRes");
        }
        this.m = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void onRewardBarClick(View view) {
        if (b.c()) {
            a("onAdVideoBarClick");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.d.a aVar = this.m;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        u = this.m;
        super.onSaveInstanceState(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void r() {
        if (b.c()) {
            a("onAdVideoBarClick");
        } else {
            com.bytedance.sdk.openadsdk.apiImpl.d.a aVar = this.m;
            if (aVar != null) {
                aVar.b();
            }
        }
        this.b.a.bl();
        this.b.a.a(true);
        if (q.c(this.b.a)) {
            com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = this.b;
            q qVar = aVar2.a;
            com.bytedance.sdk.openadsdk.b.c.b(qVar, aVar2.f1317g, qVar.bm());
        }
    }

    protected void s() {
        if (this.v.get()) {
            return;
        }
        this.v.set(true);
        boolean zO = com.bytedance.sdk.openadsdk.core.o.d().o(String.valueOf(this.b.o));
        l.b("TTAD.RVA", "verifyRewardVideo: dir=" + zO);
        if (!zO) {
            com.bytedance.sdk.openadsdk.core.o.c().a(u(), new p.b() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.7
                @Override // com.bytedance.sdk.openadsdk.core.p.b
                public void a(final int i, final String str) {
                    l.b("TTAD.RVA", "onError: " + i + ", " + str);
                    if (b.c()) {
                        TTRewardVideoActivity.this.a("onRewardVerify", false, 0, "", i, str);
                    } else {
                        TTRewardVideoActivity.this.f1113d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.bytedance.sdk.openadsdk.apiImpl.d.a aVar = TTRewardVideoActivity.this.m;
                                if (aVar != null) {
                                    aVar.a(false, 0, "", i, str);
                                }
                            }
                        });
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.p.b
                public void a(final q.b bVar) {
                    l.b("TTAD.RVA", "onVerify: " + bVar.b);
                    final int iA = bVar.c.a();
                    final String strB = bVar.c.b();
                    if (b.c()) {
                        TTRewardVideoActivity.this.a("onRewardVerify", bVar.b, iA, strB, 0, "");
                    } else {
                        TTRewardVideoActivity.this.f1113d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.7.2
                            @Override // java.lang.Runnable
                            public void run() {
                                com.bytedance.sdk.openadsdk.apiImpl.d.a aVar = TTRewardVideoActivity.this.m;
                                if (aVar != null) {
                                    aVar.a(bVar.b, iA, strB, 0, "");
                                }
                            }
                        });
                    }
                }
            });
        } else if (b.c()) {
            a("onRewardVerify", true, this.b.a.t(), this.b.a.s(), 0, "");
        } else {
            this.f1113d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                    com.bytedance.sdk.openadsdk.apiImpl.d.a aVar = tTRewardVideoActivity.m;
                    if (aVar != null) {
                        aVar.a(true, tTRewardVideoActivity.b.a.t(), TTRewardVideoActivity.this.b.a.s(), 0, "");
                    }
                }
            });
        }
    }
}
