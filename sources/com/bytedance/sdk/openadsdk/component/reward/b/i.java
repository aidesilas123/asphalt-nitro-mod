package com.bytedance.sdk.openadsdk.component.reward.b;

import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

/* JADX INFO: compiled from: RewardFullTypePlayable.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends b {
    public i(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        super(aVar);
    }

    public static boolean a(q qVar) {
        return t.b(qVar) || t.k(qVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void a(FrameLayout frameLayout) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public boolean e() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void g() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void r() {
        if (t.b(this.a.a)) {
            if (DeviceUtils.f() == 0) {
                this.a.f1314d = true;
            }
            com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.a;
            if (aVar.f1314d) {
                aVar.R.b(true);
                this.a.O.a(true);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void s() {
        if (this.a.I.i() && t.k(this.a.a)) {
            this.a.I.a("return_foreground");
            com.bytedance.sdk.openadsdk.core.widget.a aVar = this.m;
            if ((aVar == null || !aVar.isShowing()) && this.a.I.k() >= 0) {
                this.a.I.a(0L);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void t() {
        super.t();
        if (t.k(this.a.a)) {
            this.j.removeMessages(600);
            this.a.I.a("go_background");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void u() {
        super.u();
        if (t.k(this.a.a)) {
            this.j.removeMessages(600);
            this.a.I.a("go_background");
        }
    }
}
