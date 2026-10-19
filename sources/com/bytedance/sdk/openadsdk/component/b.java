package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.component.view.OpenScreenAdBackupView;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenAdExpressView;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.json.o2;

/* JADX INFO: compiled from: AppOpenAdExpressManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends c {
    private PAGAppOpenAdExpressView j;
    private boolean k;

    public b(Activity activity, q qVar, FrameLayout frameLayout, a aVar, int i, boolean z, com.bytedance.sdk.openadsdk.component.h.a aVar2) {
        super(activity, qVar, frameLayout, aVar, i, z, aVar2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.c
    public void a() {
        this.j.setClickListener(com.bytedance.sdk.openadsdk.component.a.b.a(this.b, this.a, this.i, this.j));
        com.bytedance.sdk.openadsdk.core.nativeexpress.f fVarB = com.bytedance.sdk.openadsdk.component.a.b.b(this.b, this.a, this.i, this.j);
        this.j.setClickCreativeListener(fVarB);
        fVarB.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.component.b.2
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view, int i) {
                b.this.f1282e.e();
            }
        });
        this.j.setBackupListener(new com.bytedance.sdk.component.adexpress.b.c() { // from class: com.bytedance.sdk.openadsdk.component.b.3
            @Override // com.bytedance.sdk.component.adexpress.b.c
            public boolean a(ViewGroup viewGroup, int i) {
                l.a("AppOpenAdExpressManager", "open_ad", "isUseBackup() called with: view = [" + viewGroup + "], errCode = [" + i + o2.i.f6491e);
                try {
                    ((NativeExpressView) viewGroup).m();
                    new OpenScreenAdBackupView(b.this.a).a((NativeExpressView) b.this.j);
                    return true;
                } catch (Exception e2) {
                    Log.e("AppOpenAdExpressManager", "", e2);
                    return false;
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.component.c
    public void a(int i, int i2, boolean z) {
        if (this.k) {
            super.a(i, i2, z);
        } else {
            this.j.a(String.valueOf(i), i2, 0, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.c
    public void a(ViewGroup viewGroup) {
        q.a aVarI;
        Pair<Float, Float> pairA = com.bytedance.sdk.openadsdk.core.nativeexpress.a.a.a(this.a.getWindow(), this.f1284g);
        AdSlot adSlotBuild = new AdSlot.Builder().setCodeId(String.valueOf(this.b.aZ())).setExpressViewAcceptedSize(((Float) pairA.first).floatValue(), ((Float) pairA.second).floatValue()).build();
        if (l.d() && (aVarI = this.b.I()) != null) {
            l.a("AppOpenAdExpressManager", "open_ad", "tryDynamicNative: id is " + aVarI.e());
        }
        PAGAppOpenAdExpressView pAGAppOpenAdExpressView = new PAGAppOpenAdExpressView(this.a, this.b, adSlotBuild, "open_ad");
        this.j = pAGAppOpenAdExpressView;
        pAGAppOpenAdExpressView.setTopListener(this.f1282e);
        this.j.setExpressVideoListenerProxy(this.f1282e);
        this.j.setExpressInteractionListener(new PAGBannerAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.component.b.1
            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdClicked(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onRenderFail(View view, String str, int i) {
                b.this.f1282e.d();
            }

            @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
            public void onRenderSuccess(View view, float f2, float f3) {
                if (b.this.j.n()) {
                    b.this.k = true;
                    b bVar = b.this;
                    b.super.a((ViewGroup) bVar.f1281d);
                    b.super.a();
                    b.super.b();
                    return;
                }
                if (b.this.b.br()) {
                    b.this.f1282e.c();
                    return;
                }
                b bVar2 = b.this;
                if (!bVar2.c) {
                    bVar2.f1282e.c();
                } else if (bVar2.a(bVar2.j.getVideoFrameLayout())) {
                    b.this.f1282e.c();
                } else {
                    b.this.f1282e.d();
                }
            }
        });
        this.b.h(1);
        this.f1281d.addView(this.j, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.component.c
    public void b() {
        this.j.j();
    }

    @Override // com.bytedance.sdk.openadsdk.component.c
    public void c() {
        super.c();
        PAGAppOpenAdExpressView pAGAppOpenAdExpressView = this.j;
        if (pAGAppOpenAdExpressView != null) {
            pAGAppOpenAdExpressView.l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.c
    public int d() {
        return this.j.getDynamicShowType();
    }
}
