package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.a4;
import com.tapjoy.internal.b8;
import com.tapjoy.internal.ca;
import com.tapjoy.internal.i8;
import com.tapjoy.internal.k3;
import com.tapjoy.internal.q3;
import com.tapjoy.internal.v1;
import com.tapjoy.internal.w1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class o {
    public Context b;
    public Map c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w f8037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public q f8038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f8039f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f8040g;
    public final TJAdUnit h;
    public boolean m;
    public String r;
    public String s;
    public String t;
    public String u;
    public HashMap v;
    public final HashMap a = new HashMap();
    public boolean i = false;
    public boolean j = false;
    public k3 k = null;
    public com.tapjoy.internal.x0 l = null;
    public volatile boolean n = false;
    public volatile boolean o = false;
    public volatile boolean p = false;
    public volatile boolean q = false;

    public o(String str, String str2) {
        t0 t0Var = new t0(this);
        u0 u0Var = new u0(this);
        Activity activityA = com.tapjoy.internal.t.a();
        this.b = activityA;
        if (activityA == null) {
            TapjoyLog.d("TJCorePlacement", "getVisibleActivity() is NULL. Activity can be explicitly set via `Tapjoy.setActivity(Activity)`");
        }
        w wVar = new w(str2, j());
        this.f8037d = wVar;
        wVar.y(str);
        this.f8038e = new q(this.b);
        this.f8039f = UUID.randomUUID().toString();
        TJAdUnit tJAdUnit = new TJAdUnit();
        this.h = tJAdUnit;
        tJAdUnit.A(t0Var);
        tJAdUnit.y(u0Var);
    }

    public final TJPlacement a(String str) {
        TJPlacement tJPlacement;
        synchronized (this.a) {
            tJPlacement = (TJPlacement) this.a.get(str);
            if (tJPlacement != null) {
                TapjoyLog.d("TJCorePlacement", "Returning " + str + " placement: " + tJPlacement.c());
            }
        }
        return tJPlacement;
    }

    public final void b() {
        if (i8.c) {
            this.h.i().a("contentReady", (HashMap) null);
        }
        if (this.o) {
            return;
        }
        this.q = true;
        TapjoyLog.i("TJCorePlacement", "Content is ready for placement " + this.f8037d.i());
        TJPlacement tJPlacementA = a("REQUEST");
        if (tJPlacementA == null || tJPlacementA.d() == null) {
            return;
        }
        tJPlacementA.d().onContentReady(tJPlacementA);
        this.o = true;
    }

    public final void c(TJPlacement tJPlacement) {
        if (tJPlacement == null || tJPlacement.d() == null) {
            return;
        }
        TapjoyLog.i("TJCorePlacement", "Content request delivered successfully for placement " + this.f8037d.i() + ", contentAvailable: " + l() + ", mediationAgent: " + this.t);
        tJPlacement.d().onRequestSuccess(tJPlacement);
    }

    public final void d(TJPlacement tJPlacement, TapjoyErrorMessage.ErrorType errorType, r rVar) {
        TapjoyLog.e("TJCorePlacement", new TapjoyErrorMessage(errorType, "Content request failed for placement " + this.f8037d.i() + "; Reason= " + rVar.b));
        if (tJPlacement == null || tJPlacement.d() == null) {
            return;
        }
        tJPlacement.d().onRequestFailure(tJPlacement, rVar);
    }

    public final void e(String str, TJPlacement tJPlacement) {
        synchronized (this.a) {
            this.a.put(str, tJPlacement);
            if (tJPlacement != null) {
                TapjoyLog.d("TJCorePlacement", "Setting " + str + " placement: " + tJPlacement.c());
            }
        }
    }

    public final synchronized void f(String str, HashMap map) {
        String strC;
        b8 b8Var;
        long jLongValue;
        long jLongValue2;
        long jLongValue3;
        double dDoubleValue;
        if (this.n) {
            TapjoyLog.i("TJCorePlacement", "Placement " + this.f8037d.i() + " is already requesting content");
            return;
        }
        this.f8037d.q();
        this.h.u();
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.l = null;
        this.k = null;
        this.n = true;
        TJPlacement tJPlacementA = a("REQUEST");
        Map<String, String> genericURLParams = TapjoyConnectCore.getGenericURLParams();
        this.c = genericURLParams;
        genericURLParams.putAll(TapjoyConnectCore.getTimeStampAndVerifierParams());
        Map map2 = this.c;
        q qVar = this.f8038e;
        qVar.getClass();
        HashMap map3 = new HashMap();
        Context context = qVar.a;
        if (context != null && !qVar.f8045f) {
            qVar.c = new v(context, "tjcPrefrences").c("last_currency_balance", -9999);
        }
        if (qVar.i.size() > 0 && !qVar.f8045f && qVar.c >= 0) {
            TapjoyUtil.safePut(map3, "currency_id_balance", (String) qVar.i.get(0), true);
            TapjoyUtil.safePut(map3, "currency_balance", Integer.toString(qVar.c), true);
        } else if (qVar.i.contains(qVar.b) && qVar.f8045f && qVar.c >= 0) {
            TapjoyUtil.safePut(map3, "currency_id_balance", qVar.b, true);
            TapjoyUtil.safePut(map3, "currency_balance", Integer.toString(qVar.c), true);
        }
        if (qVar.i.contains(qVar.f8043d) && qVar.f8044e > 0) {
            TapjoyUtil.safePut(map3, "currency_id_required", qVar.f8043d, true);
            TapjoyUtil.safePut(map3, "currency_amount_required", Integer.toString(qVar.f8044e), true);
        }
        map2.putAll(map3);
        TapjoyUtil.safePut(this.c, "event_name", this.f8037d.i(), true);
        TapjoyUtil.safePut(this.c, "event_preload", String.valueOf(true), true);
        TapjoyUtil.safePut(this.c, "debug", Boolean.toString(false), true);
        v1 v1Var = v1.a;
        Map map4 = this.c;
        w1 w1Var = v1Var.f8016e;
        if (w1Var == null) {
            strC = null;
        } else {
            w1Var.a();
            strC = w1Var.b.c();
        }
        TapjoyUtil.safePut(map4, "action_id_exclusion", strC, true);
        TapjoyUtil.safePut(this.c, "system_placement", String.valueOf(this.m), true);
        TapjoyUtil.safePut(this.c, "push_id", tJPlacementA.f7806f, true);
        if (tJPlacementA.b() != null) {
            TapjoyUtil.safePut(this.c, "entrypoint", tJPlacementA.b().e(), true);
        }
        TapjoyUtil.safePut(this.c, "mediation_source", this.r, true);
        TapjoyUtil.safePut(this.c, "adapter_version", this.s, true);
        if (!TextUtils.isEmpty(TapjoyConnectCore.getCustomParameter())) {
            TapjoyUtil.safePut(this.c, "cp", TapjoyConnectCore.getCustomParameter(), true);
        }
        if (map != null) {
            this.c.putAll(map);
        }
        if (i8.c) {
            TapjoyUtil.safePut(this.c, "sdk_beacon_id", this.h.i().f7918e, true);
        }
        float fFloatValue = 0.0f;
        Iterator it = ca.a.b.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map map5 = ((q3) it.next()).a;
            Object obj = map5 != null ? map5.get("placement_request_content_retry_timeout") : null;
            if (obj != null) {
                if (obj instanceof Number) {
                    fFloatValue = ((Number) obj).floatValue();
                    break;
                } else if (obj instanceof String) {
                    try {
                        fFloatValue = Float.parseFloat((String) obj);
                        break;
                    } catch (IllegalArgumentException unused) {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        a4 a4Var = new a4((long) fFloatValue);
        Iterator it2 = ca.a.b.a.iterator();
        while (true) {
            if (!it2.hasNext()) {
                b8Var = b8.a;
                break;
            }
            Map map6 = ((q3) it2.next()).a;
            Object obj2 = map6 != null ? map6.get("placement_request_content_retry_backoff") : null;
            if (obj2 instanceof List) {
                List list = (List) obj2;
                try {
                    Object obj3 = list.get(0);
                    if (obj3 instanceof Number) {
                        jLongValue = ((Number) obj3).longValue();
                    } else {
                        if (!(obj3 instanceof String)) {
                            throw new IllegalArgumentException();
                        }
                        jLongValue = Long.parseLong((String) obj3);
                    }
                    long j = jLongValue;
                    Object obj4 = list.get(1);
                    if (obj4 instanceof Number) {
                        jLongValue2 = ((Number) obj4).longValue();
                    } else {
                        if (!(obj4 instanceof String)) {
                            throw new IllegalArgumentException();
                        }
                        jLongValue2 = Long.parseLong((String) obj4);
                    }
                    Object obj5 = list.get(2);
                    if (obj5 instanceof Number) {
                        jLongValue3 = ((Number) obj5).longValue();
                    } else {
                        if (!(obj5 instanceof String)) {
                            throw new IllegalArgumentException();
                        }
                        jLongValue3 = Long.parseLong((String) obj5);
                    }
                    Object obj6 = list.get(3);
                    if (obj6 instanceof Number) {
                        dDoubleValue = ((Number) obj6).doubleValue();
                    } else {
                        if (!(obj6 instanceof String)) {
                            throw new IllegalArgumentException();
                        }
                        dDoubleValue = Double.parseDouble((String) obj6);
                    }
                    b8Var = new b8(j, jLongValue2, jLongValue3, dDoubleValue);
                } catch (RuntimeException unused2) {
                }
            }
        }
        new v0(this, str, tJPlacementA, a4Var, b8Var).start();
    }

    public final void g(String str) throws f0 {
        if (str == null) {
            throw new f0("TJPlacement request failed due to null response");
        }
        try {
            TapjoyLog.d("TJCorePlacement", "Disable preload flag is set for placement " + this.f8037d.i());
            this.f8037d.C(new JSONObject(str).getString("redirect_url"));
            this.f8037d.A(true);
            this.f8037d.u(true);
            TapjoyLog.d("TJCorePlacement", "redirect_url:" + this.f8037d.j());
        } catch (JSONException unused) {
            throw new f0("TJPlacement request failed, malformed server response");
        }
    }

    public TJAdUnit h() {
        return this.h;
    }

    public Context i() {
        return this.b;
    }

    public String j() {
        String appID = TapjoyConnectCore.getAppID();
        if (TextUtils.isEmpty(appID)) {
            TapjoyLog.i("TJCorePlacement", "Placement content URL cannot be generated for null app ID");
            return "";
        }
        return TapjoyConnectCore.getPlacementURL() + "v1/apps/" + appID + "/content?";
    }

    public w k() {
        return this.f8037d;
    }

    public boolean l() {
        return this.p;
    }

    public boolean m() {
        return this.q;
    }

    public void n(Context context) {
        this.b = context;
        this.f8038e = new q(context);
    }
}
