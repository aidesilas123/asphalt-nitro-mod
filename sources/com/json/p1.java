package com.json;

import android.app.Activity;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.Placement;
import com.json.t1;
import com.json.w;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p1<Listener extends w> extends t1<Listener> implements AdapterAdInteractionListener {

    class a extends jb {
        a() {
        }

        @Override // com.json.jb
        public void a() {
            p1.this.O();
        }
    }

    class b extends jb {
        b() {
        }

        @Override // com.json.jb
        public void a() {
            p1.this.f0();
        }
    }

    class c extends jb {
        c() {
        }

        @Override // com.json.jb
        public void a() {
            p1.this.d0();
        }
    }

    class d extends jb {
        d() {
        }

        @Override // com.json.jb
        public void a() {
            p1.this.g0();
        }
    }

    class e extends jb {
        e() {
        }

        @Override // com.json.jb
        public void a() {
            p1.this.e0();
        }
    }

    class f extends jb {
        final /* synthetic */ int a;
        final /* synthetic */ String b;

        f(int i, String str) {
            this.a = i;
            this.b = str;
        }

        @Override // com.json.jb
        public void a() {
            p1.this.k0(this.a, this.b);
        }
    }

    public p1(pa paVar, p pVar, BaseAdAdapter<?, ?> baseAdAdapter, h0 h0Var, d1 d1Var, Listener listener) {
        super(paVar, pVar, baseAdAdapter, h0Var, d1Var, listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        String str;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(U());
        synchronized (this.q) {
            if (this.f6621e != t1.h.SHOWING) {
                ironLog.error("unexpected ad closed for " + k() + " - state = " + this.f6621e);
                v vVar = this.f6620d;
                if (vVar != null) {
                    vVar.k.g("unexpected ad closed - state = " + this.f6621e);
                }
                return;
            }
            N(t1.h.NONE);
            if (this.f6620d != null) {
                String string = "";
                if (this.a.a() == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    String strD = ((w) this.b).d();
                    StringBuilder sb = new StringBuilder();
                    sb.append("otherInstanceAvailable = ");
                    if (strD.length() > 0) {
                        str = "true|" + strD;
                    } else {
                        str = "false";
                    }
                    sb.append(str);
                    string = sb.toString();
                }
                this.f6620d.j.a(X(), string);
            }
            ((w) this.b).a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        IronLog.INTERNAL.verbose(U());
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.c(X());
        }
        ((w) this.b).c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        IronLog.INTERNAL.verbose(U());
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.j(X());
        }
        ((w) this.b).b((p1<?>) this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        IronLog.INTERNAL.verbose(U());
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.g(X());
        }
        ((w) this.b).d(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0() {
        IronLog.INTERNAL.verbose(U());
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.h(X());
        }
    }

    static String h0(t1.h hVar, int i, String str) {
        return String.format(Locale.ENGLISH, "unexpected show failed, state - %s, error - %d %s", hVar, Integer.valueOf(i), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(int i, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(G("error = " + i + ", " + str));
        t1.h hVar = this.f6621e;
        if (hVar == t1.h.SHOWING) {
            N(t1.h.FAILED);
            v vVar = this.f6620d;
            if (vVar != null) {
                vVar.j.a(X(), i, str, "");
            }
            ((w) this.b).a(new IronSourceError(i, str), (p1<?>) this);
            return;
        }
        String strH0 = h0(hVar, i, str);
        ironLog.error(G(strH0));
        v vVar2 = this.f6620d;
        if (vVar2 != null) {
            vVar2.k.o(strH0);
        }
    }

    @Override // com.json.t1
    public boolean A() {
        Object obj;
        if (this.k == null || !x()) {
            return false;
        }
        try {
            obj = this.c;
        } catch (Throwable th) {
            String str = "isReadyToShow - exception = " + th.getMessage() + " - state = " + this.f6621e;
            IronLog.INTERNAL.error(G(str));
            v vVar = this.f6620d;
            if (vVar != null) {
                vVar.k.c(str);
            }
        }
        if (obj instanceof AdapterAdFullScreenInterface) {
            return ((AdapterAdFullScreenInterface) obj).isAdAvailable(this.k);
        }
        IronLog.INTERNAL.error(G("isReadyToShow - adapter not instance of AdapterAdFullScreenInterface"));
        v vVar2 = this.f6620d;
        if (vVar2 != null) {
            vVar2.k.c("isReadyToShow - adapter not instance of AdapterAdFullScreenInterface");
        }
        return false;
    }

    public void a(Activity activity, Placement placement) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(G("placementName = " + placement.getPlacementName()));
        try {
            this.f6623g = placement;
            N(t1.h.SHOWING);
            this.f6620d.j.a(activity, X());
            Object obj = this.c;
            if (obj instanceof AdapterAdFullScreenInterface) {
                ((AdapterAdFullScreenInterface) obj).showAd(this.k, this);
            } else {
                ironLog.error(G("showAd - adapter not instance of AdapterAdFullScreenInterface"));
                v vVar = this.f6620d;
                if (vVar != null) {
                    vVar.k.c("showAd - adapter not instance of AdapterAdFullScreenInterface");
                }
            }
        } catch (Throwable th) {
            N(t1.h.FAILED);
            String str = "showAd - exception = " + th.getMessage() + " - state = " + this.f6621e;
            IronLog.INTERNAL.error(G(str));
            v vVar2 = this.f6620d;
            if (vVar2 != null) {
                vVar2.k.c(str);
            }
            onAdShowFailed(s.h(this.a.a()), str);
        }
    }

    public void b(boolean z) {
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.a(z);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        if (b0().c()) {
            b0().a(new a());
        } else {
            O();
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdEnded() {
        if (b0().c()) {
            b0().a(new c());
        } else {
            d0();
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowFailed(int i, String str) {
        if (b0().c()) {
            b0().a(new f(i, str));
        } else {
            k0(i, str);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowSuccess() {
        if (b0().c()) {
            b0().a(new e());
        } else {
            e0();
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdStarted() {
        if (b0().c()) {
            b0().a(new b());
        } else {
            f0();
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdVisible() {
        if (b0().c()) {
            b0().a(new d());
        } else {
            g0();
        }
    }
}
