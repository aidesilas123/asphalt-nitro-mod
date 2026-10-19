package com.json.mediationsdk;

import android.graphics.Rect;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.json.a2;
import com.json.a4;
import com.json.b2;
import com.json.d1;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.f1;
import com.json.k5;
import com.json.l5;
import com.json.m1;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.h;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.l;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.oc;
import com.json.q7;
import com.json.ra;
import com.json.t0;
import com.json.t3;
import com.json.w8;
import com.json.x1;
import com.json.z6;
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
public class w extends m implements ra, t0 {
    private final Object A;
    private t3 B;
    private boolean C;
    private final boolean D;
    private final long E;
    private final Runnable F;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z6 f6411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z6.a f6412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private k f6413g;
    private h h;
    private w8 i;
    private IronSourceBannerLayout j;
    private m1 k;
    private int l;
    private x m;
    private int n;
    private final ConcurrentHashMap<String, x> o;
    private CopyOnWriteArrayList<x> p;
    private String q;
    private JSONObject r;
    private String s;
    private int t;
    private com.json.mediationsdk.e u;
    private d1 v;
    private com.json.mediationsdk.h w;
    private ConcurrentHashMap<String, d1> x;
    private ConcurrentHashMap<String, h.a> y;
    private long z;

    class a implements l.b {
        final /* synthetic */ m1 a;
        final /* synthetic */ IronSourceBannerLayout b;

        a(m1 m1Var, IronSourceBannerLayout ironSourceBannerLayout) {
            this.a = m1Var;
            this.b = ironSourceBannerLayout;
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a() {
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose("placement = " + this.a.getPlacementName());
            w.this.j = this.b;
            w.this.k = this.a;
            if (!com.json.mediationsdk.utils.b.d(ContextProvider.getInstance().getApplicationContext(), this.a.getPlacementName())) {
                w.this.J(false);
                return;
            }
            ironLog.verbose("placement is capped");
            n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(604, "placement " + this.a.getPlacementName() + " is capped"));
            w.this.l(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 604}});
            w.this.q(h.READY_TO_LOAD);
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a(String str) {
            IronLog.API.error("can't load banner - errorMessage = " + str);
        }
    }

    class b implements l.b {
        final /* synthetic */ IronSourceBannerLayout a;

        b(IronSourceBannerLayout ironSourceBannerLayout) {
            this.a = ironSourceBannerLayout;
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a() {
            IronLog.INTERNAL.verbose("destroying banner");
            w.this.i.b();
            w.this.m(IronSourceConstants.BN_DESTROY, null, w.this.m != null ? w.this.m.n() : w.this.n);
            w.this.S();
            this.a.a();
            w.this.j = null;
            w.this.k = null;
            w.this.q(h.READY_TO_LOAD);
        }

        @Override // com.ironsource.mediationsdk.l.b
        public void a(String str) {
            IronLog.API.error("destroy banner failed - errorMessage = " + str);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (w.this.j == null) {
                    IronLog.INTERNAL.verbose("mIronSourceBanner is null");
                    w.this.l(IronSourceConstants.BN_SKIP_RELOAD, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_BN_RELOAD_SKIP_BANNER_LAYOUT_IS_NULL)}});
                } else {
                    if (w.this.o()) {
                        w.this.k0();
                        return;
                    }
                    IronLog.INTERNAL.verbose("banner is not visible, reload skipped");
                    w.this.l(IronSourceConstants.BN_SKIP_RELOAD, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(IronSourceError.ERROR_BN_RELOAD_SKIP_INVISIBLE)}});
                    w.this.i.a(TimeUnit.SECONDS.toMillis(w.this.f6413g.f()));
                }
            } catch (Throwable th) {
                w.this.l(IronSourceConstants.TROUBLESHOOTING_BN_RELOAD_EXCEPTION, new Object[][]{new Object[]{"reason", th.getMessage()}});
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.l0();
            if (w.this.n0()) {
                return;
            }
            w.this.k(IronSourceConstants.BN_AUCTION_REQUEST);
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            w.this.I(map, arrayList, sb, arrayList2);
            if (w.this.D) {
                w.this.C(map, arrayList, sb, arrayList2);
            } else {
                w.this.B(map, arrayList, sb);
            }
        }
    }

    class e implements a2.b {
        final /* synthetic */ Map a;
        final /* synthetic */ StringBuilder b;
        final /* synthetic */ List c;

        e(Map map, StringBuilder sb, List list) {
            this.a = map;
            this.b = sb;
            this.c = list;
        }

        @Override // com.ironsource.a2.b
        public void a(List<b2> list, long j, List<String> list2) {
            w.this.l(IronSourceConstants.BN_COLLECT_TOKENS_COMPLETED, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            for (b2 b2Var : list) {
                if (b2Var.a() != null) {
                    this.a.put(b2Var.c(), b2Var.a());
                    StringBuilder sb = this.b;
                    sb.append(b2Var.d());
                    sb.append(b2Var.c());
                    sb.append(",");
                    ((x) w.this.o.get(b2Var.c())).a(IronSourceConstants.BN_INSTANCE_COLLECT_TOKEN_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(b2Var.e())}});
                } else {
                    ((x) w.this.o.get(b2Var.c())).a(IronSourceConstants.BN_INSTANCE_COLLECT_TOKEN_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(b2Var.e())}, new Object[]{"reason", b2Var.b()}});
                }
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                ((x) w.this.o.get(it.next())).a(IronSourceConstants.BN_INSTANCE_COLLECT_TOKEN_TIMED_OUT, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            }
            w.this.B(this.a, this.c, this.b);
        }

        @Override // com.ironsource.a2.b
        public void onFailure(String str) {
            w.this.l(IronSourceConstants.BN_COLLECT_TOKENS_FAILED, new Object[][]{new Object[]{"duration", str}});
            w.this.B(this.a, this.c, this.b);
        }
    }

    class f implements Runnable {
        final /* synthetic */ NetworkSettings a;

        f(NetworkSettings networkSettings) {
            this.a = networkSettings;
        }

        @Override // java.lang.Runnable
        public void run() {
            w.this.p(this.a);
        }
    }

    class g extends TimerTask {
        g() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            w.this.j0();
        }
    }

    enum h {
        NONE,
        READY_TO_LOAD,
        STARTED_LOADING,
        FIRST_AUCTION,
        AUCTION,
        LOADING,
        RELOADING,
        LOADED
    }

    w(l5 l5Var, k5 k5Var, List<NetworkSettings> list, k kVar, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.h = h.NONE;
        this.s = "";
        this.A = new Object();
        this.C = false;
        c cVar = new c();
        this.F = cVar;
        z6 z6VarD = l5Var.d();
        this.f6411e = z6VarD;
        this.f6412f = k5Var.b();
        long time = new Date().getTime();
        l(IronSourceConstants.BN_MANAGER_INIT_STARTED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, IronSourceConstants.PROG_BN_MANAGER_NAME}});
        IronLog.INTERNAL.verbose("isAuctionEnabled = " + kVar.k());
        this.f6413g = kVar;
        this.o = new ConcurrentHashMap<>();
        this.p = new CopyOnWriteArrayList<>();
        this.x = new ConcurrentHashMap<>();
        this.y = new ConcurrentHashMap<>();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        this.n = z6VarD.a(ad_unit);
        n.a().a(ad_unit, this.f6413g.d());
        if (this.f6413g.k()) {
            this.u = new com.json.mediationsdk.e(ad_unit, this.f6413g.b(), this);
        }
        this.w = new com.json.mediationsdk.h(list, this.f6413g.b().c());
        A(list, kVar);
        this.z = new Date().getTime();
        q(h.READY_TO_LOAD);
        this.D = kVar.g();
        this.E = kVar.h();
        this.i = new w8(cVar, com.json.lifecycle.b.d(), new oc());
        l(IronSourceConstants.BN_MANAGER_INIT_ENDED, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}});
    }

    public w(List<NetworkSettings> list, k kVar, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        this(e9.h(), e9.g(), list, kVar, hashSet, ironSourceSegment);
    }

    private void A(List<NetworkSettings> list, k kVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<NetworkSettings> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new f(it.next()));
        }
        IronSourceThreadManager.INSTANCE.executeTasks(kVar.c().l(), kVar.c().o(), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(Map<String, Object> map, List<String> list, StringBuilder sb) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("auction waterfallString = " + ((Object) sb));
        if (map.size() != 0 || list.size() != 0) {
            l(IronSourceConstants.BN_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}});
            com.json.mediationsdk.e eVar = this.u;
            if (eVar != null) {
                eVar.a(ContextProvider.getInstance().getApplicationContext(), map, list, this.w, this.n, this.c, W());
                return;
            } else {
                ironLog.error("mAuctionHandler is null");
                return;
            }
        }
        l(IronSourceConstants.BN_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{"duration", 0}});
        if (E(h.AUCTION, h.LOADED)) {
            this.i.a(TimeUnit.SECONDS.toMillis(this.f6413g.f()));
            return;
        }
        n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(1005, "No candidates available for auctioning"));
        l(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}});
        q(h.READY_TO_LOAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        if (list2.isEmpty()) {
            B(map, list, sb);
            return;
        }
        a2 a2Var = new a2();
        e eVar = new e(map, sb, list);
        k(IronSourceConstants.BN_COLLECT_TOKENS);
        a2Var.a(list2, eVar, this.E, TimeUnit.MILLISECONDS);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void D(JSONObject jSONObject, ISBannerSize iSBannerSize) {
        try {
            String description = iSBannerSize.getDescription();
            byte b2 = -1;
            switch (description.hashCode()) {
                case -387072689:
                    if (description.equals(l.c)) {
                        b2 = 2;
                    }
                    break;
                case 72205083:
                    if (description.equals(l.b)) {
                        b2 = 1;
                    }
                    break;
                case 79011241:
                    if (description.equals(l.f6336e)) {
                        b2 = 3;
                    }
                    break;
                case 1951953708:
                    if (description.equals(l.a)) {
                        b2 = 0;
                    }
                    break;
                case 1999208305:
                    if (description.equals("CUSTOM")) {
                        b2 = 4;
                    }
                    break;
            }
            if (b2 == 0) {
                jSONObject.put(l.f6338g, 1);
            } else if (b2 == 1) {
                jSONObject.put(l.f6338g, 2);
            } else if (b2 == 2) {
                jSONObject.put(l.f6338g, 3);
            } else if (b2 == 3) {
                jSONObject.put(l.f6338g, 5);
            } else if (b2 == 4) {
                jSONObject.put(l.f6338g, 6);
                jSONObject.put("custom_banner_size", iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight());
            }
            if (iSBannerSize.isAdaptive()) {
                String str = l.m;
                if (jSONObject.has(IronSourceConstants.EVENTS_EXT1)) {
                    str = jSONObject.optString(IronSourceConstants.EVENTS_EXT1) + " , Adaptive=true";
                }
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, str);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error(Log.getStackTraceString(e2));
        }
    }

    private boolean E(h hVar, h hVar2) {
        boolean z;
        synchronized (this.A) {
            if (this.h == hVar) {
                IronLog.INTERNAL.verbose("set state from '" + this.h + "' to '" + hVar2 + "'");
                z = true;
                this.h = hVar2;
            } else {
                z = false;
            }
        }
        return z;
    }

    private String F(d1 d1Var) {
        x xVar = this.o.get(d1Var.c());
        return ((xVar == null ? !TextUtils.isEmpty(d1Var.j()) : xVar.p()) ? MBridgeConstans.API_REUQEST_CATEGORY_APP : "1") + d1Var.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(Map<String, Object> map, List<String> list, StringBuilder sb, List<x1> list2) {
        if (com.json.mediationsdk.utils.b.d(ContextProvider.getInstance().getApplicationContext(), a0())) {
            return;
        }
        for (x xVar : this.o.values()) {
            AdData adDataCreateAdDataForNetworkAdapter = AdData.createAdDataForNetworkAdapter(xVar.f6233d, IronSource.AD_UNIT.BANNER, null, this.j);
            if (xVar.p()) {
                if (this.D) {
                    list2.add(new x1(xVar.g(), xVar.c(), adDataCreateAdDataForNetworkAdapter, xVar, null, null));
                } else {
                    try {
                        Map<String, Object> mapA = xVar.a(adDataCreateAdDataForNetworkAdapter);
                        if (mapA != null) {
                            map.put(xVar.c(), mapA);
                            sb.append(xVar.g() + xVar.c() + ",");
                        } else {
                            xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_BIDDING_DATA_MISSING, new Object[][]{new Object[]{"reason", "Missing bidding data"}});
                        }
                    } catch (Exception e2) {
                        String str = "prepareAuctionCandidates - exception while calling smash.getBiddingData - " + e2.getMessage();
                        IronLog.INTERNAL.error(str);
                        xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str}});
                    } catch (NoClassDefFoundError e3) {
                        String str2 = "prepareAuctionCandidates - error while calling smash.getBiddingData - " + e3.getMessage();
                        IronLog.INTERNAL.error(str2);
                        xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_INTERNAL_ERROR, new Object[][]{new Object[]{"reason", str2}});
                    }
                }
            } else if (!xVar.p()) {
                list.add(xVar.c());
                sb.append(xVar.g() + xVar.c() + ",");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(boolean z) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("current state = " + this.h);
        if (!E(h.STARTED_LOADING, this.f6413g.k() ? z ? h.AUCTION : h.FIRST_AUCTION : z ? h.RELOADING : h.LOADING)) {
            ironLog.error("wrong state - " + this.h);
            return;
        }
        this.B = new t3();
        this.q = "";
        this.r = null;
        this.l = 0;
        this.n = this.f6411e.a(IronSource.AD_UNIT.BANNER);
        k(z ? IronSourceConstants.BN_RELOAD : 3001);
        if (this.f6413g.k()) {
            j0();
        } else {
            m0();
            i0();
        }
    }

    private boolean K(int i) {
        return i == 3201 || i == 3110 || i == 3111 || i == 3116 || i == 3119 || i == 3112 || i == 3115 || i == 3501 || i == 3502 || i == 3506;
    }

    private void O(x xVar) {
        String strJ;
        IronSourceBannerLayout ironSourceBannerLayout = this.j;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            return;
        }
        IronSourceBannerLayout ironSourceBannerLayoutB = null;
        if (xVar.p()) {
            strJ = this.x.get(xVar.c()).j();
            xVar.c(strJ);
        } else {
            strJ = null;
        }
        JSONObject jSONObjectA = this.x.get(xVar.c()).a();
        try {
            ironSourceBannerLayoutB = this.j.b();
        } catch (Exception e2) {
            IronLog.INTERNAL.verbose("Failed to make copy of banner layout: " + e2.getMessage());
        }
        xVar.a(ironSourceBannerLayoutB, this.k, strJ, jSONObjectA);
    }

    private boolean R() {
        IronSourceBannerLayout ironSourceBannerLayout = this.j;
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        if (this.m != null) {
            IronLog.INTERNAL.verbose("mActiveSmash = " + this.m.f());
            this.m.t();
            this.m = null;
        }
    }

    private List<d1> V() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (x xVar : this.o.values()) {
            if (!xVar.p() && !com.json.mediationsdk.utils.b.d(ContextProvider.getInstance().getApplicationContext(), a0())) {
                copyOnWriteArrayList.add(new d1(xVar.c()));
            }
        }
        return copyOnWriteArrayList;
    }

    private ISBannerSize W() {
        IronSourceBannerLayout ironSourceBannerLayout = this.j;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.getSize() == null) {
            return null;
        }
        return this.j.getSize().isSmart() ? AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? ISBannerSize.a : ISBannerSize.BANNER : this.j.getSize();
    }

    private ISBannerSize Z() {
        IronSourceBannerLayout ironSourceBannerLayout = this.j;
        if (ironSourceBannerLayout != null) {
            return ironSourceBannerLayout.getSize();
        }
        return null;
    }

    private String a0() {
        m1 m1Var = this.k;
        return m1Var != null ? m1Var.getPlacementName() : "";
    }

    private void c0() {
        String str = this.p.isEmpty() ? "Empty waterfall" : "Mediation No fill";
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("errorReason = " + str);
        g(null);
        h hVar = h.LOADING;
        h hVar2 = h.READY_TO_LOAD;
        if (E(hVar, hVar2)) {
            l(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 606}, new Object[]{"reason", str}, new Object[]{"duration", Long.valueOf(t3.a(this.B))}});
            n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(606, str));
        } else if (E(h.RELOADING, h.LOADED)) {
            l(IronSourceConstants.BN_CALLBACK_RELOAD_ERROR, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.B))}});
            n.a().b(IronSource.AD_UNIT.BANNER, new IronSourceError(606, str), true);
            this.i.a(TimeUnit.SECONDS.toMillis(this.f6413g.f()));
        } else {
            q(hVar2);
            ironLog.error("wrong state = " + this.h);
        }
    }

    private void d0() {
        String strA0 = a0();
        com.json.mediationsdk.utils.b.a(ContextProvider.getInstance().getApplicationContext(), strA0);
        if (com.json.mediationsdk.utils.b.d(ContextProvider.getInstance().getApplicationContext(), strA0)) {
            k(IronSourceConstants.BN_PLACEMENT_CAPPED);
        }
    }

    private boolean e0() {
        h hVar = this.h;
        return hVar == h.RELOADING || hVar == h.AUCTION;
    }

    private boolean f0() {
        boolean z;
        synchronized (this.A) {
            z = this.h == h.LOADED;
        }
        return z;
    }

    private boolean g0() {
        boolean z;
        synchronized (this.A) {
            h hVar = this.h;
            z = hVar == h.FIRST_AUCTION || hVar == h.AUCTION;
        }
        return z;
    }

    private boolean h0() {
        boolean z;
        synchronized (this.A) {
            h hVar = this.h;
            z = hVar == h.LOADING || hVar == h.RELOADING;
        }
        return z;
    }

    private void i0() {
        try {
            for (int i = this.l; i < this.p.size(); i++) {
                x xVar = this.p.get(i);
                if (xVar.h()) {
                    IronLog.INTERNAL.verbose("loading smash - " + xVar.f());
                    this.l = i + 1;
                    O(xVar);
                    return;
                }
            }
            c0();
        } catch (Exception e2) {
            l(IronSourceConstants.TROUBLESHOOTING_BN_INTERNAL_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, "loadNextSmash"}, new Object[]{"reason", Log.getStackTraceString(e2)}});
        }
    }

    private String j(List<d1> list) {
        IronLog.INTERNAL.verbose("waterfall.size() = " + list.size());
        this.p.clear();
        this.x.clear();
        this.y.clear();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            d1 d1Var = list.get(i);
            o(d1Var);
            sb.append(F(d1Var));
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        IronLog.INTERNAL.verbose("updateWaterfall() - next waterfall is " + sb.toString());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0() {
        IronLog.INTERNAL.verbose();
        AsyncTask.execute(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i) {
        l(i, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("");
        if (E(h.LOADED, h.STARTED_LOADING)) {
            J(true);
            return;
        }
        ironLog.error("wrong state = " + this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i, Object[][] objArr) {
        m(i, objArr, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        if (this.y.isEmpty()) {
            return;
        }
        this.w.a(this.y);
        this.y.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(int i, Object[][] objArr, int i2) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
        try {
            ISBannerSize iSBannerSizeZ = Z();
            if (iSBannerSizeZ != null) {
                D(mediationAdditionalData, iSBannerSizeZ);
            }
            if (this.k != null) {
                mediationAdditionalData.put("placement", a0());
            }
            mediationAdditionalData.put("sessionDepth", i2);
            if (!TextUtils.isEmpty(this.q)) {
                mediationAdditionalData.put("auctionId", this.q);
            }
            JSONObject jSONObject = this.r;
            if (jSONObject != null && jSONObject.length() > 0) {
                mediationAdditionalData.put("genericParams", this.r);
            }
            if (K(i)) {
                mediationAdditionalData.put(IronSourceConstants.AUCTION_TRIALS, this.t);
                if (!TextUtils.isEmpty(this.s)) {
                    mediationAdditionalData.put(IronSourceConstants.AUCTION_FALLBACK, this.s);
                }
            }
            if (objArr != null) {
                for (Object[] objArr2 : objArr) {
                    mediationAdditionalData.put(objArr2[0].toString(), objArr2[1]);
                }
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error(Log.getStackTraceString(e2));
        }
        q7.i().a(new a4(i, mediationAdditionalData));
    }

    private void m0() {
        List<d1> listV = V();
        this.q = e();
        j(listV);
    }

    private void n(View view, FrameLayout.LayoutParams layoutParams) {
        IronSourceBannerLayout ironSourceBannerLayout = this.j;
        if (ironSourceBannerLayout != null) {
            l.a(ironSourceBannerLayout, view, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n0() {
        long jA = l.a(this.z, this.f6413g.i());
        if (jA <= 0) {
            return false;
        }
        IronLog.INTERNAL.verbose("waiting before auction - timeToWaitBeforeAuction = " + jA);
        new Timer().schedule(new g(), jA);
        return true;
    }

    private void o(d1 d1Var) {
        x xVar = this.o.get(d1Var.c());
        if (xVar == null) {
            IronLog.INTERNAL.error("could not find matching smash for auction response item - item = " + d1Var.c());
            return;
        }
        AbstractAdapter abstractAdapterA = com.json.mediationsdk.c.b().a(xVar.b.h());
        if (abstractAdapterA != null) {
            x xVar2 = new x(this.f6413g, this, xVar.b.h(), abstractAdapterA, this.n, this.q, this.r, this.t, this.s, e0());
            xVar2.a(true);
            this.p.add(xVar2);
            this.x.put(xVar2.c(), d1Var);
            this.y.put(d1Var.c(), h.a.ISAuctionPerformanceDidntAttemptToLoad);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(NetworkSettings networkSettings) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
        AbstractAdapter abstractAdapterA = com.json.mediationsdk.c.b().a(networkSettings, networkSettings.getBannerSettings(), false);
        if (abstractAdapterA != null) {
            x xVar = new x(this.f6413g, this, networkSettings, abstractAdapterA, this.n, e0());
            this.o.put(xVar.c(), xVar);
        } else {
            ironLog.verbose(networkSettings.getProviderInstanceName() + " can't load adapter");
        }
        ironLog.verbose(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(h hVar) {
        IronLog.INTERNAL.verbose("from '" + this.h + "' to '" + hVar + "'");
        synchronized (this.A) {
            this.h = hVar;
        }
    }

    private void z(x xVar, d1 d1Var) {
        this.u.a(d1Var, xVar.g(), this.v, a0());
        a(this.x.get(xVar.c()), a0());
    }

    @Override // com.json.t0
    public void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(str3);
        IronSourceUtils.sendAutomationLog("BN: " + str3);
        if (!g0()) {
            ironLog.warning("wrong state - mCurrentState = " + this.h);
            return;
        }
        this.s = str2;
        this.t = i2;
        this.r = null;
        m0();
        l(IronSourceConstants.BN_AUCTION_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"reason", str}});
        q(this.h == h.FIRST_AUCTION ? h.LOADING : h.RELOADING);
        i0();
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout) {
        IronLog.INTERNAL.verbose();
        l.c(ironSourceBannerLayout, new b(ironSourceBannerLayout));
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout, m1 m1Var) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        b(ad_unit);
        f();
        if (!E(h.READY_TO_LOAD, h.STARTED_LOADING)) {
            IronLog.API.error("can't load banner - loadBanner already called and still in progress");
        } else if (n.a().b(ad_unit)) {
            ironLog.verbose("can't load banner - already has pending invocation");
        } else {
            l.b(ironSourceBannerLayout, m1Var, new a(m1Var, ironSourceBannerLayout));
        }
    }

    @Override // com.json.ra
    public void a(IronSourceError ironSourceError, x xVar, boolean z) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("error = " + ironSourceError);
        if (xVar.x() == this.q) {
            if (h0()) {
                this.y.put(xVar.c(), h.a.ISAuctionPerformanceFailedToLoad);
                i0();
                return;
            } else {
                ironLog.warning("wrong state - mCurrentState = " + this.h);
                return;
            }
        }
        ironLog.error("invoked with auctionId: " + xVar.x() + " and the current id is " + this.q);
        xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 3}, new Object[]{"reason", "Wrong auction " + xVar.x() + " State - " + this.h}, new Object[]{IronSourceConstants.EVENTS_EXT1, xVar.c()}});
    }

    @Override // com.json.ra
    public void a(x xVar) {
        d1 d1Var;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(xVar.f());
        if (f0()) {
            if (this.f6413g.k() && this.f6413g.b().p() && (d1Var = this.x.get(xVar.c())) != null) {
                z(xVar, d1Var);
            }
            k(IronSourceConstants.BN_CALLBACK_SHOW);
            return;
        }
        ironLog.warning("wrong state - mCurrentState = " + this.h);
        String strC = xVar.c();
        l(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1}, new Object[]{"reason", "Wrong State - " + this.h}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}});
    }

    @Override // com.json.ra
    public void a(x xVar, View view, FrameLayout.LayoutParams layoutParams) {
        Object[][] objArr;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("smash = " + xVar.f());
        if (xVar.x() != this.q) {
            ironLog.error("invoked with auctionId: " + xVar.x() + " and the current id is " + this.q);
            xVar.a(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 2}, new Object[]{"reason", "Wrong auction id " + xVar.x() + " State - " + this.h}, new Object[]{IronSourceConstants.EVENTS_EXT1, xVar.c()}});
            return;
        }
        if (!h0()) {
            ironLog.warning("wrong state - mCurrentState = " + this.h);
            return;
        }
        x xVar2 = this.m;
        if (xVar2 != null) {
            xVar2.q();
        }
        g(xVar);
        this.m = xVar;
        n(view, layoutParams);
        this.y.put(xVar.c(), h.a.ISAuctionPerformanceShowedSuccessfully);
        if (this.f6413g.k()) {
            d1 d1Var = this.x.get(xVar.c());
            if (d1Var != null) {
                a(d1Var.a(a0()));
                this.u.a(d1Var, xVar.g(), this.v);
                this.u.a(this.p, this.x, xVar.g(), this.v, d1Var);
                if (!this.f6413g.b().p()) {
                    z(xVar, d1Var);
                }
            } else {
                String strC = xVar.c();
                ironLog.error("onLoadSuccess winner instance " + strC + " missing from waterfall. auctionId = " + this.q);
                l(IronSourceConstants.TROUBLESHOOTING_BN_NOTIFICATIONS_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}, new Object[]{"reason", "Loaded missing"}, new Object[]{IronSourceConstants.EVENTS_EXT1, strC}});
            }
        }
        if (this.h == h.LOADING) {
            if (R()) {
                f1.a().a(this.f6345d, false);
                objArr = new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.B))}};
            } else {
                objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}, new Object[]{"duration", Long.valueOf(t3.a(this.B))}};
            }
            l(IronSourceConstants.BN_CALLBACK_LOAD_SUCCESS, objArr);
        } else {
            if (R()) {
                f1.a().a(this.f6345d, true);
            }
            IronSourceUtils.sendAutomationLog("bannerReloadSucceeded");
            l(IronSourceConstants.BN_CALLBACK_RELOAD_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(t3.a(this.B))}});
        }
        d0();
        this.f6412f.b(IronSource.AD_UNIT.BANNER);
        q(h.LOADED);
        this.i.a(TimeUnit.SECONDS.toMillis(this.f6413g.f()));
    }

    @Override // com.json.t0
    public void a(List<d1> list, String str, d1 d1Var, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("auctionId = " + str);
        if (!g0()) {
            ironLog.warning("wrong state - mCurrentState = " + this.h);
            return;
        }
        this.s = "";
        this.q = str;
        this.t = i;
        this.v = d1Var;
        this.r = jSONObject;
        if (!TextUtils.isEmpty(str2)) {
            l(88002, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{"reason", str2}});
        }
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
        c(jSONObject2, ad_unit);
        if (!this.b.a(ad_unit)) {
            l(IronSourceConstants.BN_AUCTION_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            q(this.h == h.FIRST_AUCTION ? h.LOADING : h.RELOADING);
            l(IronSourceConstants.BN_AUCTION_RESPONSE_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, j(list)}});
            i0();
            return;
        }
        l(IronSourceConstants.BN_AD_UNIT_CAPPED, new Object[][]{new Object[]{"auctionId", str}});
        h hVar = this.h;
        q(h.READY_TO_LOAD);
        if (hVar == h.FIRST_AUCTION) {
            n.a().a(ad_unit, new IronSourceError(IronSourceError.ERROR_AD_UNIT_CAPPED, "Ad unit is capped"));
        }
    }

    @Override // com.json.ra
    public void b(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (R()) {
            f1.a().b(this.f6345d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        m(IronSourceConstants.BN_CALLBACK_CLICK, objArr, xVar.n());
    }

    @Override // com.json.ra
    public void c(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (R()) {
            f1.a().c(this.f6345d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        m(IronSourceConstants.BN_CALLBACK_LEAVE_APP, objArr, xVar.n());
    }

    @Override // com.json.ra
    public void d(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (R()) {
            f1.a().e(this.f6345d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        m(IronSourceConstants.BN_CALLBACK_PRESENT_SCREEN, objArr, xVar.n());
    }

    @Override // com.json.ra
    public void e(x xVar) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(xVar.f());
        if (R()) {
            f1.a().d(this.f6345d);
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{"reason", "banner is destroyed"}};
        }
        m(IronSourceConstants.BN_CALLBACK_DISMISS_SCREEN, objArr, xVar.n());
    }

    public void g(x xVar) {
        for (x xVar2 : this.p) {
            if (!xVar2.equals(xVar)) {
                xVar2.q();
            }
        }
    }

    public boolean o() {
        IronLog ironLog;
        String str;
        if (!this.j.isShown()) {
            ironLog = IronLog.INTERNAL;
            str = "banner or one of its parents are INVISIBLE or GONE";
        } else {
            if (this.j.hasWindowFocus()) {
                boolean globalVisibleRect = this.j.getGlobalVisibleRect(new Rect());
                IronLog.INTERNAL.verbose("visible = " + globalVisibleRect);
                return globalVisibleRect;
            }
            ironLog = IronLog.INTERNAL;
            str = "banner has no window focus";
        }
        ironLog.verbose(str);
        return false;
    }
}
