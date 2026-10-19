package com.fyber.inneractive.sdk.flow;

import android.app.Activity;
import android.content.res.Resources;
import android.os.CountDownTimer;
import android.view.View;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.external.InneractiveUnitController.EventsListener;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.u0;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class z<AdContent extends q, EventsListener extends InneractiveUnitController.EventsListener> extends r<AdContent, EventsListener> implements com.fyber.inneractive.sdk.interfaces.c {
    public c.a l;
    public Runnable m;
    public u0 n;
    public Runnable o;
    public u0 p;
    public long s;
    public CountDownTimer w;
    public boolean q = false;
    public boolean r = false;
    public boolean t = false;
    public boolean u = false;
    public final com.fyber.inneractive.sdk.util.a v = new com.fyber.inneractive.sdk.util.a();

    public class a extends CountDownTimer {
        public a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            CountDownTimer countDownTimer = z.this.w;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            z.this.e(false);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            int i = ((int) j) / 1000;
            c.a aVar = z.this.l;
            if (aVar != null) {
                aVar.updateCloseCountdown(i);
            }
        }
    }

    public class b implements u0.b {
        public b() {
        }

        @Override // com.fyber.inneractive.sdk.util.u0.b
        public void a(u0 u0Var) {
            com.fyber.inneractive.sdk.util.m.b.post(z.this.m);
            z zVar = z.this;
            u0 u0Var2 = zVar.n;
            if (u0Var2 != null) {
                u0Var2.f2745e = null;
                zVar.n = null;
            }
            zVar.r = false;
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public int A() {
        c.a aVar = this.l;
        if (aVar == null || aVar.getLayout() == null) {
            return 1;
        }
        return this.l.getLayout().getWidth();
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public void D() {
        super.D();
    }

    public abstract boolean J();

    public void K() {
        if (this.m == null) {
            long jN = N();
            this.s = jN;
            this.m = new y(this, jN);
            IAlog.a("%senabling close with delay %d", IAlog.a(this), Long.valueOf(this.s));
            AdContent adcontent = this.b;
            boolean zB = adcontent != null ? b(adcontent) : false;
            if (!zB || J()) {
                Q();
                return;
            }
            if (zB) {
                c.a aVar = this.l;
                if (aVar != null) {
                    aVar.showCloseCountdown();
                }
                a aVar2 = new a(100 + this.s, 1000L);
                this.w = aVar2;
                aVar2.start();
            }
        }
    }

    public abstract int L();

    public abstract int M();

    public abstract long N();

    public abstract boolean O();

    public void P() {
        Runnable runnable = this.m;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
            this.m = null;
        }
        Runnable runnable2 = this.o;
        if (runnable2 != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable2);
            this.o = null;
        }
    }

    public void Q() {
        if (this.r) {
            return;
        }
        this.r = true;
        u0 u0Var = new u0(TimeUnit.MILLISECONDS, this.s);
        this.n = u0Var;
        u0Var.f2745e = new b();
        u0Var.c();
    }

    public abstract long a(long j);

    public void a(c.a aVar, Activity activity) throws Resources.NotFoundException, InneractiveUnitController.AdDisplayError {
        if (this.a == null) {
            IAlog.e("%sYou must set the spot to render before calling renderAd", IAlog.a(this));
            throw new InneractiveUnitController.AdDisplayError("No spot ad to render");
        }
        if (aVar != null) {
            this.l = aVar;
        } else {
            IAlog.e("%srenderAd called with a null activity!", IAlog.a(this));
            throw new InneractiveUnitController.AdDisplayError("Activity is null");
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void b(boolean z) {
    }

    public abstract boolean b(AdContent adcontent);

    public void d(boolean z) {
        s.a aVar;
        if (this.b == null) {
            aVar = new s.a(com.fyber.inneractive.sdk.network.r.MRAID_CUSTOM_CLOSE_DETECTED, (InneractiveAdRequest) null, (com.fyber.inneractive.sdk.response.e) null, (JSONArray) null);
        } else {
            com.fyber.inneractive.sdk.network.r rVar = com.fyber.inneractive.sdk.network.r.MRAID_CUSTOM_CLOSE_DETECTED;
            AdContent adcontent = this.b;
            aVar = new s.a(rVar, adcontent.a, adcontent.d(), this.b.c.c());
        }
        JSONObject jSONObject = new JSONObject();
        Boolean boolValueOf = Boolean.valueOf(z);
        try {
            jSONObject.put("fyber_close_enabled", boolValueOf);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "fyber_close_enabled", boolValueOf);
        }
        aVar.f2120f.put(jSONObject);
        aVar.a((String) null);
    }

    @Override // com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        P();
        c.a aVar = this.l;
        if (aVar != null) {
            aVar.destroy();
        }
        this.l = null;
        CountDownTimer countDownTimer = this.w;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.w = null;
        }
        u0 u0Var = this.p;
        if (u0Var != null) {
            u0Var.f2745e = null;
            this.p = null;
        }
        u0 u0Var2 = this.n;
        if (u0Var2 != null) {
            u0Var2.f2745e = null;
            this.n = null;
        }
        super.destroy();
    }

    public void e(boolean z) {
        s.a aVar;
        this.q = true;
        if (z) {
            if (this.b == null) {
                aVar = new s.a(com.fyber.inneractive.sdk.network.r.FAIL_SAFE_ACTIVATED, (InneractiveAdRequest) null, (com.fyber.inneractive.sdk.response.e) null, (JSONArray) null);
            } else {
                com.fyber.inneractive.sdk.network.r rVar = com.fyber.inneractive.sdk.network.r.FAIL_SAFE_ACTIVATED;
                AdContent adcontent = this.b;
                aVar = new s.a(rVar, adcontent.a, adcontent.d(), this.b.c.c());
            }
            JSONObject jSONObject = new JSONObject();
            Boolean boolValueOf = Boolean.valueOf(O());
            try {
                jSONObject.put("is_endcard", boolValueOf);
            } catch (Exception unused) {
                IAlog.e("Got exception adding param to json object: %s, %s", "is_endcard", boolValueOf);
            }
            aVar.f2120f.put(jSONObject);
            aVar.a((String) null);
        }
        c.a aVar2 = this.l;
        if (aVar2 != null) {
            aVar2.showCloseButton(z, M(), L());
            if (z) {
                return;
            }
            this.v.a();
            this.v.a(false);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void initialize(InneractiveAdSpot inneractiveAdSpot) {
        this.a = inneractiveAdSpot;
        this.b = (AdContent) inneractiveAdSpot.getAdContent();
        this.c = (EventsListener) inneractiveAdSpot.getSelectedUnitController().getEventsListener();
        this.v.a = inneractiveAdSpot;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void o() {
        u0 u0Var = this.n;
        if (u0Var != null) {
            u0Var.b();
        }
        u0 u0Var2 = this.p;
        if (u0Var2 != null) {
            u0Var2.b();
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void t() {
        u0 u0Var = this.n;
        if (u0Var != null) {
            u0Var.a();
        }
        u0 u0Var2 = this.p;
        if (u0Var2 != null) {
            u0Var2.a();
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public View y() {
        c.a aVar = this.l;
        if (aVar != null) {
            return aVar.getLayout();
        }
        return null;
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public int z() {
        c.a aVar = this.l;
        if (aVar == null || aVar.getLayout() == null) {
            return 1;
        }
        return this.l.getLayout().getHeight();
    }
}
