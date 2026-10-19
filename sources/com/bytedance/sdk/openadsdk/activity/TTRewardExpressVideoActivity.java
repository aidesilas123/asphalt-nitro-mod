package com.bytedance.sdk.openadsdk.activity;

import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.a.a;
import com.bytedance.sdk.openadsdk.component.reward.a.l;
import com.bytedance.sdk.openadsdk.component.reward.view.c;
import com.bytedance.sdk.openadsdk.core.o;
import com.gameloft.adsmanager.JavaUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class TTRewardExpressVideoActivity extends TTRewardVideoActivity {
    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.b
    public boolean a(long j, boolean z) {
        c cVar = this.b.J;
        g gVar = (cVar == null || cVar.a() == null) ? new g() : this.b.J.a().getAdShowTime();
        a aVar = this.b;
        aVar.G.a(aVar.J.b(), gVar);
        HashMap map = new HashMap();
        c cVar2 = this.b.J;
        if (cVar2 != null) {
            map.put("dynamic_show_type", Integer.valueOf(cVar2.i()));
        }
        this.b.G.a(map);
        this.b.G.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.1
            boolean a;

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a() {
                TTRewardExpressVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                TTRewardExpressVideoActivity.this.m();
                TTRewardExpressVideoActivity.this.s();
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                if (tTRewardExpressVideoActivity.b.b) {
                    tTRewardExpressVideoActivity.a(false, 6);
                } else {
                    tTRewardExpressVideoActivity.finish();
                }
                l lVar = TTRewardExpressVideoActivity.this.b.G;
                lVar.a(!lVar.z() ? 1 : 0, !TTRewardExpressVideoActivity.this.b.G.z() ? 1 : 0);
                TTRewardExpressVideoActivity.this.b.G.m();
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a(long j2, int i) {
                if (this.a) {
                    return;
                }
                this.a = true;
                TTRewardExpressVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                TTRewardExpressVideoActivity.this.m();
                TTRewardExpressVideoActivity.this.b.J.b(true);
                if (TTRewardExpressVideoActivity.this.b.a.o() == 21 && !TTRewardExpressVideoActivity.this.b.a.c()) {
                    TTRewardExpressVideoActivity.this.b.a.b(true);
                    TTRewardExpressVideoActivity.this.b.T.r();
                }
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                if (tTRewardExpressVideoActivity.b.b) {
                    tTRewardExpressVideoActivity.a(false, 5);
                } else {
                    tTRewardExpressVideoActivity.finish();
                }
                ((TTRewardVideoActivity) TTRewardExpressVideoActivity.this).l = (int) (System.currentTimeMillis() / 1000);
                TTRewardExpressVideoActivity.this.s();
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void a(long j2, long j3) {
                a aVar2 = TTRewardExpressVideoActivity.this.b;
                if (!aVar2.f1315e && aVar2.G.b()) {
                    TTRewardExpressVideoActivity.this.b.G.o();
                }
                if (TTRewardExpressVideoActivity.this.b.u.get()) {
                    return;
                }
                TTRewardExpressVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                if (j2 != TTRewardExpressVideoActivity.this.b.G.h()) {
                    TTRewardExpressVideoActivity.this.m();
                }
                if (TTRewardExpressVideoActivity.this.b.G.b()) {
                    TTRewardExpressVideoActivity.this.b.G.a(j2);
                    int iJ = o.d().j(String.valueOf(TTRewardExpressVideoActivity.this.b.o));
                    boolean z2 = TTRewardExpressVideoActivity.this.b.J.h() && iJ != -1 && iJ >= 0;
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                    long j4 = j2 / 1000;
                    tTRewardExpressVideoActivity.f1115f = (int) (tTRewardExpressVideoActivity.b.G.A() - j4);
                    int i = (int) j4;
                    if ((TTRewardExpressVideoActivity.this.b.E.get() || TTRewardExpressVideoActivity.this.b.v.get()) && TTRewardExpressVideoActivity.this.b.G.b()) {
                        TTRewardExpressVideoActivity.this.b.G.o();
                    }
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity2 = TTRewardExpressVideoActivity.this;
                    int i2 = tTRewardExpressVideoActivity2.f1115f;
                    if (i2 >= 0) {
                        tTRewardExpressVideoActivity2.b.R.a(String.valueOf(i2), null);
                    }
                    TTRewardExpressVideoActivity.this.b.T.e(i);
                    TTRewardExpressVideoActivity.this.a(j2, j3);
                    com.bytedance.sdk.openadsdk.component.reward.view.c cVar3 = TTRewardExpressVideoActivity.this.b.J;
                    if (cVar3 != null && cVar3.a() != null) {
                        TTRewardExpressVideoActivity.this.b.J.a().a(String.valueOf(TTRewardExpressVideoActivity.this.f1115f), i, 0, false);
                    }
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity3 = TTRewardExpressVideoActivity.this;
                    if (tTRewardExpressVideoActivity3.f1115f > 0) {
                        if (!z2 || i < iJ || tTRewardExpressVideoActivity3.b.a.o() == 5) {
                            TTRewardExpressVideoActivity tTRewardExpressVideoActivity4 = TTRewardExpressVideoActivity.this;
                            tTRewardExpressVideoActivity4.b.R.a(String.valueOf(tTRewardExpressVideoActivity4.f1115f), null);
                        } else {
                            TTRewardExpressVideoActivity.this.b.a(true);
                            TTRewardExpressVideoActivity tTRewardExpressVideoActivity5 = TTRewardExpressVideoActivity.this;
                            tTRewardExpressVideoActivity5.b.R.a(String.valueOf(tTRewardExpressVideoActivity5.f1115f), TTAdDislikeToast.getSkipText());
                            TTRewardExpressVideoActivity.this.b.R.e(true);
                        }
                    }
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.d.c.a
            public void b(long j2, int i) {
                TTRewardExpressVideoActivity.this.f1113d.removeMessages(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
                if (TTRewardExpressVideoActivity.this.b.G.b()) {
                    TTRewardExpressVideoActivity.this.l();
                    return;
                }
                TTRewardExpressVideoActivity.this.s();
                TTRewardExpressVideoActivity.this.b.G.m();
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                if (tTRewardExpressVideoActivity.b.b) {
                    tTRewardExpressVideoActivity.a(false, 3);
                } else {
                    tTRewardExpressVideoActivity.finish();
                }
                TTRewardExpressVideoActivity.this.b.J.a(true);
                l lVar = TTRewardExpressVideoActivity.this.b.G;
                lVar.a(1 ^ (lVar.z() ? 1 : 0), 2);
            }
        });
        boolean zA = this.b.G.a(j, z, map, this.c);
        if (zA && !z) {
            ((TTRewardVideoActivity) this).k = (int) (System.currentTimeMillis() / 1000);
        }
        return zA;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void f() {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean p() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean q() {
        return true;
    }
}
