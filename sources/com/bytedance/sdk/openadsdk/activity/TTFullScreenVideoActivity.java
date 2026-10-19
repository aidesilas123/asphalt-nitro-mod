package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.apiImpl.b.b;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.component.reward.a.a;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.r;
import com.bytedance.sdk.openadsdk.n.a.e;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {
    private static b l;
    private b k;
    private boolean m;

    private void a(final String str) {
        aa.c(new h("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTFullScreenVideoActivity.this.a(1).executeFullVideoCallback(TTFullScreenVideoActivity.this.b.c, str);
                } catch (Throwable th) {
                    l.a("TTAD.FSVA", "fullscreen_interstitial_ad", "executeFullVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    private boolean a(q qVar) {
        return qVar == null || qVar.al() == 100.0f;
    }

    private boolean b(q qVar) {
        if (qVar == null) {
            return false;
        }
        return o.d().r(String.valueOf(this.b.o));
    }

    private void d(int i) {
        this.b.R.a(null, new SpannableStringBuilder(String.format(s.a(o.a(), "tt_skip_ad_time_text"), Integer.valueOf(i))));
    }

    private void s() {
        if (this.f1116g) {
            return;
        }
        this.f1116g = true;
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a("onAdClose");
            return;
        }
        b bVar = this.k;
        if (bVar != null) {
            bVar.c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void a() {
        /*
            r3 = this;
            com.bytedance.sdk.openadsdk.component.reward.a.a r0 = r3.b
            com.bytedance.sdk.openadsdk.core.model.q r0 = r0.a
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.q.c(r0)
            r1 = 0
            if (r0 != 0) goto L19
            com.bytedance.sdk.openadsdk.component.reward.a.a r0 = r3.b
            boolean r2 = r0.b
            if (r2 != 0) goto L19
            com.bytedance.sdk.openadsdk.component.reward.a.j r0 = r0.R
            java.lang.String r2 = "X"
            r0.a(r1, r2)
            goto L24
        L19:
            com.bytedance.sdk.openadsdk.component.reward.a.a r0 = r3.b
            com.bytedance.sdk.openadsdk.component.reward.a.j r0 = r0.R
            java.lang.String r2 = com.bytedance.sdk.openadsdk.common.TTAdDislikeToast.getSkipText()
            r0.a(r1, r2)
        L24:
            com.bytedance.sdk.openadsdk.component.reward.a.a r0 = r3.b
            com.bytedance.sdk.openadsdk.component.reward.a.j r0 = r0.R
            r1 = 1
            r0.e(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.a():void");
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void a(@NonNull Intent intent) {
        super.a(intent);
        this.b.q = intent.getBooleanExtra("is_verity_playable", false);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.b
    public void a(Bundle bundle) {
        if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
            this.k = com.bytedance.sdk.openadsdk.core.s.a().d();
        }
        if (this.k != null || bundle == null) {
            return;
        }
        this.k = l;
        l = null;
    }

    public boolean a(long j, boolean z) {
        g gVar = new g();
        gVar.a(System.currentTimeMillis(), 1.0f);
        com.bytedance.sdk.openadsdk.component.reward.b.b bVar = this.c;
        if (bVar == null || !(bVar instanceof com.bytedance.sdk.openadsdk.component.reward.b.h)) {
            a aVar = this.b;
            aVar.G.a(aVar.T.f(), gVar);
        } else {
            this.b.G.a(((com.bytedance.sdk.openadsdk.component.reward.b.h) bVar).C(), gVar);
        }
        c.a aVar2 = new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.4
            boolean a;

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a() {
                TTFullScreenVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                TTFullScreenVideoActivity.this.m();
                l.a("TTAD.FSVA", "fullscreen_interstitial_ad", "onTimeOut、、、、、、、、");
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (tTFullScreenVideoActivity.b.b) {
                    tTFullScreenVideoActivity.a(false, true, 6);
                } else {
                    tTFullScreenVideoActivity.finish();
                }
                com.bytedance.sdk.openadsdk.component.reward.a.l lVar = TTFullScreenVideoActivity.this.b.G;
                lVar.a(!lVar.z() ? 1 : 0, !TTFullScreenVideoActivity.this.b.G.z() ? 1 : 0);
                TTFullScreenVideoActivity.this.b.G.m();
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a(long j2, int i) {
                if (this.a) {
                    return;
                }
                this.a = true;
                TTFullScreenVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                TTFullScreenVideoActivity.this.m();
                TTFullScreenVideoActivity.this.b.D.set(true);
                if (TTFullScreenVideoActivity.this.b.a.bg()) {
                    TTFullScreenVideoActivity.this.b.a.E(1);
                    TTFullScreenVideoActivity.this.b.T.r();
                }
                if (TTFullScreenVideoActivity.this.b.a.o() == 21 && !TTFullScreenVideoActivity.this.b.a.c()) {
                    TTFullScreenVideoActivity.this.b.a.b(true);
                    TTFullScreenVideoActivity.this.b.T.r();
                }
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (tTFullScreenVideoActivity.b.b) {
                    tTFullScreenVideoActivity.a(false, 5);
                } else {
                    tTFullScreenVideoActivity.finish();
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a(long j2, long j3) {
                a aVar3 = TTFullScreenVideoActivity.this.b;
                if (!aVar3.f1315e && aVar3.G.b()) {
                    TTFullScreenVideoActivity.this.b.G.o();
                }
                if (TTFullScreenVideoActivity.this.b.u.get()) {
                    return;
                }
                TTFullScreenVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                if (j2 != TTFullScreenVideoActivity.this.b.G.h()) {
                    TTFullScreenVideoActivity.this.m();
                }
                TTFullScreenVideoActivity.this.b.G.a(j2);
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                long j4 = j2 / 1000;
                tTFullScreenVideoActivity.f1115f = (int) (tTFullScreenVideoActivity.b.G.A() - j4);
                int i = (int) j4;
                if ((TTFullScreenVideoActivity.this.b.E.get() || TTFullScreenVideoActivity.this.b.v.get()) && TTFullScreenVideoActivity.this.b.G.b()) {
                    TTFullScreenVideoActivity.this.b.G.o();
                }
                TTFullScreenVideoActivity.this.b(i);
                TTFullScreenVideoActivity tTFullScreenVideoActivity2 = TTFullScreenVideoActivity.this;
                int i2 = tTFullScreenVideoActivity2.f1115f;
                if (i2 >= 0) {
                    tTFullScreenVideoActivity2.b.R.a(String.valueOf(i2), null);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void b(long j2, int i) {
                TTFullScreenVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                if (TTFullScreenVideoActivity.this.b.G.b()) {
                    TTFullScreenVideoActivity.this.l();
                    return;
                }
                TTFullScreenVideoActivity.this.b.G.m();
                l.d("TTAD.FSVA", "fullscreen_interstitial_ad", "onError、、、、、、、、");
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (!tTFullScreenVideoActivity.b.b) {
                    tTFullScreenVideoActivity.finish();
                    return;
                }
                tTFullScreenVideoActivity.a(false, true, 3);
                com.bytedance.sdk.openadsdk.component.reward.a.l lVar = TTFullScreenVideoActivity.this.b.G;
                lVar.a(!lVar.z() ? 1 : 0, 2);
            }
        };
        this.b.G.a(aVar2);
        com.bytedance.sdk.openadsdk.core.model.o oVar = this.b.T.o;
        if (oVar != null) {
            oVar.a(aVar2);
        }
        return this.b.G.a(j, z, null, this.c);
    }

    protected void b(int i) {
        int iQ = o.d().q(String.valueOf(this.b.o));
        if (iQ < 0) {
            iQ = 5;
        }
        if (!o.d().f(String.valueOf(this.b.o)) || (!q.c(this.b.a) && !this.b.b)) {
            if (i >= iQ) {
                a aVar = this.b;
                if (!aVar.p) {
                    aVar.a(true);
                }
                a();
                return;
            }
            return;
        }
        a aVar2 = this.b;
        if (!aVar2.p) {
            aVar2.a(true);
        }
        if (i > iQ) {
            a();
        } else {
            d(iQ - i);
            this.b.R.e(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void c(int i) {
    }

    protected void finalize() throws Throwable {
        super.finalize();
        l = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void finish() {
        a aVar = this.b;
        if (aVar != null) {
            aVar.I.b(aVar.q);
        }
        try {
            s();
        } catch (Exception unused) {
        }
        super.finish();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void h() {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a("onAdShow");
        } else {
            b bVar = this.k;
            if (bVar != null) {
                bVar.a();
            }
        }
        if (p()) {
            this.b.J.j();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void n() {
        View viewJ = this.b.T.j();
        if (viewJ != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTFullScreenVideoActivity.this.b.Q.w() && TTFullScreenVideoActivity.this.b.u.get()) {
                        TTFullScreenVideoActivity.this.b.Q.G();
                        TTFullScreenVideoActivity.this.b.T.f(8);
                        TTFullScreenVideoActivity.this.b.X.sendEmptyMessageDelayed(600, 5000L);
                        return;
                    }
                    boolean zE = false;
                    if (TTFullScreenVideoActivity.this.b.a.bh()) {
                        if (TTFullScreenVideoActivity.this.b.a.at()) {
                            a aVar = TTFullScreenVideoActivity.this.b;
                            if (aVar.S != null) {
                                aVar.a.E(2);
                                zE = TTFullScreenVideoActivity.this.b.S.e();
                            }
                        } else if (TTFullScreenVideoActivity.this.b.a.be() == 0 && !TTFullScreenVideoActivity.this.b.Q.o()) {
                            TTFullScreenVideoActivity.this.b.a.E(11);
                            if (TTFullScreenVideoActivity.this.b.Q.d()) {
                                TTFullScreenVideoActivity.this.b.a.E(12);
                            }
                            try {
                                TTFullScreenVideoActivity.this.b.T.r();
                                zE = true;
                            } catch (Exception unused) {
                            }
                        }
                    }
                    if (zE) {
                        return;
                    }
                    TTFullScreenVideoActivity.this.b.Q.y();
                    TTFullScreenVideoActivity.this.b.L.f();
                    TTFullScreenVideoActivity.this.finish();
                }
            };
            viewJ.setOnClickListener(onClickListener);
            viewJ.setTag(viewJ.getId(), onClickListener);
        }
        this.b.R.a(new com.bytedance.sdk.openadsdk.component.reward.top.b() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.3
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
            public void a(View view) {
                if (t.c(TTFullScreenVideoActivity.this.b.a) && (t.k(TTFullScreenVideoActivity.this.b.a) || TTFullScreenVideoActivity.this.b.u.get())) {
                    TTFullScreenVideoActivity.this.b.Q.g();
                    return;
                }
                if (t.k(TTFullScreenVideoActivity.this.b.a) || (com.bytedance.sdk.openadsdk.core.model.o.a(TTFullScreenVideoActivity.this.b.a) && !TTFullScreenVideoActivity.this.b.A.get())) {
                    TTFullScreenVideoActivity.this.finish();
                    return;
                }
                if (TTFullScreenVideoActivity.this.b.a.bi()) {
                    if (TTFullScreenVideoActivity.this.b.T.k() != null) {
                        TTFullScreenVideoActivity.this.b.a.E(2);
                        TTFullScreenVideoActivity.this.b.T.r();
                        return;
                    }
                    return;
                }
                a aVar = TTFullScreenVideoActivity.this.b;
                if (!aVar.b && aVar.a.bh() && !TTFullScreenVideoActivity.this.b.a.at()) {
                    TTFullScreenVideoActivity.this.b.a.E(13);
                    try {
                        TTFullScreenVideoActivity.this.b.T.r();
                        return;
                    } catch (Exception unused) {
                    }
                }
                o.a aVar2 = new o.a();
                aVar2.a(TTFullScreenVideoActivity.this.b.G.g());
                aVar2.c(TTFullScreenVideoActivity.this.b.G.s());
                aVar2.b(TTFullScreenVideoActivity.this.b.G.k());
                aVar2.c(3);
                aVar2.d(TTFullScreenVideoActivity.this.b.G.r());
                com.bytedance.sdk.openadsdk.b.d.a.a.a(TTFullScreenVideoActivity.this.b.G.c(), aVar2, TTFullScreenVideoActivity.this.b.G.a());
                r.c(TTFullScreenVideoActivity.this.b.o);
                TTFullScreenVideoActivity.this.b.G.a("skip");
                TTFullScreenVideoActivity.this.b.R.d(false);
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                if (tTFullScreenVideoActivity.b.b) {
                    tTFullScreenVideoActivity.a(true, 4);
                } else {
                    tTFullScreenVideoActivity.finish();
                }
                q qVar = TTFullScreenVideoActivity.this.b.a;
                if (qVar != null && qVar.au() != null) {
                    a aVar3 = TTFullScreenVideoActivity.this.b;
                    if (aVar3.G != null) {
                        aVar3.a.au().a().f(TTFullScreenVideoActivity.this.b.G.g());
                        TTFullScreenVideoActivity.this.b.a.au().a().e(TTFullScreenVideoActivity.this.b.G.g());
                    }
                }
                e.a(TTFullScreenVideoActivity.this.b.a, 5);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
            public void b(View view) {
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                tTFullScreenVideoActivity.b.f1314d = !r0.f1314d;
                com.bytedance.sdk.openadsdk.component.reward.b.b bVar = tTFullScreenVideoActivity.c;
                if (bVar != null && bVar.d() != null) {
                    TTFullScreenVideoActivity.this.c.d().a(TTFullScreenVideoActivity.this.b.f1314d);
                }
                a aVar = TTFullScreenVideoActivity.this.b;
                aVar.G.b(aVar.f1314d);
                if (!t.l(TTFullScreenVideoActivity.this.b.a) || TTFullScreenVideoActivity.this.b.u.get()) {
                    if (t.b(TTFullScreenVideoActivity.this.b.a)) {
                        a aVar2 = TTFullScreenVideoActivity.this.b;
                        aVar2.O.a(aVar2.f1314d, true);
                    }
                    a aVar3 = TTFullScreenVideoActivity.this.b;
                    aVar3.Q.d(aVar3.f1314d);
                    q qVar = TTFullScreenVideoActivity.this.b.a;
                    if (qVar == null || qVar.au() == null || TTFullScreenVideoActivity.this.b.a.au().a() == null) {
                        return;
                    }
                    a aVar4 = TTFullScreenVideoActivity.this.b;
                    if (aVar4.G != null) {
                        if (aVar4.f1314d) {
                            aVar4.a.au().a().h(TTFullScreenVideoActivity.this.b.G.g());
                        } else {
                            aVar4.a.au().a().i(TTFullScreenVideoActivity.this.b.G.g());
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
            public void c(View view) {
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                tTFullScreenVideoActivity.b.N.a(tTFullScreenVideoActivity.c);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean o() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a aVar = this.b;
        if (aVar == null || q.c(aVar.a)) {
            return;
        }
        com.bykv.vk.openvk.component.video.api.c.b bVarK = this.b.a.K();
        if (bVarK == null) {
            com.bykv.vk.openvk.component.video.api.c.b bVar = new com.bykv.vk.openvk.component.video.api.c.b();
            bVar.a(10.0d);
            this.b.a.a(bVar);
        } else if (bVarK.f() <= 0.0d) {
            bVarK.a(10.0d);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        s();
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a("recycleRes");
        }
        this.k = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void onRewardBarClick(View view) {
        if (this.b.a.al() != 100.0f) {
            this.m = true;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a("onAdVideoBarClick");
            return;
        }
        b bVar = this.k;
        if (bVar != null) {
            bVar.b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        l = this.k;
        super.onSaveInstanceState(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        a aVar = this.b;
        if (aVar == null || !b(aVar.a) || a(this.b.a)) {
            return;
        }
        if (this.m) {
            this.m = false;
            finish();
        } else if (this.b.Q.E()) {
            finish();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void r() {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            a("onAdVideoBarClick");
        } else {
            b bVar = this.k;
            if (bVar != null) {
                bVar.b();
            }
        }
        this.b.a.bl();
        this.b.a.a(true);
        if (q.c(this.b.a)) {
            a aVar = this.b;
            q qVar = aVar.a;
            com.bytedance.sdk.openadsdk.b.c.b(qVar, aVar.f1317g, qVar.bm());
        }
    }
}
