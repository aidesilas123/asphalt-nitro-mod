package com.bytedance.sdk.openadsdk.component.reward.a;

import android.os.Build;
import android.os.Message;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullEndCardManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private final a a;
    private final com.bytedance.sdk.openadsdk.component.reward.view.b b;

    public e(a aVar) {
        this.a = aVar;
        this.b = new com.bytedance.sdk.openadsdk.component.reward.view.b(aVar);
    }

    private int f() {
        int iAs = this.a.a.as();
        if (iAs <= 5000 && iAs >= 0) {
            if (iAs < 1000) {
                iAs += 1000;
            }
            int iA = o.d().a(this.a.a.aZ());
            if (iA <= 5000 && iA >= 0) {
                if (iA < 1000) {
                    iA += 1000;
                }
                return Math.min(iAs, iA);
            }
        }
        return -1;
    }

    private void g() {
        if (t.l(this.a.a)) {
            a aVar = this.a;
            if (aVar.f1314d) {
                aVar.R.b(true);
                this.a.O.a(true);
            }
        }
    }

    public void a() {
        this.b.a();
    }

    public void a(com.bytedance.sdk.openadsdk.core.b.e eVar) {
        this.b.a(eVar);
    }

    public void a(boolean z, boolean z2, boolean z3, com.bytedance.sdk.openadsdk.component.reward.b.b bVar, int i) {
        j jVar;
        com.bytedance.sdk.component.utils.l.b("TTAD.RFEndM", "showEndCard() called with: isSkip = [" + z + "], force = [" + z2 + "], isFromLandingPage = [" + z3 + "], mAdType = [" + bVar + o2.i.f6491e);
        if (this.a.V.isFinishing() || bVar == null) {
            return;
        }
        this.a.T.l();
        if (z2) {
            this.a.z.set(true);
        }
        if (!this.a.A.get() && !com.bytedance.sdk.openadsdk.core.model.o.g(this.a.a) && (!com.bytedance.sdk.openadsdk.core.model.o.b(this.a.a) || !this.a.z.get() || !this.a.B.get())) {
            if (com.bytedance.sdk.openadsdk.core.model.o.b(this.a.a) && z3) {
                return;
            }
            if ((com.bytedance.sdk.openadsdk.core.model.o.b(this.a.a) || com.bytedance.sdk.openadsdk.core.model.o.c(this.a.a)) && (jVar = this.a.R) != null) {
                jVar.c(false);
                bVar.p();
                return;
            }
        }
        if ((Build.VERSION.SDK_INT < 17 || !this.a.V.isDestroyed()) && !this.a.V.isFinishing()) {
            if (this.a.a.bd()) {
                this.a.V.finish();
                return;
            }
            this.a.G.m();
            this.a.Q.z();
            this.a.v.set(false);
            this.a.w.set(false);
            this.a.N.a();
            a aVar = this.a;
            aVar.R.a(!aVar.s && aVar.a.an());
            if (this.a.u.getAndSet(true)) {
                return;
            }
            if (t.b(this.a.a)) {
                a aVar2 = this.a;
                com.bytedance.sdk.openadsdk.b.c.a(aVar2.a, aVar2.f1317g, z, z2, z3, aVar2.V.isFinishing(), i);
            }
            if (this.a.V.p() && t.b(this.a.a) && z) {
                this.a.R.d(true);
            }
            if (t.b(this.a.a)) {
                this.a.R.c(true);
            }
            g();
            if (t.k(this.a.a)) {
                return;
            }
            this.a.C.set(z);
            bVar.o();
            if (this.a.a.at()) {
                this.a.R.d(false);
            } else {
                a aVar3 = this.a;
                aVar3.R.d(t.k(aVar3.a));
            }
            a aVar4 = this.a;
            aVar4.R.c(t.b(aVar4.a));
            if (this.a.V.p() && t.b(this.a.a) && z) {
                this.a.R.d(true);
            }
            this.a.Q.A();
            com.bytedance.sdk.openadsdk.core.model.o oVar = this.a.T.o;
            if (oVar != null) {
                oVar.d();
            }
            this.a.T.c();
            com.bytedance.sdk.openadsdk.component.reward.view.c cVar = this.a.J;
            if (cVar != null) {
                cVar.f();
            }
            if (!q.a(this.a.a) && !this.a.Q.H()) {
                a aVar5 = this.a;
                if (q.a(aVar5.a, aVar5.Q.p(), this.a.I.d(), this.a.Q.B()) || t.b(this.a.a)) {
                    if (!q.b(this.a.a) && !t.b(this.a.a)) {
                        com.bytedance.sdk.component.utils.l.b("TTAD.RFEndM", "TimeTrackLog report Success from Android");
                        this.a.Q.a(true, 0, (String) null);
                    }
                    this.a.Q.a(0.0f);
                    this.a.T.a(0.0f);
                    this.a.Q.b(0);
                    this.a.Q.I();
                    if (this.a.s) {
                        ad.a((View) bVar.n, 0);
                        this.a.T.f(8);
                    }
                    if (t.b(this.a.a)) {
                        int iAr = this.a.a.ar();
                        if (t.k(this.a.a)) {
                            iAr = (this.a.a.aq() + 1) * 1000;
                        }
                        com.bytedance.sdk.component.utils.l.b("TTAD.RFEndM", "showEndCard1: cT=" + iAr);
                        if (iAr == -1) {
                            if (t.c(this.a.a)) {
                                bVar.x();
                            } else {
                                bVar.p();
                            }
                        } else if (iAr >= 0) {
                            if (t.c(this.a.a)) {
                                this.a.X.sendEmptyMessageDelayed(1, iAr);
                            } else {
                                this.a.X.sendEmptyMessageDelayed(600, iAr);
                            }
                        }
                    } else {
                        a(bVar);
                    }
                    this.a.X.sendEmptyMessageDelayed(500, 100L);
                    a aVar6 = this.a;
                    aVar6.Q.a(aVar6.f1314d, true);
                    this.a.Q.c(true);
                    this.a.T.d(8);
                    this.a.T.g();
                    this.a.Q.b(true);
                    this.a.Q.j().a("prerender_page_show", (JSONObject) null);
                    return;
                }
            }
            d();
        }
    }

    public boolean a(com.bytedance.sdk.openadsdk.component.reward.b.b bVar) {
        this.a.t = f();
        com.bytedance.sdk.component.utils.l.b("TTAD.RFEndM", "showEndCard: cT2=" + this.a.t);
        if (this.a.a.d()) {
            return false;
        }
        a aVar = this.a;
        int i = aVar.t;
        if (i == -1) {
            if (t.c(aVar.a) && this.a.Q.p()) {
                bVar.x();
                return true;
            }
            bVar.p();
            return true;
        }
        if (i < 0) {
            return true;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 700;
        a aVar2 = this.a;
        messageObtain.arg1 = aVar2.t;
        aVar2.X.sendMessage(messageObtain);
        return true;
    }

    public void b() {
        this.b.c();
    }

    public void c() {
        this.b.d();
    }

    public void d() {
        if (!q.b(this.a.a)) {
            com.bytedance.sdk.component.utils.l.b("TTAD.RFEndM", "TimeTrackLog report 408 from backup page");
            this.a.Q.a(false, TTAdConstant.DOWNLOAD_URL_CODE, "end_card_timeout");
        }
        this.a.Q.C();
        this.a.Q.b(8);
        a aVar = this.a;
        if (aVar.s) {
            ad.a((View) aVar.Y.n, 8);
            this.a.T.f(0);
        }
        this.a.T.d(8);
        if (!this.a.a.at()) {
            this.b.b();
        } else if (!this.b.a(this.a.G)) {
            this.a.V.finish();
        }
        this.a.T.g();
        a(this.a.Y);
        this.a.R.c(false);
        a aVar2 = this.a;
        aVar2.L.a(aVar2.V.o());
    }

    public boolean e() {
        com.bytedance.sdk.openadsdk.component.reward.view.b bVar = this.b;
        if (bVar != null) {
            return bVar.e();
        }
        return false;
    }
}
