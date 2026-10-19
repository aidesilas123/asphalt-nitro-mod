package com.bytedance.sdk.openadsdk.component.reward.b;

import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.b.n;
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.r;
import com.bytedance.sdk.openadsdk.core.x;
import com.bytedance.sdk.openadsdk.utils.aa;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullTypeDoubleAds.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends b implements com.bytedance.sdk.openadsdk.i.f {
    private final r o;
    private boolean p;

    public e(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        super(aVar);
        this.o = (r) aVar.a;
    }

    public static void a(q qVar, boolean z, String str) {
        HashMap map = new HashMap();
        map.put("is_backup", Boolean.valueOf(z));
        com.bytedance.sdk.openadsdk.b.c.a("choose_ad_start_show", qVar, str, map);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("req_id", qVar.bc());
            jSONObject.put("is_backup", z);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.j.b.a().a("choose_ad_start_show", jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    protected boolean B() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.i.f
    public void a(int i, long j) {
        this.p = true;
        int i2 = i - 1;
        this.o.K(i2);
        com.bytedance.sdk.openadsdk.b.c.a(this.o, this.a.f1317g, i, j);
        com.bytedance.sdk.openadsdk.component.reward.a.a(this.o.bv(), i2);
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.b.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.z();
                e.this.A();
                e.this.a.S.b();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void a(FrameLayout frameLayout) {
    }

    @Override // com.bytedance.sdk.openadsdk.i.f
    public void a(n nVar) {
        this.a.J.a().b(nVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.b
    public void a(RewardFullBaseLayout rewardFullBaseLayout) {
        if (c.a(this.o)) {
            c.a(this.o, rewardFullBaseLayout);
        } else {
            super.a(rewardFullBaseLayout);
        }
    }

    public void b(boolean z) {
        if (this.p) {
            return;
        }
        HashMap map = new HashMap();
        map.put("has_focus", Boolean.valueOf(z));
        com.bytedance.sdk.openadsdk.b.c.a("choose_ad_focus_changed", this.o, this.a.f1317g, map);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.b.a
    public boolean b() {
        return this.p;
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
    public void z() {
        x jsObject;
        if (this.a.V.isFinishing()) {
            return;
        }
        if (this.a.J.h() || this.p) {
            super.z();
            if (this.a.J.h()) {
                A();
                this.a.S.b();
                return;
            }
            return;
        }
        FullRewardExpressView fullRewardExpressViewA = this.a.J.a();
        if (fullRewardExpressViewA == null || (jsObject = fullRewardExpressViewA.getJsObject()) == null) {
            return;
        }
        jsObject.a(this);
    }
}
