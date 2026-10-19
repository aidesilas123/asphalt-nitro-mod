package com.json.mediationsdk;

import android.text.TextUtils;
import com.json.environment.ContextProvider;
import com.json.h0;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.rb;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a0 implements rb.a {
    protected AbstractAdapter a;
    protected h0 b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected JSONObject f6233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f6234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f6235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Long f6236g = null;

    a0(h0 h0Var, AbstractAdapter abstractAdapter) {
        this.b = h0Var;
        this.a = abstractAdapter;
        this.f6233d = h0Var.c();
    }

    private void b(String str, int i) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, k() + " " + c() + " : " + str, i);
    }

    public void a(String str) {
        b(str, 0);
    }

    public void a(boolean z) {
        this.c = z;
    }

    @Override // com.ironsource.rb.a
    public int b() {
        return this.b.e();
    }

    public void b(String str) {
        b(str, 3);
    }

    @Override // com.ironsource.rb.a
    public String c() {
        return this.b.f();
    }

    public void c(String str) {
        this.f6234e = d.c().d(str);
    }

    public abstract IronSource.AD_UNIT d();

    public Long e() {
        return this.f6236g;
    }

    public String f() {
        return String.format("%s %s", i(), Integer.valueOf(hashCode()));
    }

    public int g() {
        return this.b.d();
    }

    public boolean h() {
        return this.c;
    }

    public String i() {
        return this.b.h().isMultipleInstances() ? this.b.h().getProviderTypeForReflection() : this.b.h().getProviderName();
    }

    public String j() {
        return this.b.g();
    }

    public abstract String k();

    public int l() {
        return 1;
    }

    public Map<String, Object> m() {
        HashMap map = new HashMap();
        try {
            AbstractAdapter abstractAdapter = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, abstractAdapter != null ? abstractAdapter.getVersion() : "");
            AbstractAdapter abstractAdapter2 = this.a;
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, abstractAdapter2 != null ? abstractAdapter2.getCoreSDKVersion() : "");
            map.put(IronSourceConstants.EVENTS_SUB_PROVIDER_ID, this.b.i());
            map.put(IronSourceConstants.EVENTS_PROVIDER, this.b.a());
            map.put("instanceType", Integer.valueOf(p() ? 2 : 1));
            map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(l()));
            if (!TextUtils.isEmpty(this.f6234e)) {
                map.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.f6234e);
            }
        } catch (Throwable th) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getProviderEventData " + c() + ")", th);
        }
        return map;
    }

    public int n() {
        return this.f6235f;
    }

    public boolean o() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        try {
            if (ContextProvider.getInstance().getCurrentActiveActivity() != null || !this.a.isUsingActivityBeforeImpression(d())) {
                return false;
            }
            ironLog.verbose(c() + " - is using activity before impression and activity is null");
            return true;
        } catch (Throwable th) {
            b("Exception while calling adapter.isUsingActivityBeforeImpression() - " + th.getLocalizedMessage());
            return true;
        }
    }

    public boolean p() {
        return this.b.j();
    }

    public void q() {
        try {
            AbstractAdapter abstractAdapter = this.a;
            if (abstractAdapter != null) {
                abstractAdapter.releaseMemory(this.b.b(), this.f6233d);
            }
        } catch (Throwable th) {
            IronLog.INTERNAL.error("exception - " + th.getMessage());
        }
        this.a = null;
    }

    public boolean r() {
        if (o()) {
            return false;
        }
        return p() || s();
    }

    public boolean s() {
        return this.b.k();
    }
}
