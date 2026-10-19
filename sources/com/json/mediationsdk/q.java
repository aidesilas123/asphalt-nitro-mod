package com.json.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.json.a2;
import com.json.a4;
import com.json.b2;
import com.json.bb;
import com.json.cb;
import com.json.d1;
import com.json.eb;
import com.json.environment.ContextProvider;
import com.json.environment.NetworkStateReceiver;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.fb;
import com.json.i;
import com.json.k4;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.h;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.n5;
import com.json.n8;
import com.json.rb;
import com.json.s9;
import com.json.t0;
import com.json.u8;
import com.json.v8;
import com.json.va;
import com.json.x1;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class q extends m implements u8, fb, t0, n5, s9, i {
    private long A;
    private Boolean B;
    private final Object C;
    private k4 D;
    private final boolean E;
    private final long F;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v8 f6366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ConcurrentHashMap<String, d1> f6367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ConcurrentHashMap<String, h.a> f6368g;
    private d1 h;
    private h i;
    private com.json.mediationsdk.e j;
    private JSONObject k;
    private eb l;
    private boolean m;
    private long n;
    private String o;
    private int p;
    private NetworkStateReceiver q;
    private boolean r;
    private final ConcurrentHashMap<String, r> s;
    private rb t;
    private int u;
    private String v;
    private int w;
    private boolean x;
    private boolean y;
    private e z;

    class a implements Runnable {
        final /* synthetic */ NetworkSettings a;
        final /* synthetic */ bb b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f6369d;

        a(NetworkSettings networkSettings, bb bbVar, String str, String str2) {
            this.a = networkSettings;
            this.b = bbVar;
            this.c = str;
            this.f6369d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.m(this.a, this.b, this.c, this.f6369d);
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            q.this.S();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.O("makeAuction()");
            q.this.n = new Date().getTime();
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            q.this.F(map, arrayList, sb, arrayList2);
            if (q.this.E) {
                q.this.z(map, arrayList, sb, arrayList2);
            } else {
                q.this.y(map, arrayList, sb.toString());
            }
        }
    }

    class d implements a2.b {
        final /* synthetic */ Map a;
        final /* synthetic */ StringBuilder b;
        final /* synthetic */ List c;

        d(Map map, StringBuilder sb, List list) {
            this.a = map;
            this.b = sb;
            this.c = list;
        }

        @Override // com.ironsource.a2.b
        public void a(List<b2> list, long j, List<String> list2) {
            q.this.J(IronSourceConstants.RV_COLLECT_TOKENS_COMPLETED, n8.a(new Object[][]{new Object[]{"duration", Long.valueOf(j)}}));
            for (b2 b2Var : list) {
                r rVar = (r) q.this.s.get(b2Var.c());
                if (b2Var.a() != null) {
                    this.a.put(b2Var.c(), b2Var.a());
                    StringBuilder sb = this.b;
                    sb.append(b2Var.d());
                    sb.append(b2Var.c());
                    sb.append(",");
                    if (rVar != null) {
                        rVar.a(1021, new Object[][]{new Object[]{"duration", Long.valueOf(b2Var.e())}});
                    }
                } else if (rVar != null) {
                    rVar.a(1022, new Object[][]{new Object[]{"duration", Long.valueOf(b2Var.e())}, new Object[]{"reason", b2Var.b()}});
                }
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                r rVar2 = (r) q.this.s.get(it.next());
                if (rVar2 != null) {
                    rVar2.a(1023, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
                }
            }
            q.this.y(this.a, this.c, this.b.toString());
        }

        @Override // com.ironsource.a2.b
        public void onFailure(String str) {
            q.this.J(IronSourceConstants.RV_COLLECT_TOKENS_FAILED, n8.a(new Object[][]{new Object[]{"reason", str}}));
            q.this.y(this.a, this.c, this.b.toString());
        }
    }

    private enum e {
        RV_STATE_INITIATING,
        RV_STATE_AUCTION_IN_PROGRESS,
        RV_STATE_NOT_LOADED,
        RV_STATE_LOADING_SMASHES,
        RV_STATE_READY_TO_SHOW
    }

    public q(List<NetworkSettings> list, bb bbVar, String str, String str2, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.o = "";
        this.r = false;
        this.u = 1;
        this.C = new Object();
        long time = new Date().getTime();
        J(IronSourceConstants.RV_MANAGER_INIT_STARTED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.LWS_RV_MANAGER_NAME}}));
        n(e.RV_STATE_INITIATING);
        this.B = null;
        this.w = bbVar.g();
        this.x = bbVar.j();
        this.v = "";
        this.k = null;
        com.json.mediationsdk.utils.a aVarK = bbVar.k();
        this.y = false;
        this.f6366e = new v8(bbVar.k().f(), bbVar.k().i());
        this.f6367f = new ConcurrentHashMap<>();
        this.f6368g = new ConcurrentHashMap<>();
        this.A = new Date().getTime();
        boolean z = aVarK.g() > 0;
        this.m = z;
        if (z) {
            this.j = new com.json.mediationsdk.e(IronSource.AD_UNIT.REWARDED_VIDEO, aVarK, this);
        }
        this.l = new eb(aVarK, this);
        ConcurrentHashMap<String, r> concurrentHashMap = new ConcurrentHashMap<>();
        this.s = concurrentHashMap;
        w(list, bbVar, str, str2);
        this.i = new h(list, aVarK.c());
        this.t = new rb(new ArrayList(concurrentHashMap.values()));
        this.D = new k4(bbVar.c(), this);
        this.E = bbVar.l();
        this.F = bbVar.m();
        J(IronSourceConstants.RV_MANAGER_INIT_ENDED, n8.a(new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}}));
        l(aVarK.k());
    }

    private void A(boolean z, Map<String, Object> map) {
        synchronized (this.C) {
            Boolean bool = this.B;
            if (bool == null || bool.booleanValue() != z) {
                this.B = Boolean.valueOf(z);
                long time = new Date().getTime() - this.A;
                this.A = new Date().getTime();
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put("duration", Long.valueOf(time));
                j(z ? IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE : IronSourceConstants.RV_CALLBACK_AVAILABILITY_FALSE, map);
                va vaVarA = va.a();
                v8 v8Var = this.f6366e;
                vaVarA.a(z, v8Var.a(v8Var.d()));
            }
        }
    }

    private void B(int i) {
        k(i, null, false, false);
    }

    private void C(int i, Map<String, Object> map) {
        k(i, map, true, true);
    }

    private void E(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void F(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        for (r rVar : this.s.values()) {
            if (!this.t.b(rVar) && this.f6366e.b(rVar)) {
                if (!rVar.p()) {
                    list.add(rVar.c());
                    sb.append(rVar.g() + rVar.c() + ",");
                } else if (this.E) {
                    list2.add(new x1(rVar.g(), rVar.c(), null, rVar, null, null));
                } else {
                    try {
                        Map<String, Object> mapA = rVar.a((AdData) null);
                        if (mapA != null) {
                            map.put(rVar.c(), mapA);
                            sb.append(rVar.g() + rVar.c() + ",");
                        } else {
                            rVar.a(IronSourceConstants.TROUBLESHOOTING_RV_BIDDING_DATA_MISSING, new Object[][]{new Object[]{"reason", "Missing bidding data"}});
                        }
                    } catch (Exception e2) {
                        String str = "prepareAuctionCandidates - exception while calling smash.getBiddingData - " + e2.getMessage();
                        IronLog.INTERNAL.error(str);
                        rVar.a(IronSourceConstants.TROUBLESHOOTING_RV_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str}});
                    } catch (NoClassDefFoundError e3) {
                        String str2 = "prepareAuctionCandidates - error while calling smash.getBiddingData - " + e3.getMessage();
                        IronLog.INTERNAL.error(str2);
                        rVar.a(IronSourceConstants.TROUBLESHOOTING_RV_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str2}});
                    }
                }
            }
        }
    }

    private void G(boolean z) {
        A(z, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(int i, Map<String, Object> map) {
        k(i, map, false, false);
    }

    private void K(r rVar, Placement placement) {
        O("showVideo()");
        this.t.a(rVar);
        if (this.t.b(rVar)) {
            rVar.B();
            IronSourceUtils.sendAutomationLog(rVar.c() + " rewarded video is now session capped");
        }
        com.json.mediationsdk.utils.b.c(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName());
        if (com.json.mediationsdk.utils.b.f(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName())) {
            i(1400);
        }
        this.D.a();
        rVar.a(placement);
    }

    private void L(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: " + str, 3);
    }

    private boolean M(int i) {
        return i == 1003 || i == 1302 || i == 1301 || i == 1303;
    }

    private boolean N(boolean z) {
        Boolean bool = this.B;
        if (bool == null) {
            return false;
        }
        return (z && !bool.booleanValue() && d()) || (!z && this.B.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: " + str, 0);
    }

    private List<d1> P() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (r rVar : this.s.values()) {
            if (!rVar.p() && !this.t.b(rVar) && this.f6366e.b(rVar)) {
                copyOnWriteArrayList.add(new d1(rVar.c()));
            }
        }
        return copyOnWriteArrayList;
    }

    private void Q(r rVar) {
        String strJ = this.f6367f.get(rVar.c()).j();
        JSONObject jSONObjectA = this.f6367f.get(rVar.c()).a();
        rVar.c(strJ);
        rVar.a(strJ, jSONObjectA);
    }

    private void R() {
        n(e.RV_STATE_NOT_LOADED);
        if (!this.y) {
            G(false);
        }
        this.l.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        synchronized (this.C) {
            e eVar = this.z;
            e eVar2 = e.RV_STATE_AUCTION_IN_PROGRESS;
            if (eVar != eVar2) {
                n(eVar2);
                AsyncTask.execute(new c());
            }
        }
    }

    private void T() {
        x(P(), "fallback_" + System.currentTimeMillis(), this.k);
    }

    private String h(d1 d1Var) {
        r rVar = this.s.get(d1Var.c());
        return (rVar != null ? Integer.toString(rVar.g()) : TextUtils.isEmpty(d1Var.j()) ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP) + d1Var.c();
    }

    private void i() {
        if (this.f6366e.c().isEmpty()) {
            O("loadSmashes -  waterfall is empty");
            j(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80004}, new Object[]{"reason", "waterfall is empty"}}));
            R();
            return;
        }
        n(e.RV_STATE_LOADING_SMASHES);
        int i = 0;
        for (int i2 = 0; i2 < this.f6366e.c().size() && i < this.w; i2++) {
            r rVar = this.f6366e.c().get(i2);
            if (rVar.h()) {
                if (this.x && rVar.p()) {
                    if (i != 0) {
                        String str = "Advanced Loading: Won't start loading bidder " + rVar.c() + " as a non bidder is being loaded";
                        O(str);
                        IronSourceUtils.sendAutomationLog(str);
                        return;
                    }
                    String str2 = "Advanced Loading: Starting to load bidder " + rVar.c() + ". No other instances will be loaded at the same time.";
                    O(str2);
                    IronSourceUtils.sendAutomationLog(str2);
                    Q(rVar);
                    return;
                }
                Q(rVar);
                i++;
            }
        }
    }

    private void i(int i) {
        k(i, null, true, true);
    }

    private void j(int i, Map<String, Object> map) {
        k(i, map, false, true);
    }

    private void k(int i, Map<String, Object> map, boolean z, boolean z2) {
        HashMap map2 = new HashMap();
        map2.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        map2.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 2);
        if (z2 && !TextUtils.isEmpty(this.f6366e.d())) {
            map2.put("auctionId", this.f6366e.d());
        }
        JSONObject jSONObject = this.k;
        if (jSONObject != null && jSONObject.length() > 0) {
            map2.put("genericParams", this.k);
        }
        if (z && !TextUtils.isEmpty(this.v)) {
            map2.put("placement", this.v);
        }
        if (M(i)) {
            cb.i().a(map2, this.p, this.o);
        }
        map2.put("sessionDepth", Integer.valueOf(this.u));
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    map2.putAll(map);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: RV sendMediationEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        cb.i().a(new a4(i, new JSONObject(map2)));
    }

    private void l(long j) {
        Map<String, Object> mapA;
        if (this.t.a()) {
            O("all smashes are capped");
            mapA = n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED)}, new Object[]{"reason", "all smashes are capped"}});
        } else {
            b(IronSource.AD_UNIT.REWARDED_VIDEO);
            if (this.m) {
                if (!this.f6368g.isEmpty()) {
                    this.i.a(this.f6368g);
                    this.f6368g.clear();
                }
                new Timer().schedule(new b(), j);
                return;
            }
            O("auction fallback flow starting");
            T();
            if (!this.f6366e.c().isEmpty()) {
                B(1000);
                i();
                return;
            } else {
                O("loadSmashes -  waterfall is empty");
                mapA = n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80004}, new Object[]{"reason", "waterfall is empty"}});
            }
        }
        j(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, mapA);
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(NetworkSettings networkSettings, bb bbVar, String str, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
        AbstractAdapter abstractAdapterA = com.json.mediationsdk.c.b().a(networkSettings, networkSettings.getRewardedVideoSettings(), false);
        if (abstractAdapterA != null) {
            r rVar = new r(str, str2, networkSettings, this, bbVar.h(), abstractAdapterA, this.u);
            this.s.put(rVar.c(), rVar);
        }
        ironLog.verbose(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
    }

    private void n(e eVar) {
        O("current state=" + this.z + ", new state=" + eVar);
        this.z = eVar;
    }

    private void u(r rVar, String str) {
        String str2 = rVar.c() + " : " + str;
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "LWSProgRvManager: " + str2, 0);
    }

    private void v(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 3);
    }

    private void w(List<NetworkSettings> list, bb bbVar, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<NetworkSettings> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new a(it.next(), bbVar, str, str2));
        }
        IronSourceThreadManager.INSTANCE.executeTasks(bbVar.f(), bbVar.q(), arrayList);
    }

    private void x(List<d1> list, String str, JSONObject jSONObject) {
        this.f6367f.clear();
        this.f6368g.clear();
        CopyOnWriteArrayList<r> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        StringBuilder sb = new StringBuilder();
        for (d1 d1Var : list) {
            sb.append(h(d1Var) + ",");
            r rVar = this.s.get(d1Var.c());
            if (rVar != null) {
                AbstractAdapter abstractAdapterA = com.json.mediationsdk.c.b().a(rVar.b.h());
                if (abstractAdapterA != null) {
                    r rVar2 = new r(rVar, this, abstractAdapterA, this.u, str, jSONObject, this.p, this.o);
                    rVar2.a(true);
                    copyOnWriteArrayList.add(rVar2);
                    this.f6367f.put(rVar2.c(), d1Var);
                    this.f6368g.put(d1Var.c(), h.a.ISAuctionPerformanceDidntAttemptToLoad);
                }
            } else {
                O("updateWaterfall() - could not find matching smash for auction response item " + d1Var.c());
            }
        }
        this.f6366e.a(copyOnWriteArrayList, str);
        if (this.f6366e.a()) {
            j(IronSourceConstants.TROUBLESHOOTING_RV_WATERFALL_OVERHEAD, n8.a(new Object[][]{new Object[]{"reason", "waterfalls hold too many with size=" + this.f6366e.e()}}));
        }
        O("updateWaterfall() - next waterfall is " + sb.toString());
        if (sb.length() == 0) {
            O("Updated waterfall is empty");
        }
        j(IronSourceConstants.RV_AUCTION_RESPONSE_WATERFALL, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}}));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(Map<String, Object> map, List<String> list, String str) {
        if (map.keySet().size() == 0 && list.size() == 0) {
            J(IronSourceConstants.RV_AUCTION_FAILED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{"duration", 0}}));
            O("makeAuction() failed - No candidates available for auctioning");
            R();
            return;
        }
        O("makeAuction() - request waterfall is: " + str);
        B(1000);
        B(IronSourceConstants.RV_AUCTION_REQUEST);
        J(IronSourceConstants.RV_AUCTION_REQUEST_WATERFALL, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, str.toString()}}));
        this.j.a(ContextProvider.getInstance().getApplicationContext(), map, list, this.i, this.u, this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        if (list2.isEmpty()) {
            y(map, list, sb.toString());
            return;
        }
        a2 a2Var = new a2();
        d dVar = new d(map, sb, list);
        B(IronSourceConstants.RV_COLLECT_TOKENS);
        a2Var.a(list2, dVar, this.F, TimeUnit.MILLISECONDS);
    }

    @Override // com.json.fb
    public void a() {
        O("onLoadTriggered: RV load was triggered in " + this.z + " state");
        l(0L);
    }

    @Override // com.json.t0
    public void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        O(str3);
        IronSourceUtils.sendAutomationLog("RV: " + str3);
        this.p = i2;
        this.o = str2;
        this.k = null;
        T();
        j(IronSourceConstants.RV_AUCTION_FAILED, TextUtils.isEmpty(str) ? n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"duration", Long.valueOf(j)}}) : n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}, new Object[]{"duration", Long.valueOf(j)}}));
        i();
    }

    @Override // com.json.n5
    public void a(Activity activity, Placement placement) {
        synchronized (this.C) {
            if (placement == null) {
                v("showRewardedVideo error: empty default placement");
                IronSourceError ironSourceError = new IronSourceError(1021, "showRewardedVideo error: empty default placement");
                va vaVarA = va.a();
                v8 v8Var = this.f6366e;
                vaVarA.a(ironSourceError, v8Var.a(v8Var.d()));
                k(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1021}, new Object[]{"reason", "showRewardedVideo error: empty default placement"}}), false, true);
                return;
            }
            this.v = placement.getPlacementName();
            E("showRewardedVideo(" + placement + ")");
            r rVar = null;
            C(IronSourceConstants.RV_API_SHOW_CALLED, activity != null ? n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.EVENTS_INIT_CONTEXT_FLOW}}) : null);
            if (this.y) {
                v("showRewardedVideo error: can't show ad while an ad is already showing");
                IronSourceError ironSourceError2 = new IronSourceError(1022, "showRewardedVideo error: can't show ad while an ad is already showing");
                va vaVarA2 = va.a();
                v8 v8Var2 = this.f6366e;
                vaVarA2.a(ironSourceError2, v8Var2.a(v8Var2.d()));
                C(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1022}, new Object[]{"reason", "showRewardedVideo error: can't show ad while an ad is already showing"}}));
                return;
            }
            if (this.z != e.RV_STATE_READY_TO_SHOW) {
                v("showRewardedVideo error: show called while no ads are available");
                IronSourceError ironSourceError3 = new IronSourceError(1023, "showRewardedVideo error: show called while no ads are available");
                va vaVarA3 = va.a();
                v8 v8Var3 = this.f6366e;
                vaVarA3.a(ironSourceError3, v8Var3.a(v8Var3.d()));
                C(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1023}, new Object[]{"reason", "showRewardedVideo error: show called while no ads are available"}}));
                return;
            }
            if (com.json.mediationsdk.utils.b.f(ContextProvider.getInstance().getApplicationContext(), this.v)) {
                String str = "showRewardedVideo error: placement " + this.v + " is capped";
                v(str);
                IronSourceError ironSourceError4 = new IronSourceError(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT, str);
                va vaVarA4 = va.a();
                v8 v8Var4 = this.f6366e;
                vaVarA4.a(ironSourceError4, v8Var4.a(v8Var4.d()));
                C(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT)}, new Object[]{"reason", str}}));
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<r> it = this.f6366e.c().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                r next = it.next();
                if (next.A()) {
                    this.y = true;
                    next.b(true);
                    n(e.RV_STATE_NOT_LOADED);
                    rVar = next;
                    break;
                }
                if (next.e() != null) {
                    stringBuffer.append(next.c() + CertificateUtil.DELIMITER + next.e() + ",");
                }
                next.b(false);
            }
            if (rVar != null) {
                K(rVar, placement);
                return;
            }
            O("showRewardedVideo(): No ads to show");
            va vaVarA5 = va.a();
            IronSourceError ironSourceErrorBuildNoAdsToShowError = ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
            v8 v8Var5 = this.f6366e;
            vaVarA5.a(ironSourceErrorBuildNoAdsToShowError, v8Var5.a(v8Var5.d()));
            HashMap map = new HashMap();
            map.put(IronSourceConstants.EVENTS_ERROR_CODE, 509);
            map.put("reason", "showRewardedVideo(): No ads to show");
            if (stringBuffer.length() != 0) {
                map.put(IronSourceConstants.EVENTS_EXT1, stringBuffer.toString());
            }
            C(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, map);
            this.l.b();
        }
    }

    @Override // com.json.n5
    public void a(Context context, boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager Should Track Network State: " + z, 0);
        try {
            this.r = z;
            if (z) {
                if (this.q == null) {
                    this.q = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.q, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.q != null) {
                context.getApplicationContext().unregisterReceiver(this.q);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    @Override // com.json.u8
    public void a(IronSourceError ironSourceError, r rVar) {
        d1 d1Var;
        if (this.m && (d1Var = this.f6367f.get(rVar.c())) != null) {
            v8 v8Var = this.f6366e;
            v8Var.a(v8Var.d(), d1Var.a(this.v));
        }
        u(rVar, "onRewardedVideoAdShowFailed error=" + ironSourceError.getErrorMessage());
        this.y = false;
        C(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"reason", ironSourceError.getErrorMessage()}}));
        va.a().a(ironSourceError, this.f6366e.a(rVar.u()));
        this.f6368g.put(rVar.c(), h.a.ISAuctionPerformanceFailedToShow);
        if (this.z != e.RV_STATE_READY_TO_SHOW) {
            G(false);
        }
        this.l.b();
    }

    @Override // com.json.u8
    public void a(r rVar) {
        u(rVar, "onRewardedVideoAdStarted");
        va.a().c();
    }

    @Override // com.json.u8
    public void a(r rVar, Placement placement) {
        u(rVar, "onRewardedVideoAdRewarded");
        va.a().b(placement, this.f6366e.a(rVar.u()));
    }

    @Override // com.json.t0
    public void a(List<d1> list, String str, d1 d1Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        O("makeAuction(): success");
        this.h = d1Var;
        this.p = i;
        this.k = jSONObject;
        this.o = "";
        if (!TextUtils.isEmpty(str2)) {
            j(88002, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str2}}));
        }
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
        c(jSONObject2, ad_unit);
        if (this.b.a(ad_unit)) {
            j(IronSourceConstants.RV_AD_UNIT_CAPPED, n8.a(new Object[][]{new Object[]{"auctionId", str}}));
            R();
        } else {
            x(list, str, this.k);
            j(IronSourceConstants.RV_AUCTION_SUCCESS, n8.a(new Object[][]{new Object[]{"duration", Long.valueOf(j)}}));
            i();
        }
    }

    @Override // com.json.s9
    public void a(boolean z) {
        if (this.r) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Network Availability Changed To: " + z, 0);
            if (N(z)) {
                G(z);
            }
        }
    }

    @Override // com.json.i
    public void b() {
        n(e.RV_STATE_NOT_LOADED);
        A(false, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_RV_EXPIRED_ADS)}, new Object[]{"reason", "loaded ads are expired"}}));
        l(0L);
    }

    @Override // com.json.u8
    public void b(r rVar) {
        u(rVar, "onRewardedVideoAdClosed, mediation state: " + this.z.name());
        va.a().b(this.f6366e.a(rVar.u()));
        this.y = false;
        boolean z = this.z == e.RV_STATE_READY_TO_SHOW;
        StringBuilder sb = new StringBuilder();
        if (z) {
            for (r rVar2 : this.f6366e.c()) {
                if (rVar2.y()) {
                    sb.append(rVar2.c() + ";");
                }
            }
        }
        Object[][] objArr = new Object[1][];
        Object[] objArr2 = new Object[2];
        objArr2[0] = IronSourceConstants.EVENTS_EXT1;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("otherRVAvailable = ");
        sb2.append(sb.length() > 0 ? "true|" + ((Object) sb) : "false");
        objArr2[1] = sb2.toString();
        objArr[0] = objArr2;
        rVar.b(1203, objArr);
        if (rVar.equals(this.f6366e.f())) {
            this.f6366e.a((r) null);
            if (this.z != e.RV_STATE_READY_TO_SHOW) {
                G(false);
            }
        }
    }

    @Override // com.json.u8
    public void b(r rVar, Placement placement) {
        u(rVar, "onRewardedVideoAdClicked");
        va.a().a(placement, this.f6366e.a(rVar.u()));
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0058 A[SYNTHETIC] */
    @Override // com.json.u8
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(com.json.mediationsdk.r r12) {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.q.c(com.ironsource.mediationsdk.r):void");
    }

    @Override // com.json.u8
    public void d(r rVar) {
        this.f6366e.a(rVar);
        this.u++;
        u(rVar, "onRewardedVideoAdOpened");
        if (this.m) {
            d1 d1Var = this.f6367f.get(rVar.c());
            if (d1Var != null) {
                v8 v8Var = this.f6366e;
                v8Var.a(v8Var.d(), d1Var.a(this.v));
                this.j.a(d1Var, rVar.g(), this.h, this.v);
                this.f6368g.put(rVar.c(), h.a.ISAuctionPerformanceShowedSuccessfully);
                a(d1Var, this.v);
            } else {
                String strC = rVar.c();
                L("onRewardedVideoAdOpened showing instance " + strC + " missing from waterfall");
                j(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, n8.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1011}, new Object[]{"reason", "Showing missing " + this.z}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}}));
            }
        }
        va.a().c(this.f6366e.a(rVar.u()));
        G(false);
        this.l.c();
    }

    @Override // com.json.n5
    public boolean d() {
        if ((!this.r || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) && this.z == e.RV_STATE_READY_TO_SHOW && !this.y) {
            Iterator<r> it = this.f6366e.c().iterator();
            while (it.hasNext()) {
                if (it.next().A()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.json.u8
    public void e(r rVar) {
        synchronized (this.C) {
            u(rVar, "onLoadSuccess mState=" + this.z);
            if (rVar.u() == this.f6366e.d() && this.z != e.RV_STATE_AUCTION_IN_PROGRESS) {
                this.f6368g.put(rVar.c(), h.a.ISAuctionPerformanceLoadedSuccessfully);
                e eVar = this.z;
                e eVar2 = e.RV_STATE_LOADING_SMASHES;
                if (eVar == eVar2) {
                    n(e.RV_STATE_READY_TO_SHOW);
                    j(1003, n8.a(new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - this.n)}}));
                    this.D.a(0L);
                    if (this.m) {
                        d1 d1Var = this.f6367f.get(rVar.c());
                        if (d1Var != null) {
                            v8 v8Var = this.f6366e;
                            v8Var.a(v8Var.d(), d1Var.a(""));
                            this.j.a(d1Var, rVar.g(), this.h);
                            this.j.a(this.f6366e.c(), this.f6367f, rVar.g(), this.h, d1Var);
                        } else {
                            String strC = rVar.c();
                            L("onLoadSuccess winner instance " + strC + " missing from waterfall. auctionId: " + rVar.u() + " and the current id is " + this.f6366e.d());
                            Object[] objArr = {IronSourceConstants.EVENTS_ERROR_CODE, 1010};
                            StringBuilder sb = new StringBuilder();
                            sb.append("Loaded missing ");
                            sb.append(eVar2);
                            j(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, n8.a(new Object[][]{objArr, new Object[]{"reason", sb.toString()}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}}));
                        }
                    }
                    G(true);
                }
                return;
            }
            O("onLoadSuccess was invoked with auctionId: " + rVar.u() + " and the current id is " + this.f6366e.d());
            Object[] objArr2 = {IronSourceConstants.EVENTS_ERROR_CODE, 2};
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onLoadSuccess wrong auction ID ");
            sb2.append(this.z);
            rVar.a(IronSourceConstants.RV_MANAGER_UNEXPECTED_STATE, new Object[][]{objArr2, new Object[]{"reason", sb2.toString()}});
        }
    }

    @Override // com.json.u8
    public void f(r rVar) {
        u(rVar, "onRewardedVideoAdEnded");
        va.a().b();
    }
}
