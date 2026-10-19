package com.json.mediationsdk;

import android.content.Context;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.TextUtils;
import com.json.ApplicationGeneralSettings;
import com.json.ba;
import com.json.environment.ContextProvider;
import com.json.environment.NetworkStateReceiver;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.j0;
import com.json.l0;
import com.json.l3;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.integration.IntegrationHelper;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.p;
import com.json.mediationsdk.sdk.SegmentListener;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.mediationsdk.utils.c;
import com.json.nb;
import com.json.pb;
import com.json.s4;
import com.json.s9;
import com.json.u2;
import com.json.z7;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
class s implements s9 {
    private static s a;
    private pb b;
    private NetworkStateReceiver p;
    private CountDownTimer q;
    private String t;
    private com.json.mediationsdk.utils.c u;
    private SegmentListener w;
    private long y;
    private int c = e.f6387e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6379d = "appKey";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6380e = getClass().getSimpleName();
    private boolean l = false;
    private boolean n = false;
    private List<ba> r = new ArrayList();
    private String s = "";
    private f A = new a();
    private d v = d.NOT_INIT;
    private Handler m = IronSourceThreadManager.INSTANCE.getInitHandler();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6381f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6382g = 0;
    private int h = 62;
    private int i = 12;
    private int j = 5;
    private AtomicBoolean o = new AtomicBoolean(true);
    private boolean k = false;
    private boolean x = false;
    private z7 z = new z7();

    class a extends f {
        a() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            nb nbVarI;
            try {
                p pVarO = p.o();
                c0.f().b();
                if (!TextUtils.isEmpty(s.this.s)) {
                    s4.a().a("userId", s.this.s);
                }
                if (!TextUtils.isEmpty(s.this.t)) {
                    s4.a().a("appKey", s.this.t);
                }
                s.this.z.h(s.this.s);
                s.this.y = new Date().getTime();
                s.this.u = pVarO.q0(ContextProvider.getInstance().getApplicationContext(), s.this.s, this.c);
                if (s.this.u == null) {
                    if (s.this.f6382g == 3) {
                        s.this.x = true;
                        Iterator it = s.this.r.iterator();
                        while (it.hasNext()) {
                            ((ba) it.next()).a();
                        }
                    }
                    if (this.a && s.this.f6382g < s.this.h) {
                        s.this.k = true;
                        s.this.m.postDelayed(this, s.this.f6381f * 1000);
                        if (s.this.f6382g < s.this.i) {
                            s.a(s.this, 2);
                        }
                    }
                    if ((!this.a || s.this.f6382g == s.this.j) && !s.this.l) {
                        s.this.l = true;
                        if (TextUtils.isEmpty(this.b)) {
                            this.b = IronSourceConstants.FALSE_AVAILABILITY_REASON_NO_SERVER_RESPONSE;
                        }
                        Iterator it2 = s.this.r.iterator();
                        while (it2.hasNext()) {
                            ((ba) it2.next()).d(this.b);
                        }
                        s.this.h(d.INIT_FAILED);
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No server response", 1);
                    }
                    s.r(s.this);
                    return;
                }
                s.this.m.removeCallbacks(this);
                if (!s.this.u.m()) {
                    if (s.this.l) {
                        return;
                    }
                    s.this.h(d.INIT_FAILED);
                    s.this.l = true;
                    Iterator it3 = s.this.r.iterator();
                    while (it3.hasNext()) {
                        ((ba) it3.next()).d(IronSourceConstants.FALSE_AVAILABILITY_REASON_SERVER_RESPONSE_IS_NOT_VALID);
                    }
                    return;
                }
                s.this.h(d.INITIATED);
                s sVar = s.this;
                sVar.a(sVar.u);
                s.this.b(pVarO.g());
                ApplicationGeneralSettings applicationGeneralSettingsE = s.this.u.b().getApplicationConfigurations().e();
                if (applicationGeneralSettingsE != null) {
                    l3 l3Var = l3.a;
                    l3Var.c(applicationGeneralSettingsE.getShouldUseAppSet());
                    l3Var.a(applicationGeneralSettingsE.getShouldReuseAdvId());
                    l3Var.a(applicationGeneralSettingsE.getUserAgentExpirationThresholdInHours());
                    IronSourceThreadManager.INSTANCE.setUseSharedExecutorService(applicationGeneralSettingsE.getShouldUseSharedThreadPool());
                }
                s.this.a(ContextProvider.getInstance().getApplicationContext(), s.this.u);
                pVarO.a(new Date().getTime() - s.this.y);
                s.this.b = new pb();
                s.this.b.a();
                if (s.this.u.b().getApplicationConfigurations().f() && ContextProvider.getInstance().getApplicationContext() != null) {
                    IntegrationHelper.validateIntegration(ContextProvider.getInstance().getApplicationContext());
                }
                List<IronSource.AD_UNIT> listE = s.this.u.e();
                Iterator it4 = s.this.r.iterator();
                while (it4.hasNext()) {
                    ((ba) it4.next()).a(listE, s.this.s(), s.this.u.b());
                }
                if (s.this.w != null && (nbVarI = s.this.u.b().getApplicationConfigurations().i()) != null && !TextUtils.isEmpty(nbVarI.c())) {
                    s.this.w.onSegmentReceived(nbVarI.c());
                }
                l0 l0VarC = s.this.u.b().getApplicationConfigurations().c();
                if (l0VarC.f()) {
                    u2.d().a(ContextProvider.getInstance().getApplicationContext(), l0VarC.b(), l0VarC.d(), l0VarC.c(), l0VarC.e(), IronSourceUtils.getSessionId(), l0VarC.a(), l0VarC.g());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    class b implements Runnable {

        class a extends CountDownTimer {
            a(long j, long j2) {
                super(j, j2);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (s.this.l) {
                    return;
                }
                s.this.l = true;
                Iterator it = s.this.r.iterator();
                while (it.hasNext()) {
                    ((ba) it.next()).d(IronSourceConstants.FALSE_AVAILABILITY_REASON_NO_INTERNET);
                }
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No internet connection", 1);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (j <= 45000) {
                    s.this.x = true;
                    Iterator it = s.this.r.iterator();
                    while (it.hasNext()) {
                        ((ba) it.next()).a();
                    }
                }
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.q = new a(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, 15000L).start();
        }
    }

    static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.values().length];
            a = iArr;
            try {
                iArr[d.INIT_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[d.NOT_INIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[d.INITIATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    enum d {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_FAILED,
        INITIATED
    }

    public static class e {
        public static int a = 0;
        public static int b = 1;
        public static int c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static int f6386d = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static int f6387e = 4;
    }

    abstract class f implements Runnable {
        String b;
        boolean a = true;
        protected p.c c = new a();

        class a implements p.c {
            a() {
            }

            @Override // com.ironsource.mediationsdk.p.c
            public void a(String str) {
                f fVar = f.this;
                fVar.a = false;
                fVar.b = str;
            }
        }

        f() {
        }
    }

    private s() {
    }

    static /* synthetic */ int a(s sVar, int i) {
        int i2 = sVar.f6381f * i;
        sVar.f6381f = i2;
        return i2;
    }

    private static int b(c.a aVar, d dVar) {
        if (aVar == c.a.CACHE) {
            return e.c;
        }
        int i = c.a[dVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? e.a : e.b : e.f6387e : e.f6386d;
    }

    public static synchronized s c() {
        if (a == null) {
            a = new s();
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h(d dVar) {
        IronLog.INTERNAL.verbose("old status: " + this.v + ", new status: " + dVar + ")");
        this.v = dVar;
    }

    static /* synthetic */ int r(s sVar) {
        int i = sVar.f6382g;
        sVar.f6382g = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s() {
        return this.k;
    }

    public synchronized d a() {
        return this.v;
    }

    public void a(Context context, com.json.mediationsdk.utils.c cVar) {
        this.z.h(cVar.d().d());
        this.z.b(cVar.d().c());
        j0 applicationConfigurations = cVar.b().getApplicationConfigurations();
        this.z.a(applicationConfigurations.a());
        this.z.c(applicationConfigurations.b().b());
        this.z.b(applicationConfigurations.j().b());
        this.z.a(Boolean.valueOf(IronSourceUtils.getFirstSession(context)));
        this.z.b(cVar.b().getApplicationConfigurations().e().getCmpId());
    }

    public synchronized void a(Context context, String str, String str2, IronSource.AD_UNIT... ad_unitArr) {
        try {
            AtomicBoolean atomicBoolean = this.o;
            if (atomicBoolean == null || !atomicBoolean.compareAndSet(true, false)) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, this.f6380e + ": Multiple calls to init are not allowed", 2);
            } else {
                h(d.INIT_IN_PROGRESS);
                this.s = str2;
                this.t = str;
                if (IronSourceUtils.isNetworkConnected(context)) {
                    this.m.post(this.A);
                } else {
                    this.n = true;
                    if (this.p == null) {
                        this.p = new NetworkStateReceiver(context, this);
                    }
                    context.registerReceiver(this.p, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new b());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(ba baVar) {
        if (baVar == null) {
            return;
        }
        this.r.add(baVar);
    }

    public void a(SegmentListener segmentListener) {
        this.w = segmentListener;
    }

    public synchronized void a(com.json.mediationsdk.utils.c cVar) {
        int iB = b(com.json.mediationsdk.utils.c.a(cVar), this.v);
        this.c = iB;
        this.z.c(iB);
    }

    @Override // com.json.s9
    public void a(boolean z) {
        if (this.n && z) {
            CountDownTimer countDownTimer = this.q;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.n = false;
            this.k = true;
            this.m.post(this.A);
        }
    }

    public int b() {
        return this.c;
    }

    public void b(ba baVar) {
        if (baVar == null || this.r.size() == 0) {
            return;
        }
        this.r.remove(baVar);
    }

    public void b(boolean z) {
        Map<String, String> mapB;
        if (z && TextUtils.isEmpty(p.o().r()) && (mapB = this.u.b().getApplicationConfigurations().d().b()) != null && !mapB.isEmpty()) {
            for (String str : mapB.keySet()) {
                if (IronSourceUtils.doesClassExist(str)) {
                    String str2 = mapB.get(str);
                    if (!TextUtils.isEmpty(str2)) {
                        str = str2;
                    }
                    p.o().h(str);
                    return;
                }
            }
        }
    }

    public synchronized boolean d() {
        return this.x;
    }

    void q() {
        h(d.INIT_FAILED);
    }
}
