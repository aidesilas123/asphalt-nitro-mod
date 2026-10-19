package com.bytedance.sdk.openadsdk.component.reward.b;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.component.reward.b.b;
import com.bytedance.sdk.openadsdk.component.reward.view.FullInteractionStyleView;
import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: RewardFullTypeInteraction.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends b {
    private FullInteractionStyleView o;

    public h(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        super(aVar);
    }

    private boolean D() {
        return q.c(this.b);
    }

    public static boolean a(q qVar) {
        return (qVar.aW() || qVar.al() == 100.0f) ? false : true;
    }

    public FrameLayout C() {
        FullInteractionStyleView fullInteractionStyleView = this.o;
        if (fullInteractionStyleView != null) {
            return fullInteractionStyleView.getVideoContainer();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void a(FrameLayout frameLayout) {
        FullInteractionStyleView fullInteractionStyleView = new FullInteractionStyleView(this.a.V, this.k);
        this.o = fullInteractionStyleView;
        fullInteractionStyleView.setDownloadListener(this.l);
        FullInteractionStyleView fullInteractionStyleView2 = this.o;
        q qVar = this.b;
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
        fullInteractionStyleView2.a(qVar, aVar.k, aVar.j, this.c, this.f1345d);
        frameLayout.addView(this.o.getInteractionStyleRootView());
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public b.a d() {
        return new b.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.b.h.1
            @Override // com.bytedance.sdk.openadsdk.component.reward.b.b.a
            public void a(boolean z) {
                if (h.this.o != null) {
                    h.this.o.setIsMute(z);
                }
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public boolean e() {
        return D();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public boolean f() {
        return D();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void g() {
        this.f1347f.d(8);
        this.f1347f.c(8);
        if (this.b.u() == 2) {
            this.h.a(false);
            this.h.c(false);
            this.h.d(false);
            this.f1347f.f(8);
            return;
        }
        this.h.a(this.b.an());
        this.h.c(D());
        this.h.d(D());
        if (D()) {
            this.f1347f.f(8);
        } else {
            this.h.f();
            this.f1347f.f(0);
        }
    }
}
