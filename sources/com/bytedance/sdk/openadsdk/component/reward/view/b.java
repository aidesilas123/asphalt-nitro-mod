package com.bytedance.sdk.openadsdk.component.reward.view;

import android.view.View;
import com.bytedance.sdk.openadsdk.component.reward.a.l;
import com.bytedance.sdk.openadsdk.component.reward.a.n;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;

/* JADX INFO: compiled from: RewardFullBackUpEndCard.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private final com.bytedance.sdk.openadsdk.component.reward.a.a a;
    private RFEndCardBackUpLayout b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f1428d;

    public b(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.a = aVar;
    }

    public void a() {
        if (this.c) {
            return;
        }
        this.c = true;
        RFEndCardBackUpLayout rFEndCardBackUpLayout = (RFEndCardBackUpLayout) this.a.U.findViewById(i.ap);
        this.b = rFEndCardBackUpLayout;
        rFEndCardBackUpLayout.a(this.a);
        if (this.a.a.at()) {
            this.f1428d = new n(this.a);
        }
    }

    public void a(com.bytedance.sdk.openadsdk.core.b.e eVar) {
        ad.a(this.b, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "TTBaseVideoActivity#mFLEndCardBackupContainer");
        n nVar = this.f1428d;
        if (nVar != null) {
            nVar.a(eVar);
        }
    }

    public boolean a(l lVar) {
        n nVar = this.f1428d;
        if (nVar == null || !nVar.a(lVar)) {
            return false;
        }
        ad.a((View) this.b, 0);
        return true;
    }

    public void b() {
        com.bytedance.sdk.component.utils.l.b("TTAD.RFBackUpEndCard", "show: ");
        ad.a((View) this.b, 0);
    }

    public void c() {
        n nVar = this.f1428d;
        if (nVar != null) {
            nVar.a();
        }
    }

    public void d() {
        n nVar = this.f1428d;
        if (nVar != null) {
            nVar.b();
        }
    }

    public boolean e() {
        n nVar = this.f1428d;
        if (nVar != null) {
            return nVar.c();
        }
        return false;
    }
}
