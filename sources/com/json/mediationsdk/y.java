package com.json.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.json.a2;
import com.json.a4;
import com.json.b2;
import com.json.d1;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.k5;
import com.json.l5;
import com.json.m5;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.h;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.p7;
import com.json.q7;
import com.json.rb;
import com.json.sa;
import com.json.t0;
import com.json.x1;
import com.json.x5;
import com.json.z6;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class y extends m implements sa, t0, m5 {
    boolean A;
    private final z6 B;
    private final z6.a C;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private rb f6423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f6424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ConcurrentHashMap<String, z> f6425g;
    private CopyOnWriteArrayList<z> h;
    private ConcurrentHashMap<String, d1> i;
    private ConcurrentHashMap<String, h.a> j;
    private d1 k;
    private String l;
    private String m;
    private JSONObject n;
    private int o;
    private boolean p;
    private final boolean q;
    private final long r;
    private boolean s;
    private com.json.mediationsdk.e t;
    private h u;
    private long v;
    private long w;
    private long x;
    private int y;
    private String z;

    class a implements Runnable {
        final /* synthetic */ NetworkSettings a;
        final /* synthetic */ p7 b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f6426d;

        a(NetworkSettings networkSettings, p7 p7Var, String str, String str2) {
            this.a = networkSettings;
            this.b = p7Var;
            this.c = str;
            this.f6426d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            y.this.p(this.a, this.b, this.c, this.f6426d);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y.this.m = "";
            y.this.n = null;
            if (y.this.V()) {
                return;
            }
            y.this.n(2000, null);
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            y.this.K(map, arrayList, sb, arrayList2);
            if (y.this.q) {
                y.this.C(map, arrayList, sb, arrayList2);
            } else {
                y.this.B(map, arrayList, sb.toString());
            }
        }
    }

    class c implements a2.b {
        final /* synthetic */ Map a;
        final /* synthetic */ StringBuilder b;
        final /* synthetic */ List c;

        c(Map map, StringBuilder sb, List list) {
            this.a = map;
            this.b = sb;
            this.c = list;
        }

        @Override // com.ironsource.a2.b
        public void a(List<b2> list, long j, List<String> list2) {
            y.this.n(IronSourceConstants.IS_COLLECT_TOKENS_COMPLETED, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            for (b2 b2Var : list) {
                if (b2Var.a() != null) {
                    this.a.put(b2Var.c(), b2Var.a());
                    StringBuilder sb = this.b;
                    sb.append(b2Var.d());
                    sb.append(b2Var.c());
                    sb.append(",");
                    y yVar = y.this;
                    yVar.l(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_SUCCESS, (z) yVar.f6425g.get(b2Var.c()), new Object[][]{new Object[]{"duration", Long.valueOf(b2Var.e())}});
                } else {
                    y yVar2 = y.this;
                    yVar2.l(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_FAILED, (z) yVar2.f6425g.get(b2Var.c()), new Object[][]{new Object[]{"duration", Long.valueOf(b2Var.e())}, new Object[]{"reason", b2Var.b()}});
                }
            }
            for (String str : list2) {
                y yVar3 = y.this;
                yVar3.l(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_TIMED_OUT, (z) yVar3.f6425g.get(str), new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            }
            y.this.B(this.a, this.c, this.b.toString());
        }

        @Override // com.ironsource.a2.b
        public void onFailure(String str) {
            y.this.n(IronSourceConstants.IS_COLLECT_TOKENS_FAILED, new Object[][]{new Object[]{"reason", str}});
            y.this.B(this.a, this.c, this.b.toString());
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y.this.T();
        }
    }

    enum e {
        STATE_NOT_INITIALIZED,
        STATE_READY_TO_LOAD,
        STATE_AUCTION,
        STATE_LOADING_SMASHES,
        STATE_READY_TO_SHOW,
        STATE_SHOWING
    }

    y(l5 l5Var, k5 k5Var, List<NetworkSettings> list, p7 p7Var, String str, String str2, int i, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.z = "";
        this.A = false;
        this.B = l5Var.d();
        this.C = k5Var.b();
        long time = new Date().getTime();
        n(IronSourceConstants.IS_MANAGER_INIT_STARTED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.PROG_IS_MANAGER_NAME}});
        q(e.STATE_NOT_INITIALIZED);
        ConcurrentHashMap<String, z> concurrentHashMap = new ConcurrentHashMap<>();
        this.f6425g = concurrentHashMap;
        this.h = new CopyOnWriteArrayList<>();
        this.i = new ConcurrentHashMap<>();
        this.j = new ConcurrentHashMap<>();
        this.l = "";
        this.m = "";
        this.n = null;
        this.o = p7Var.c();
        this.p = p7Var.f();
        this.q = p7Var.h();
        this.r = p7Var.i();
        n nVarA = n.a();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
        nVarA.a(ad_unit, i);
        com.json.mediationsdk.utils.a aVarG = p7Var.g();
        this.w = aVarG.k();
        boolean z = aVarG.g() > 0;
        this.s = z;
        if (z) {
            this.t = new com.json.mediationsdk.e(ad_unit, aVarG, this);
        }
        A(list, p7Var, str, str2);
        this.u = new h(list, aVarG.c());
        this.f6423e = new rb(new ArrayList(concurrentHashMap.values()));
        for (z zVar : concurrentHashMap.values()) {
            if (zVar.r()) {
                zVar.t();
            }
        }
        this.v = new Date().getTime();
        q(e.STATE_READY_TO_LOAD);
        n(IronSourceConstants.IS_MANAGER_INIT_ENDED, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}});
    }

    public y(List<NetworkSettings> list, p7 p7Var, String str, String str2, int i, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        this(e9.h(), e9.g(), list, p7Var, str, str2, i, hashSet, ironSourceSegment);
    }

    private void A(List<NetworkSettings> list, p7 p7Var, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<NetworkSettings> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new a(it.next(), p7Var, str, str2));
        }
        IronSourceThreadManager.INSTANCE.executeTasks(p7Var.l(), p7Var.o(), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Map<String, Object> map, List<String> list, String str) {
        if (map.size() == 0 && list.size() == 0) {
            n(IronSourceConstants.IS_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{"duration", 0}});
            J("makeAuction() failed - No candidates available for auctioning");
            n.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(1005, "No candidates available for auctioning"));
            n(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}});
            q(e.STATE_READY_TO_LOAD);
            return;
        }
        n(IronSourceConstants.IS_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, str}});
        int iA = this.B.a(IronSource.AD_UNIT.INTERSTITIAL);
        com.json.mediationsdk.e eVar = this.t;
        if (eVar != null) {
            eVar.a(ContextProvider.getInstance().getApplicationContext(), map, list, this.u, iA, this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        if (list2.isEmpty()) {
            B(map, list, sb.toString());
            return;
        }
        a2 a2Var = new a2();
        c cVar = new c(map, sb, list);
        j(IronSourceConstants.IS_COLLECT_TOKENS);
        a2Var.a(list2, cVar, this.r, TimeUnit.MILLISECONDS);
    }

    private void D(int i) {
        o(i, null, true);
    }

    private void E(int i, z zVar) {
        m(i, zVar, null, true);
    }

    private void F(int i, z zVar, Object[][] objArr) {
        m(i, zVar, objArr, true);
    }

    private void G(int i, Object[][] objArr) {
        o(i, objArr, true);
    }

    private void I(z zVar, String str) {
        q(e.STATE_SHOWING);
        zVar.x();
        E(2201, zVar);
        this.f6423e.a(zVar);
        if (this.f6423e.b(zVar)) {
            k(IronSourceConstants.IS_CAP_SESSION, zVar);
            IronSourceUtils.sendAutomationLog(zVar.c() + " was session capped");
        }
        com.json.mediationsdk.utils.b.b(ContextProvider.getInstance().getApplicationContext(), str);
        if (com.json.mediationsdk.utils.b.e(ContextProvider.getInstance().getApplicationContext(), str)) {
            D(IronSourceConstants.IS_CAP_PLACEMENT);
        }
    }

    private void J(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgIsManager " + str, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        for (z zVar : this.f6425g.values()) {
            if (R(zVar)) {
                if (!zVar.p()) {
                    list.add(zVar.c());
                    sb.append(zVar.g() + zVar.c() + ",");
                } else if (this.q) {
                    list2.add(new x1(zVar.g(), zVar.c(), null, zVar, null, null));
                } else {
                    try {
                        Map<String, Object> mapA = zVar.a((AdData) null);
                        if (mapA != null) {
                            map.put(zVar.c(), mapA);
                            sb.append(zVar.g() + zVar.c() + ",");
                        } else {
                            l(IronSourceConstants.TROUBLESHOOTING_IS_BIDDING_DATA_MISSING, zVar, new Object[][]{new Object[]{"reason", "Missing bidding data"}});
                        }
                    } catch (Exception e2) {
                        String str = "prepareAuctionCandidates - exception while calling smash.getBiddingData - " + e2.getMessage();
                        IronLog.INTERNAL.error(str);
                        zVar.a(IronSourceConstants.TROUBLESHOOTING_IS_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str}});
                    } catch (NoClassDefFoundError e3) {
                        String str2 = "prepareAuctionCandidates - error while calling smash.getBiddingData - " + e3.getMessage();
                        IronLog.INTERNAL.error(str2);
                        zVar.a(IronSourceConstants.TROUBLESHOOTING_IS_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str2}});
                    }
                }
            }
        }
    }

    private boolean M(int i) {
        return i == 2002 || i == 2003 || i == 2200 || i == 2213 || i == 2005 || i == 2204 || i == 2201 || i == 2203 || i == 2006 || i == 2004 || i == 2110 || i == 2301 || i == 2300 || i == 2303;
    }

    private List<d1> P() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (z zVar : this.f6425g.values()) {
            if (!zVar.p() && R(zVar)) {
                copyOnWriteArrayList.add(new d1(zVar.c()));
            }
        }
        return copyOnWriteArrayList;
    }

    private void Q(z zVar) {
        String strJ = this.i.get(zVar.c()).j();
        JSONObject jSONObjectA = this.i.get(zVar.c()).a();
        zVar.c(strJ);
        k(2002, zVar);
        zVar.a(strJ, jSONObjectA);
    }

    private boolean R(z zVar) {
        IronLog.INTERNAL.verbose();
        return (zVar == null || zVar.o() || this.f6423e.b(zVar)) ? false : true;
    }

    private void S() {
        if (this.h.isEmpty()) {
            q(e.STATE_READY_TO_LOAD);
            n(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES)}, new Object[]{"reason", "Empty waterfall"}});
            n.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES, "Empty waterfall"));
            return;
        }
        q(e.STATE_LOADING_SMASHES);
        int i = 0;
        for (int i2 = 0; i2 < this.h.size() && i < this.o; i2++) {
            z zVar = this.h.get(i2);
            if (zVar.h()) {
                if (this.p && zVar.p()) {
                    if (i != 0) {
                        String str = "Advanced Loading: Won't start loading bidder " + zVar.c() + " as a non bidder is being loaded";
                        J(str);
                        IronSourceUtils.sendAutomationLog(str);
                        return;
                    }
                    String str2 = "Advanced Loading: Starting to load bidder " + zVar.c() + ". No other instances will be loaded at the same time.";
                    J(str2);
                    IronSourceUtils.sendAutomationLog(str2);
                    Q(zVar);
                    return;
                }
                Q(zVar);
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        q(e.STATE_AUCTION);
        AsyncTask.execute(new b());
    }

    private void U() {
        List<d1> listP = P();
        this.m = e();
        z(listP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean V() {
        long time = this.w - (new Date().getTime() - this.v);
        if (time <= 0) {
            return false;
        }
        IronLog.INTERNAL.verbose("delaying auction by " + time);
        IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new d(), time);
        return true;
    }

    private String g(d1 d1Var) {
        z zVar = this.f6425g.get(d1Var.c());
        return (zVar != null ? Integer.toString(zVar.g()) : TextUtils.isEmpty(d1Var.j()) ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP) + d1Var.c();
    }

    private void j(int i) {
        o(i, null, false);
    }

    private void k(int i, z zVar) {
        m(i, zVar, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i, z zVar, Object[][] objArr) {
        m(i, zVar, objArr, false);
    }

    private void m(int i, z zVar, Object[][] objArr, boolean z) {
        Map<String, Object> mapM = zVar.m();
        if (!TextUtils.isEmpty(this.m)) {
            mapM.put("auctionId", this.m);
        }
        JSONObject jSONObject = this.n;
        if (jSONObject != null && jSONObject.length() > 0) {
            mapM.put("genericParams", this.n);
        }
        if (z && !TextUtils.isEmpty(this.l)) {
            mapM.put("placement", this.l);
        }
        if (M(i)) {
            q7.i().a(mapM, this.y, this.z);
        }
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    mapM.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IS sendProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        q7.i().a(new a4(i, new JSONObject(mapM)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i, Object[][] objArr) {
        o(i, objArr, false);
    }

    private void o(int i, Object[][] objArr, boolean z) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        if (!TextUtils.isEmpty(this.m)) {
            map.put("auctionId", this.m);
        }
        JSONObject jSONObject = this.n;
        if (jSONObject != null && jSONObject.length() > 0) {
            map.put("genericParams", this.n);
        }
        if (z && !TextUtils.isEmpty(this.l)) {
            map.put("placement", this.l);
        }
        if (M(i)) {
            q7.i().a(map, this.y, this.z);
        }
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    map.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                J("sendMediationEvent " + e2.getMessage());
            }
        }
        q7.i().a(new a4(i, new JSONObject(map)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(NetworkSettings networkSettings, p7 p7Var, String str, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
        AbstractAdapter abstractAdapterA = com.json.mediationsdk.c.b().a(networkSettings, networkSettings.getInterstitialSettings(), false);
        if (abstractAdapterA != null) {
            z zVar = new z(str, str2, networkSettings, this, p7Var.d(), abstractAdapterA);
            this.f6425g.put(zVar.c(), zVar);
        }
        ironLog.verbose(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
    }

    private void q(e eVar) {
        this.f6424f = eVar;
        J("state=" + eVar);
    }

    private void x(z zVar, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgIsManager " + zVar.c() + " : " + str, 0);
    }

    private void y(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 3);
    }

    private void z(List<d1> list) {
        this.h.clear();
        this.i.clear();
        this.j.clear();
        StringBuilder sb = new StringBuilder();
        for (d1 d1Var : list) {
            sb.append(g(d1Var) + ",");
            z zVar = this.f6425g.get(d1Var.c());
            if (zVar != null) {
                zVar.a(true);
                this.h.add(zVar);
                this.i.put(zVar.c(), d1Var);
                this.j.put(d1Var.c(), h.a.ISAuctionPerformanceDidntAttemptToLoad);
            } else {
                J("updateWaterfall() - could not find matching smash for auction response item " + d1Var.c());
            }
        }
        J("updateWaterfall() - next waterfall is " + sb.toString());
        if (sb.length() == 0) {
            J("Updated waterfall is empty");
        }
        n(IronSourceConstants.IS_RESULT_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}});
    }

    @Override // com.json.t0
    public void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        J(str3);
        IronSourceUtils.sendAutomationLog("IS: " + str3);
        this.y = i2;
        this.z = str2;
        this.n = null;
        U();
        if (TextUtils.isEmpty(str)) {
            n(IronSourceConstants.IS_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"duration", Long.valueOf(j)}});
        } else {
            n(IronSourceConstants.IS_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{"duration", Long.valueOf(j)}});
        }
        S();
    }

    public synchronized void a(Activity activity, String str) {
        e eVar = this.f6424f;
        if (eVar == e.STATE_SHOWING) {
            y("showInterstitial error: can't show ad while an ad is already showing");
            x5.a().a(new IronSourceError(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, "showInterstitial error: can't show ad while an ad is already showing"), this.f6345d);
            n(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW)}, new Object[]{"reason", "showInterstitial error: can't show ad while an ad is already showing"}});
            return;
        }
        if (eVar != e.STATE_READY_TO_SHOW) {
            J("showInterstitial() error state=" + this.f6424f.toString());
            y("showInterstitial error: show called while no ads are available");
            x5.a().a(new IronSourceError(509, "showInterstitial error: show called while no ads are available"), this.f6345d);
            n(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}, new Object[]{"reason", "showInterstitial error: show called while no ads are available"}});
            return;
        }
        if (str == null) {
            y("showInterstitial error: empty default placement");
            x5.a().a(new IronSourceError(1020, "showInterstitial error: empty default placement"), this.f6345d);
            n(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1020}, new Object[]{"reason", "showInterstitial error: empty default placement"}});
            return;
        }
        this.l = str;
        G(2100, activity != null ? new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.EVENTS_INIT_CONTEXT_FLOW}} : null);
        if (com.json.mediationsdk.utils.b.e(ContextProvider.getInstance().getApplicationContext(), str)) {
            String str2 = "placement " + this.l + " is capped";
            y(str2);
            x5.a().a(new IronSourceError(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT, str2), this.f6345d);
            G(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT)}, new Object[]{"reason", str2}});
            return;
        }
        for (z zVar : this.h) {
            if (zVar.v()) {
                I(zVar, str);
                return;
            }
            J("showInterstitial " + zVar.c() + " isReadyToShow() == false");
        }
        x5.a().a(ErrorBuilder.buildNoAdsToShowError("Interstitial"), this.f6345d);
        G(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}, new Object[]{"reason", "Show Fail - No ads to show"}});
    }

    void a(Context context, boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Should Track Network State: " + z, 0);
        this.A = z;
    }

    @Override // com.json.sa
    public void a(IronSourceError ironSourceError, z zVar) {
        l(IronSourceConstants.IS_INSTANCE_INIT_FAILED, zVar, new Object[][]{new Object[]{"reason", ironSourceError.getErrorMessage()}});
    }

    @Override // com.json.sa
    public void a(IronSourceError ironSourceError, z zVar, long j) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        synchronized (this) {
            x(zVar, "onInterstitialAdLoadFailed error=" + ironSourceError.getErrorMessage() + " state=" + this.f6424f.name());
            if (ironSourceError.getErrorCode() == 1158) {
                l(2213, zVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(j)}});
            } else {
                l(2200, zVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
            }
            if (zVar != null && this.j.containsKey(zVar.c())) {
                this.j.put(zVar.c(), h.a.ISAuctionPerformanceFailedToLoad);
            }
            boolean z = false;
            boolean z2 = false;
            for (z zVar2 : this.h) {
                if (zVar2.h()) {
                    if (this.p && zVar2.p()) {
                        if (!z && !z2) {
                            String str = "Advanced Loading: Starting to load bidder " + zVar2.c() + ". No other instances will be loaded at the same time.";
                            J(str);
                            IronSourceUtils.sendAutomationLog(str);
                        }
                        String str2 = "Advanced Loading: Won't start loading bidder " + zVar2.c() + " as " + (z ? "a non bidder is being loaded" : "a non bidder was already loaded successfully");
                        J(str2);
                        IronSourceUtils.sendAutomationLog(str2);
                    }
                    copyOnWriteArrayList.add(zVar2);
                    if (!this.p || !zVar.p() || zVar2.p() || copyOnWriteArrayList.size() >= this.o) {
                        break;
                    }
                } else if (!zVar2.u()) {
                    if (zVar2.v()) {
                        z2 = true;
                    }
                }
                z = true;
            }
            if (copyOnWriteArrayList.size() == 0 && this.f6424f == e.STATE_LOADING_SMASHES && !z) {
                n.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(509, "No ads to show"));
                n(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}});
                q(e.STATE_READY_TO_LOAD);
            }
        }
        IronLog.INTERNAL.verbose("smashesToLoad.size() = " + copyOnWriteArrayList.size());
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            Q((z) it.next());
        }
    }

    @Override // com.json.sa
    public void a(z zVar) {
        synchronized (this) {
            x(zVar, "onInterstitialAdOpened");
            E(2005, zVar);
            if (this.s) {
                d1 d1Var = this.i.get(zVar.c());
                if (d1Var != null) {
                    a(d1Var.a(this.l));
                    this.t.a(d1Var, zVar.g(), this.k, this.l);
                    this.j.put(zVar.c(), h.a.ISAuctionPerformanceShowedSuccessfully);
                    a(d1Var, this.l);
                } else {
                    String strC = zVar.c();
                    J("onInterstitialAdOpened showing instance " + strC + " missing from waterfall");
                    n(IronSourceConstants.TROUBLESHOOTING_IS_NOTIFICATIONS_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1011}, new Object[]{"reason", "Showing missing " + this.f6424f}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}});
                }
            }
            x5.a().d(this.f6345d);
        }
    }

    @Override // com.json.sa
    public void a(z zVar, long j) {
        synchronized (this) {
            x(zVar, "onInterstitialAdReady");
            l(2003, zVar, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            if (zVar != null && this.j.containsKey(zVar.c())) {
                this.j.put(zVar.c(), h.a.ISAuctionPerformanceLoadedSuccessfully);
            }
            if (this.f6424f == e.STATE_LOADING_SMASHES) {
                q(e.STATE_READY_TO_SHOW);
                n(2004, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - this.x)}});
                if (this.s) {
                    d1 d1Var = this.i.get(zVar.c());
                    if (d1Var != null) {
                        a(d1Var.a(""));
                        this.t.a(d1Var, zVar.g(), this.k);
                        this.t.a(this.h, this.i, zVar.g(), this.k, d1Var);
                    } else {
                        String strC = zVar.c();
                        J("onInterstitialAdReady winner instance " + strC + " missing from waterfall");
                        n(IronSourceConstants.TROUBLESHOOTING_IS_NOTIFICATIONS_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}, new Object[]{"reason", "Loaded missing"}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}});
                    }
                }
                x5.a().e(this.f6345d);
            }
        }
    }

    @Override // com.json.t0
    public void a(List<d1> list, String str, d1 d1Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        this.m = str;
        this.k = d1Var;
        this.n = jSONObject;
        this.y = i;
        this.z = "";
        if (!TextUtils.isEmpty(str2)) {
            n(88002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str2}});
        }
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
        c(jSONObject2, ad_unit);
        if (this.b.a(ad_unit)) {
            n(2303, new Object[][]{new Object[]{"auctionId", str}});
            q(e.STATE_READY_TO_LOAD);
            n.a().a(ad_unit, new IronSourceError(IronSourceError.ERROR_AD_UNIT_CAPPED, "Ad unit is capped"));
        } else {
            n(IronSourceConstants.IS_AUCTION_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            z(list);
            S();
        }
    }

    @Override // com.json.sa
    public void b(IronSourceError ironSourceError, z zVar) {
        d1 d1Var;
        synchronized (this) {
            if (this.s && (d1Var = this.i.get(zVar.c())) != null) {
                a(d1Var.a(this.l));
            }
            x(zVar, "onInterstitialAdShowFailed error=" + ironSourceError.getErrorMessage());
            x5.a().a(ironSourceError, this.f6345d);
            F(2203, zVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}});
            this.j.put(zVar.c(), h.a.ISAuctionPerformanceFailedToShow);
            q(e.STATE_READY_TO_LOAD);
        }
    }

    @Override // com.json.sa
    public void b(z zVar) {
        k(IronSourceConstants.IS_INSTANCE_INIT_SUCCESS, zVar);
    }

    @Override // com.json.sa
    public void c(z zVar) {
        synchronized (this) {
            x(zVar, "onInterstitialAdClosed");
            z6 z6Var = this.B;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
            F(2204, zVar, new Object[][]{new Object[]{"sessionDepth", Integer.valueOf(z6Var.a(ad_unit))}});
            this.C.b(ad_unit);
            x5.a().c(this.f6345d);
            q(e.STATE_READY_TO_LOAD);
        }
    }

    @Override // com.json.sa
    public void d(z zVar) {
        x(zVar, "onInterstitialAdClicked");
        x5.a().b(this.f6345d);
        E(2006, zVar);
    }

    @Override // com.json.sa
    public void e(z zVar) {
        x(zVar, "onInterstitialAdVisible");
    }

    @Override // com.json.sa
    public void f(z zVar) {
        x(zVar, "onInterstitialAdShowSucceeded");
        x5.a().f(this.f6345d);
        E(2202, zVar);
    }

    public synchronized boolean h() {
        if ((this.A && !IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) || this.f6424f != e.STATE_READY_TO_SHOW) {
            return false;
        }
        Iterator<z> it = this.h.iterator();
        while (it.hasNext()) {
            if (it.next().v()) {
                return true;
            }
        }
        return false;
    }

    public synchronized void i() {
        e eVar = this.f6424f;
        if (eVar == e.STATE_SHOWING) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "loadInterstitial: load cannot be invoked while showing an ad", 3);
            x5.a().a(new IronSourceError(IronSourceError.ERROR_IS_LOAD_DURING_SHOW, "loadInterstitial: load cannot be invoked while showing an ad"));
            return;
        }
        if (eVar == e.STATE_READY_TO_LOAD || eVar == e.STATE_READY_TO_SHOW) {
            n nVarA = n.a();
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
            if (!nVarA.b(ad_unit)) {
                this.m = "";
                this.l = "";
                this.n = null;
                b(ad_unit);
                f();
                j(2001);
                this.x = new Date().getTime();
                if (this.s) {
                    if (!this.j.isEmpty()) {
                        this.u.a(this.j);
                        this.j.clear();
                    }
                    T();
                } else {
                    U();
                    S();
                }
                return;
            }
        }
        J("loadInterstitial: load is already in progress");
    }
}
