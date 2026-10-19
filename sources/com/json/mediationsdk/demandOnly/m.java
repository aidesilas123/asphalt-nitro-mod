package com.json.mediationsdk.demandOnly;

import android.text.TextUtils;
import com.json.adapters.ironsource.IronSourceLoadParameters;
import com.json.d8;
import com.json.h0;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.d;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class m {
    protected AbstractAdapter a;
    protected h0 b;
    protected JSONObject c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f6308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Timer f6309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f6310f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f6311g;
    protected JSONObject h;
    protected List<String> i;
    protected String j;
    private final Object k = new Object();
    private final Object l = new Object();
    protected final IronSource.AD_UNIT m;

    protected enum a {
        NOT_LOADED,
        LOAD_IN_PROGRESS,
        LOADED,
        SHOW_IN_PROGRESS
    }

    public m(h0 h0Var, AbstractAdapter abstractAdapter) {
        this.b = h0Var;
        this.m = h0Var.b();
        this.a = abstractAdapter;
        JSONObject jSONObjectC = h0Var.c();
        this.c = jSONObjectC;
        try {
            jSONObjectC.put(IronSourceLoadParameters.Constants.DEMAND_ONLY, true);
        } catch (JSONException unused) {
        }
        this.f6308d = a.NOT_LOADED;
        this.f6309e = null;
        this.f6311g = "";
        this.h = null;
        this.i = new ArrayList();
    }

    a a(a[] aVarArr, a aVar) {
        a aVar2;
        synchronized (this.k) {
            aVar2 = this.f6308d;
            if (Arrays.asList(aVarArr).contains(this.f6308d)) {
                f(aVar);
            }
        }
        return aVar2;
    }

    public void a(String str) {
        this.f6311g = str;
    }

    public void a(JSONObject jSONObject) {
        this.h = jSONObject;
    }

    public void a(boolean z) {
        try {
            this.c.put("isOneFlow", z);
        } catch (Exception e2) {
            IronLog.INTERNAL.verbose("Can't set isOneFlow = " + z + ". Error: " + e2.getMessage());
        }
    }

    public void b(String str) {
        this.j = d.c().d(str);
    }

    protected void b(List<String> list, String str, int i, String str2, String str3) {
        Iterator it = ((List) d8.a((ArrayList) list, new ArrayList())).iterator();
        while (it.hasNext()) {
            d.c().a(str3, str, d.c().a((String) it.next(), str, i, str2, "", "", "", ""));
        }
    }

    void c(TimerTask timerTask) {
        synchronized (this.l) {
            p();
            Timer timer = new Timer();
            this.f6309e = timer;
            timer.schedule(timerTask, this.f6310f);
        }
    }

    boolean d(a aVar) {
        boolean z;
        synchronized (this.k) {
            z = this.f6308d == aVar;
        }
        return z;
    }

    boolean e(a aVar, a aVar2) {
        synchronized (this.k) {
            if (this.f6308d != aVar) {
                return false;
            }
            f(aVar2);
            return true;
        }
    }

    public h0 f() {
        return this.b;
    }

    void f(a aVar) {
        IronLog.INTERNAL.verbose("DemandOnlySmash " + this.b.f() + ": current state=" + this.f6308d + ", new state=" + aVar);
        synchronized (this.k) {
            this.f6308d = aVar;
        }
    }

    public String g() {
        return this.f6311g;
    }

    public String h() {
        return this.b.f();
    }

    public int i() {
        return this.b.d();
    }

    public Map<String, Object> j() {
        HashMap map = new HashMap();
        try {
            AbstractAdapter abstractAdapter = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, abstractAdapter != null ? abstractAdapter.getVersion() : "");
            AbstractAdapter abstractAdapter2 = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, abstractAdapter2 != null ? abstractAdapter2.getCoreSDKVersion() : "");
            map.put(IronSourceConstants.EVENTS_SUB_PROVIDER_ID, this.b.i());
            map.put(IronSourceConstants.EVENTS_PROVIDER, this.b.a());
            map.put("isDemandOnly", 1);
            map.put("instanceType", Integer.valueOf(this.b.d()));
            if (!TextUtils.isEmpty(this.f6311g)) {
                map.put("auctionId", this.f6311g);
            }
            JSONObject jSONObject = this.h;
            if (jSONObject != null && jSONObject.length() > 0) {
                map.put("genericParams", this.h);
            }
            if (!TextUtils.isEmpty(this.j)) {
                map.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.j);
            }
            if (o()) {
                map.put("isOneFlow", 1);
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getProviderEventData " + h() + ")", e2);
        }
        return map;
    }

    String k() {
        a aVar = this.f6308d;
        return aVar == null ? "null" : aVar.toString();
    }

    public String l() {
        return this.b.i();
    }

    public List<String> m() {
        return this.i;
    }

    public boolean n() {
        return this.b.j();
    }

    public boolean o() {
        return this.c.optBoolean("isOneFlow", false);
    }

    void p() {
        synchronized (this.l) {
            Timer timer = this.f6309e;
            if (timer != null) {
                timer.cancel();
                this.f6309e = null;
            }
        }
    }
}
