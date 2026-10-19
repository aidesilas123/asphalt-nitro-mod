package com.json;

import android.app.Activity;
import com.facebook.internal.security.CertificateUtil;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.json.mediationsdk.h;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.mediationsdk.utils.b;
import com.json.p1;
import com.json.q1;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o1<Smash extends p1<?>, Listener extends AdapterAdInteractionListener> extends q1<Smash, Listener> implements w {

    class a extends jb {
        final /* synthetic */ Activity a;
        final /* synthetic */ Placement b;

        a(Activity activity, Placement placement) {
            this.a = activity;
            this.b = placement;
        }

        @Override // com.json.jb
        public void a() {
            o1.this.z0(this.a, this.b);
        }
    }

    protected o1(l lVar, o8 o8Var, IronSourceSegment ironSourceSegment, boolean z) {
        super(lVar, o8Var, ironSourceSegment, z);
    }

    private String t0(List<Smash> list) {
        StringBuilder sb = new StringBuilder();
        for (Smash smash : list) {
            if (smash.e() != null) {
                sb.append(smash.c());
                sb.append(CertificateUtil.DELIMITER);
                sb.append(smash.e());
                sb.append(",");
            }
        }
        return sb.toString();
    }

    private void u0(Activity activity, p1<?> p1Var, Placement placement) {
        if (this.o.getLoadingData().e()) {
            this.r.a();
        }
        p1Var.a(activity, placement);
    }

    private void v0(IronSourceError ironSourceError, p1<?> p1Var, String str) {
        this.s.j.a(f0(), ironSourceError.getErrorCode(), ironSourceError.getErrorMessage(), str);
        this.q.e();
        this.t.a(ironSourceError, p1Var != null ? p1Var.f() : null);
        if (this.o.getLoadingData().e()) {
            Q(false);
        }
    }

    private void w0(IronSourceError ironSourceError, String str) {
        v0(ironSourceError, null, str);
    }

    private void y0(Smash smash, List<Smash> list) {
        for (Smash smash2 : list) {
            if (smash != null && smash2 == smash) {
                smash.b(true);
                return;
            }
            smash2.b(false);
            IronLog.INTERNAL.verbose(J(smash2.k() + " - not ready to show"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void z0(Activity activity, Placement placement) {
        p1 p1Var;
        IronSourceError ironSourceError;
        String strT0;
        IronLog.INTERNAL.verbose(J("state = " + this.p));
        synchronized (this.x) {
            this.i = placement;
            this.s.j.a(activity, f0());
            q1.f fVar = this.p;
            q1.f fVar2 = q1.f.SHOWING;
            p1Var = null;
            if (fVar == fVar2) {
                ironSourceError = new IronSourceError(s.g(this.o.getAdUnit()), "can't show ad while an ad is already showing");
            } else if (fVar != q1.f.READY_TO_SHOW) {
                ironSourceError = new IronSourceError(509, "show called while no ads are available");
            } else if (placement == null) {
                ironSourceError = new IronSourceError(s.b(this.o.getAdUnit()), "empty default placement");
            } else if (b.b(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName(), this.o.getAdUnit())) {
                ironSourceError = new IronSourceError(s.f(this.o.getAdUnit()), "placement " + placement.getPlacementName() + " is capped");
            } else {
                ironSourceError = null;
            }
            if (ironSourceError != null) {
                IronLog.API.error(J(ironSourceError.getErrorMessage()));
                strT0 = "";
            } else {
                List listB = this.a.b();
                jd jdVar = new jd(this.o);
                p1Var = (p1) jdVar.c(listB);
                y0(p1Var, jdVar.b(listB));
                if (p1Var != null) {
                    w(fVar2);
                    d0(p1Var);
                } else {
                    ironSourceError = ErrorBuilder.buildNoAdsToShowError(this.o.getAdUnit().toString());
                    strT0 = t0(listB);
                }
            }
            w0(ironSourceError, strT0);
        }
        if (p1Var != null) {
            u0(activity, p1Var, this.i);
        }
    }

    public void a(Activity activity, Placement placement) {
        if (c()) {
            a(new a(activity, placement));
        } else {
            z0(activity, placement);
        }
    }

    @Override // com.json.w
    public void a(IronSourceError ironSourceError, p1<?> p1Var) {
        IronLog.INTERNAL.verbose(J(p1Var.k() + " - error = " + ironSourceError));
        this.b.put(p1Var.c(), h.a.ISAuctionPerformanceFailedToShow);
        w(q1.f.READY_TO_LOAD);
        v0(ironSourceError, p1Var, "");
    }

    @Override // com.json.w
    public void a(p1<?> p1Var) {
        IronLog.INTERNAL.verbose(J(p1Var.k()));
        if (this.p == q1.f.SHOWING) {
            w(q1.f.READY_TO_LOAD);
        }
        this.q.d();
        this.t.a(p1Var.f());
    }

    @Override // com.json.w
    public void b(p1<?> p1Var) {
        IronLog.INTERNAL.verbose(J(p1Var.k()));
        this.t.g(p1Var.f());
    }

    @Override // com.json.w
    public void c(p1<?> p1Var) {
        IronLog.INTERNAL.verbose(J(p1Var.k()));
        this.t.a();
    }

    @Override // com.json.w
    public String d() {
        StringBuilder sb = new StringBuilder();
        if (this.p == q1.f.READY_TO_SHOW) {
            for (p1 p1Var : this.a.b()) {
                if (p1Var.x()) {
                    sb.append(p1Var.c());
                    sb.append(";");
                }
            }
        }
        return sb.toString();
    }

    @Override // com.json.w
    public void d(p1<?> p1Var) {
        IronLog.INTERNAL.verbose(J(p1Var.k()));
        this.t.b();
    }

    @Override // com.json.q1
    protected boolean l0() {
        return false;
    }

    @Override // com.json.q1
    public boolean q() {
        if (!n0()) {
            return false;
        }
        if (this.j && !IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) {
            return false;
        }
        Iterator it = this.a.b().iterator();
        while (it.hasNext()) {
            if (((p1) it.next()).A()) {
                return true;
            }
        }
        return false;
    }
}
