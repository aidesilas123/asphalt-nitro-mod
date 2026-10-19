package com.bytedance.sdk.openadsdk.component.reward.a;

import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.json.o2;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: RewardFullExpressManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    private final a a;

    public f(a aVar) {
        this.a = aVar;
    }

    public void a(float[] fArr, final com.bytedance.sdk.openadsdk.core.video.c.b bVar, final com.bytedance.sdk.openadsdk.component.reward.b.b bVar2) {
        com.bytedance.sdk.openadsdk.component.reward.view.c cVar;
        com.bytedance.sdk.component.utils.l.b("TTAD.RFExpressM", "initExpressView() called with: size = [" + Arrays.toString(fArr) + o2.i.f6491e);
        this.a.J.a(new AdSlot.Builder().setCodeId(String.valueOf(this.a.a.aZ())).setExpressViewAcceptedSize(fArr[0], fArr[1]).build());
        a aVar = this.a;
        j jVar = aVar.R;
        if (jVar != null && (cVar = aVar.J) != null) {
            jVar.a(cVar.a());
        }
        this.a.J.a(new com.bytedance.sdk.openadsdk.core.nativeexpress.l() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.f.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public void a() {
                f.this.a.R.d();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public void a(int i) {
                if (i != 1) {
                    if (i == 2) {
                        f.this.a.G.y();
                        return;
                    }
                    if (i == 3) {
                        f.this.a.G.a(bVar);
                        return;
                    } else if (i == 4) {
                        f.this.a.G.l();
                        return;
                    } else if (i != 5) {
                        return;
                    }
                }
                if (f.this.a.G.b() || f.this.a.G.d()) {
                    return;
                }
                bVar.a(0L, false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public void a(boolean z) {
                if (f.this.a.f1314d != z) {
                    f.this.a.R.e();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public void b() {
                if (f.this.a.T == null || f.this.a.T.j() == null) {
                    return;
                }
                f.this.a.T.j().performClick();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public void b(int i) {
                f.this.a.h = i;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public long c() {
                return f.this.a.G.h();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public int d() {
                if (f.this.a.J.c()) {
                    return 4;
                }
                if (f.this.a.J.d()) {
                    return 5;
                }
                if (f.this.a.G.e()) {
                    return 1;
                }
                if (f.this.a.G.b()) {
                    return 2;
                }
                if (f.this.a.G.d()) {
                }
                return 3;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l
            public void e() {
                f.this.a.N.a(bVar2);
            }
        });
        this.a.J.a(new PAGBannerAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.f.2
            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdClicked(View view, int i) {
                if (f.this.a == null || f.this.a.a == null || !f.this.a.a.av()) {
                    return;
                }
                bVar.onRewardBarClick(view);
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onRenderFail(View view, String str, int i) {
                if (!f.this.a.a.bd()) {
                    f.this.a.Q.a(true);
                    f.this.a.Q.e();
                }
                com.bytedance.sdk.component.utils.l.b("TTAD.RFExpressM", "onRenderFail、、、code:" + i);
                f.this.a.J.e().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.f.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        bVar2.a(false, false, false, 90);
                    }
                });
                f.this.a.T.m();
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onRenderSuccess(View view, float f2, float f3) {
                if (t.k(f.this.a.a)) {
                    return;
                }
                if (!f.this.a.a.bd()) {
                    if (f.this.a.J.h()) {
                        bVar2.a(true);
                        f.this.a.G.e(false);
                    } else {
                        f.this.a.G.e(true);
                    }
                    f.this.a.T.b(8);
                    f.this.a.Q.a(true);
                    f.this.a.Q.e();
                    if (f.this.a.J.h()) {
                        f.this.a.J.b().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                        bVar2.a(f.this.a.T.f());
                    } else if (f.this.a.a.K() != null && bVar2.a()) {
                        f.this.a.i = true;
                    }
                }
                bVar2.z();
                if (bVar2 instanceof com.bytedance.sdk.openadsdk.component.reward.b.e) {
                    com.bytedance.sdk.openadsdk.component.reward.b.e.a(f.this.a.a, f.this.a.J.h(), f.this.a.f1317g);
                    if (!f.this.a.J.h()) {
                        f.this.a.V.g();
                    }
                }
                f.this.a.T.m();
            }
        });
        a aVar2 = this.a;
        TTBaseVideoActivity tTBaseVideoActivity = aVar2.V;
        q qVar = aVar2.a;
        String str = aVar2.f1317g;
        com.bytedance.sdk.openadsdk.core.nativeexpress.g gVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.g(tTBaseVideoActivity, qVar, str, ac.a(str)) { // from class: com.bytedance.sdk.openadsdk.component.reward.a.f.3
            @Override // com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
            public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                super.a(view, f2, f3, f4, f5, sparseArray, z);
                bVar.onRewardBarClick(view);
            }
        };
        HashMap map = new HashMap();
        if (t.k(this.a.a)) {
            map.put("click_scence", 3);
        } else {
            map.put("click_scence", 1);
        }
        gVar.a(map);
        a aVar3 = this.a;
        TTBaseVideoActivity tTBaseVideoActivity2 = aVar3.V;
        q qVar2 = aVar3.a;
        String str2 = aVar3.f1317g;
        com.bytedance.sdk.openadsdk.core.nativeexpress.f fVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.f(tTBaseVideoActivity2, qVar2, str2, ac.a(str2)) { // from class: com.bytedance.sdk.openadsdk.component.reward.a.f.4
            @Override // com.bytedance.sdk.openadsdk.core.b.a, com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
            public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                HashMap map2 = new HashMap();
                map2.put("duration", Long.valueOf(f.this.a.G.g()));
                a(map2);
                super.a(view, f2, f3, f4, f5, sparseArray, z);
                if (a(view, z)) {
                    bVar.onRewardBarClick(view);
                }
            }
        };
        HashMap map2 = new HashMap();
        if (t.k(this.a.a)) {
            map2.put("click_scence", 3);
        } else {
            map2.put("click_scence", 1);
        }
        fVar.a(map2);
        this.a.J.a(gVar, fVar);
        FrameLayout.LayoutParams layoutParams = this.a.a.bd() ? new FrameLayout.LayoutParams(-1, -1) : new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.a.T.f().addView(this.a.J.a(), layoutParams);
        if (!this.a.J.h()) {
            bVar2.a(false);
        }
        this.a.J.k();
    }
}
