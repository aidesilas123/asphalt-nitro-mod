package com.json;

import android.text.TextUtils;
import com.json.a0;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.rb;
import com.json.ub;
import com.json.v;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class t1<Listener extends a0> implements NetworkInitializationListener, ub.a, u, AdapterAdListener, rb.a {
    protected p a;
    protected Listener b;
    protected BaseAdAdapter<?, AdapterAdListener> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected v f6620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected h f6621e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Placement f6623g;
    protected h0 h;
    protected JSONObject i;
    protected String j;
    protected AdData k;
    protected Long l;
    protected t3 m;
    private final d1 o;
    private final pa p;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f6622f = new AtomicBoolean(false);
    private ub n = new ub(TimeUnit.SECONDS.toMillis(a0()));
    protected final Object q = new Object();

    class a extends jb {
        a() {
        }

        @Override // com.json.jb
        public void a() {
            t1.this.C();
        }
    }

    class b extends jb {
        b() {
        }

        @Override // com.json.jb
        public void a() {
            t1.this.u();
        }
    }

    class c extends jb {
        final /* synthetic */ int a;
        final /* synthetic */ String b;

        c(int i, String str) {
            this.a = i;
            this.b = str;
        }

        @Override // com.json.jb
        public void a() {
            t1.this.I(this.a, this.b);
        }
    }

    class d extends jb {
        d() {
        }

        @Override // com.json.jb
        public void a() {
            t1.this.s();
        }
    }

    class e extends jb {
        final /* synthetic */ AdapterErrorType a;
        final /* synthetic */ int b;
        final /* synthetic */ String c;

        e(AdapterErrorType adapterErrorType, int i, String str) {
            this.a = adapterErrorType;
            this.b = i;
            this.c = str;
        }

        @Override // com.json.jb
        public void a() {
            t1.this.J(this.a, this.b, this.c);
        }
    }

    class f extends jb {
        f() {
        }

        @Override // com.json.jb
        public void a() {
            t1.this.t();
        }
    }

    class g extends jb {
        g() {
        }

        @Override // com.json.jb
        public void a() {
            t1.this.q();
        }
    }

    protected enum h {
        NONE,
        INIT_IN_PROGRESS,
        READY_TO_LOAD,
        LOADING,
        LOADED,
        SHOWING,
        FAILED
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t1(pa paVar, p pVar, BaseAdAdapter<?, ?> baseAdAdapter, h0 h0Var, d1 d1Var, Listener listener) {
        this.a = pVar;
        this.b = listener;
        this.f6620d = new v(pVar.a(), v.b.PROVIDER, this);
        this.h = h0Var;
        this.i = h0Var.c();
        this.c = baseAdAdapter;
        this.o = d1Var;
        this.p = paVar;
        N(h.NONE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        long jA = t3.a(this.m);
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(G("Load duration = " + jA + ", state = " + this.f6621e + ", isBidder = " + v()));
        synchronized (this.q) {
            if (!y()) {
                ironLog.error(G(String.format("unexpected timeout for %s, state - %s, error - %s", k(), this.f6621e, 1025)));
                if (this.f6620d != null) {
                    this.f6620d.k.p(String.format("unexpected timeout, state - %s, error - %s", this.f6621e, 1025));
                }
            } else {
                N(h.FAILED);
                v vVar = this.f6620d;
                if (vVar != null) {
                    vVar.f6680g.a(jA, 1025);
                    this.f6620d.f6680g.a(jA, 1025, "time out");
                }
                this.b.a(ErrorBuilder.buildLoadFailedError("time out"), this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(int i, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(G("error = " + i + ", " + str));
        if (d()) {
            ub ubVar = this.n;
            if (ubVar != null) {
                ubVar.e();
            }
            N(h.FAILED);
            K(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, i, str, t3.a(this.m));
            this.b.a(new IronSourceError(i, str), this);
            return;
        }
        if (this.f6621e == h.FAILED) {
            return;
        }
        ironLog.error(G(String.format("unexpected init failed for %s, state - %s, error - %s, %s", k(), this.f6621e, Integer.valueOf(i), str)));
        if (this.f6620d != null) {
            this.f6620d.k.h(String.format("unexpected init failed, state - %s, error - %s, %s", this.f6621e, Integer.valueOf(i), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(AdapterErrorType adapterErrorType, int i, String str) {
        long jA = t3.a(this.m);
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(G("Load duration = " + jA + ", error = " + i + ", " + str));
        ub ubVar = this.n;
        if (ubVar != null) {
            ubVar.e();
        }
        synchronized (this.q) {
            h hVar = this.f6621e;
            if (hVar == h.LOADING) {
                K(adapterErrorType, i, str, jA);
                N(h.FAILED);
                this.b.a(new IronSourceError(i, str), this);
                return;
            }
            if (hVar == h.FAILED) {
                K(adapterErrorType, i, str, jA);
                return;
            }
            if (hVar == h.LOADED && adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_AD_EXPIRED) {
                this.l = Long.valueOf(System.currentTimeMillis());
                ironLog.error(G(String.format("ad expired for %s, state = %s", this.h.f(), this.f6621e)));
                v vVar = this.f6620d;
                if (vVar != null) {
                    vVar.k.a(String.format("ad expired, state = %s", this.f6621e));
                }
                return;
            }
            ironLog.error(G(String.format("unexpected load failed for %s, state - %s, error - %s, %s", k(), this.f6621e, Integer.valueOf(i), str)));
            String str2 = String.format("unexpected load failed, state - %s, error - %s, %s", this.f6621e, Integer.valueOf(i), str);
            if (this.f6620d != null) {
                if (c0()) {
                    this.f6620d.k.m(str2);
                } else if (this.a.a() != IronSource.AD_UNIT.REWARDED_VIDEO || this.f6621e != h.SHOWING) {
                    this.f6620d.k.j(str2);
                }
            }
        }
    }

    private void K(AdapterErrorType adapterErrorType, int i, String str, long j) {
        if (this.f6620d != null) {
            if (adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL) {
                if (c0()) {
                    this.f6620d.f6680g.c(j, i);
                    return;
                } else {
                    this.f6620d.f6680g.b(j, i);
                    return;
                }
            }
            if (TextUtils.isEmpty(str)) {
                this.f6620d.f6680g.a(j, i);
            } else if (c0()) {
                this.f6620d.f6680g.b(j, i, str);
            } else {
                this.f6620d.f6680g.a(j, i, str);
            }
        }
    }

    private boolean S(t tVar) {
        return tVar == t.LOAD_AD || tVar == t.LOAD_AD_SUCCESS || tVar == t.LOAD_AD_FAILED || tVar == t.LOAD_AD_FAILED_WITH_REASON || tVar == t.LOAD_AD_NO_FILL || tVar == t.AD_OPENED || tVar == t.AD_CLOSED || tVar == t.SHOW_AD || tVar == t.SHOW_AD_FAILED || tVar == t.AD_CLICKED || tVar == t.AD_REWARDED;
    }

    private int Y() {
        return 1;
    }

    private int a0() {
        d1 d1Var = this.o;
        if (d1Var == null) {
            return this.a.f();
        }
        Integer numE = d1Var.e();
        int iF = (numE == null || numE.intValue() <= 0) ? this.a.f() : numE.intValue();
        IronLog.INTERNAL.verbose(G("Load timeout for " + this.o.c() + " - " + iF + " seconds"));
        return iF;
    }

    private boolean d() {
        return this.f6621e == h.INIT_IN_PROGRESS;
    }

    private void j() {
        IronLog.INTERNAL.verbose(U());
        N(h.LOADING);
        a(false);
        try {
            this.n.a((ub.a) this);
            o();
        } catch (Throwable th) {
            String str = "unexpected error while calling adapter.loadAd() - " + th.getMessage() + " - state = " + this.f6621e;
            IronLog.INTERNAL.error(G(str));
            v vVar = this.f6620d;
            if (vVar != null) {
                vVar.k.c(str);
            }
            onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 510, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        IronLog.INTERNAL.verbose(U());
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.a(X());
        }
        this.b.f(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        boolean zE;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(U());
        ub ubVar = this.n;
        if (ubVar != null) {
            ubVar.e();
        }
        synchronized (this.q) {
            h hVar = this.f6621e;
            zE = false;
            if (hVar == h.LOADING) {
                long jA = t3.a(this.m);
                ironLog.verbose(G("Load duration = " + jA));
                if (this.f6620d != null) {
                    if (c0()) {
                        this.f6620d.f6680g.a(jA);
                    } else {
                        this.f6620d.f6680g.a(jA, false);
                    }
                }
                N(h.LOADED);
                zE = E();
            } else if (hVar != h.FAILED) {
                ironLog.error(G(String.format("unexpected load success for %s, state - %s", k(), this.f6621e)));
                String str = String.format("unexpected load success, state - %s", this.f6621e);
                if (this.f6620d != null) {
                    if (c0()) {
                        this.f6620d.k.n(str);
                    } else {
                        this.f6620d.k.k(str);
                    }
                }
            }
        }
        if (zE) {
            this.b.e(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        IronLog.INTERNAL.verbose(U());
        N(h.SHOWING);
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.e(X());
        }
        this.b.b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(U());
        if (d()) {
            ub ubVar = this.n;
            if (ubVar != null) {
                ubVar.e();
            }
            N(h.READY_TO_LOAD);
            j();
            return;
        }
        if (this.f6621e == h.FAILED) {
            return;
        }
        ironLog.error(G(String.format("unexpected init success for %s, state - %s", k(), this.f6621e)));
        if (this.f6620d != null) {
            this.f6620d.k.i(String.format("unexpected init success, state - %s", this.f6621e));
        }
    }

    public boolean A() {
        return x();
    }

    public boolean B() {
        return this.f6621e == h.SHOWING;
    }

    public void D() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(U());
        d1 d1VarI = i();
        String strJ = d1VarI.j();
        Map<String, Object> mapA = k8.a(d1VarI.a());
        mapA.put("adUnit", this.a.a());
        b(strJ);
        try {
            boolean z = false;
            if (c0()) {
                this.f6620d.f6680g.a();
            } else {
                this.f6620d.f6680g.a(false);
            }
            this.l = null;
            this.m = new t3();
            this.k = F(strJ, mapA);
            synchronized (this.q) {
                if (this.f6621e != h.NONE) {
                    z = true;
                } else {
                    N(h.INIT_IN_PROGRESS);
                }
            }
            if (z) {
                String str = "loadAd - incorrect state while loading, state = " + this.f6621e;
                ironLog.error(G(str));
                this.f6620d.k.c(str);
                onInitFailed(s.c(this.a.a()), str);
                return;
            }
            this.n.a((ub.a) this);
            AdapterBaseInterface networkAdapter = this.c.getNetworkAdapter();
            if (networkAdapter != null) {
                networkAdapter.init(this.k, ContextProvider.getInstance().getApplicationContext(), this);
                return;
            }
            String str2 = "loadAd - network adapter not available " + k();
            ironLog.error(G(str2));
            onInitFailed(s.c(this.a.a()), str2);
        } catch (Throwable th) {
            String str3 = "loadAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(G(str3));
            v vVar = this.f6620d;
            if (vVar != null) {
                vVar.k.c(str3);
            }
            onInitFailed(s.c(this.a.a()), str3);
        }
    }

    protected boolean E() {
        return true;
    }

    protected AdData F(String str, Map<String, Object> map) {
        return new AdData(str, Z(), H(map));
    }

    protected String G(String str) {
        String str2 = this.a.a().name() + " - " + k() + " - state = " + this.f6621e;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str2 + " - " + str;
    }

    protected Map<String, Object> H(Map<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("userId", this.a.i());
        return map;
    }

    public void L() {
        BaseAdAdapter<?, AdapterAdListener> baseAdAdapter = this.c;
        if (baseAdAdapter != null) {
            try {
                baseAdAdapter.releaseMemory();
                this.c = null;
            } catch (Exception e2) {
                String str = "Exception while calling adapter.releaseMemory() from " + this.h.f() + " - " + e2.getMessage() + " - state = " + this.f6621e;
                IronLog.INTERNAL.error(G(str));
                this.f6620d.k.c(str);
            }
        }
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.f();
            this.f6620d = null;
        }
        ub ubVar = this.n;
        if (ubVar != null) {
            ubVar.d();
            this.n = null;
        }
    }

    public void M() {
        IronLog.INTERNAL.verbose(U());
        v vVar = this.f6620d;
        if (vVar != null) {
            vVar.j.a();
        }
    }

    protected void N(h hVar) {
        this.f6621e = hVar;
    }

    protected String U() {
        return G(null);
    }

    protected String X() {
        Placement placement = this.f6623g;
        return placement == null ? "" : placement.getPlacementName();
    }

    protected Map<String, Object> Z() {
        HashMap map = new HashMap();
        map.putAll(k8.a(this.i));
        return map;
    }

    public Map<String, Object> a(t tVar) {
        HashMap map = new HashMap();
        try {
            BaseAdAdapter<?, AdapterAdListener> baseAdAdapter = this.c;
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, baseAdAdapter != null ? baseAdAdapter.getNetworkAdapter().getAdapterVersion() : "");
            BaseAdAdapter<?, AdapterAdListener> baseAdAdapter2 = this.c;
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, baseAdAdapter2 != null ? baseAdAdapter2.getNetworkAdapter().getNetworkSDKVersion() : "");
        } catch (Exception unused) {
            IronLog.INTERNAL.error(G("could not get adapter version for event data" + k()));
        }
        map.put(IronSourceConstants.EVENTS_SUB_PROVIDER_ID, this.h.i());
        map.put(IronSourceConstants.EVENTS_PROVIDER, this.h.a());
        map.put("instanceType", Integer.valueOf(l()));
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(Y()));
        if (!TextUtils.isEmpty(this.j)) {
            map.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.j);
        }
        map.put("sessionDepth", r());
        if (this.a.e() != null && this.a.e().length() > 0) {
            map.put("genericParams", this.a.e());
        }
        if (!TextUtils.isEmpty(this.a.c())) {
            map.put("auctionId", this.a.c());
        }
        if (S(tVar)) {
            map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.a.d()));
            if (!TextUtils.isEmpty(this.a.b())) {
                map.put(IronSourceConstants.AUCTION_FALLBACK, this.a.b());
            }
        }
        if (!TextUtils.isEmpty(this.a.g().getCustomNetwork())) {
            map.put(IronSourceConstants.EVENTS_CUSTOM_NETWORK_FIELD, this.a.g().getCustomNetwork());
        }
        return map;
    }

    @Override // com.ironsource.ub.a
    public void a() {
        if (this.p.c()) {
            this.p.a(new a());
        } else {
            C();
        }
    }

    public void a(boolean z) {
        this.f6622f.set(z);
    }

    @Override // com.ironsource.rb.a
    public int b() {
        return this.h.e();
    }

    public void b(String str) {
        this.j = com.json.mediationsdk.d.c().d(str);
    }

    protected pa b0() {
        return this.p;
    }

    @Override // com.ironsource.rb.a
    public String c() {
        return this.h.f();
    }

    protected boolean c0() {
        return false;
    }

    public Long e() {
        return this.l;
    }

    public AdInfo f() {
        return new AdInfo(this.o.a(X()));
    }

    public IronSource.AD_UNIT g() {
        return this.a.a();
    }

    public String h() {
        return this.a.c();
    }

    public d1 i() {
        return this.o;
    }

    public String k() {
        return String.format("%s %s", c(), Integer.valueOf(hashCode()));
    }

    public int l() {
        return this.h.d();
    }

    public String m() {
        return this.h.h().isMultipleInstances() ? this.h.h().getProviderTypeForReflection() : this.h.f();
    }

    public String n() {
        return this.h.g();
    }

    protected void o() {
        Object obj = this.c;
        if (obj instanceof AdapterAdFullScreenInterface) {
            ((AdapterAdFullScreenInterface) obj).loadAd(this.k, ContextProvider.getInstance().getCurrentActiveActivity(), this);
        } else {
            IronLog.INTERNAL.error(G("adapter not instance of AdapterAdFullScreenInterface"));
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdClicked() {
        if (this.p.c()) {
            this.p.a(new g());
        } else {
            q();
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str) {
        if (this.p.c()) {
            this.p.a(new e(adapterErrorType, i, str));
        } else {
            J(adapterErrorType, i, str);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadSuccess() {
        if (this.p.c()) {
            this.p.a(new d());
        } else {
            s();
        }
    }

    public void onAdOpened() {
        if (this.p.c()) {
            this.p.a(new f());
        } else {
            t();
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitFailed(int i, String str) {
        if (this.p.c()) {
            this.p.a(new c(i, str));
        } else {
            I(i, str);
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitSuccess() {
        if (this.p.c()) {
            this.p.a(new b());
        } else {
            u();
        }
    }

    public NetworkSettings p() {
        return this.a.g();
    }

    public Integer r() {
        p pVar = this.a;
        if (pVar != null) {
            return Integer.valueOf(pVar.h());
        }
        return null;
    }

    public boolean v() {
        return this.h.j();
    }

    public boolean w() {
        return this.f6621e == h.FAILED;
    }

    public boolean x() {
        return this.f6621e == h.LOADED;
    }

    public boolean y() {
        h hVar = this.f6621e;
        return hVar == h.INIT_IN_PROGRESS || hVar == h.LOADING;
    }

    public AtomicBoolean z() {
        return this.f6622f;
    }
}
