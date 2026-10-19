package com.json.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.json.ApplicationGeneralSettings;
import com.json.a4;
import com.json.ba;
import com.json.bb;
import com.json.cb;
import com.json.d8;
import com.json.dc;
import com.json.e3;
import com.json.e5;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.f2;
import com.json.f3;
import com.json.g2;
import com.json.h1;
import com.json.h9;
import com.json.i7;
import com.json.k1;
import com.json.ka;
import com.json.l3;
import com.json.l4;
import com.json.l9;
import com.json.m0;
import com.json.m1;
import com.json.m2;
import com.json.m7;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adquality.AdQualityBridge;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.config.ConfigFile;
import com.json.mediationsdk.demandOnly.ISDemandOnlyBannerLayout;
import com.json.mediationsdk.demandOnly.ISDemandOnlyInterstitialListener;
import com.json.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener;
import com.json.mediationsdk.demandOnly.f;
import com.json.mediationsdk.demandOnly.h;
import com.json.mediationsdk.demandOnly.k;
import com.json.mediationsdk.events.ISErrorListener;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.logger.LogListener;
import com.json.mediationsdk.metadata.MetaData;
import com.json.mediationsdk.metadata.MetaDataUtils;
import com.json.mediationsdk.model.InterstitialPlacement;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.s;
import com.json.mediationsdk.sdk.InitializationListener;
import com.json.mediationsdk.sdk.InterstitialListener;
import com.json.mediationsdk.sdk.LevelPlayInterstitialListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener;
import com.json.mediationsdk.sdk.OfferwallListener;
import com.json.mediationsdk.sdk.RewardedVideoListener;
import com.json.mediationsdk.sdk.RewardedVideoManualListener;
import com.json.mediationsdk.sdk.SegmentListener;
import com.json.mediationsdk.server.HttpFunctions;
import com.json.mediationsdk.server.ServerURL;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceAES;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.mediationsdk.utils.b;
import com.json.mediationsdk.utils.c;
import com.json.n;
import com.json.n5;
import com.json.n9;
import com.json.o;
import com.json.o5;
import com.json.o8;
import com.json.p7;
import com.json.q7;
import com.json.t4;
import com.json.tc;
import com.json.u5;
import com.json.v3;
import com.json.va;
import com.json.w3;
import com.json.wb;
import com.json.x5;
import com.json.x9;
import com.json.y7;
import com.json.y8;
import com.json.yb;
import com.json.z7;
import com.json.za;
import com.json.zb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class p implements y7, ba, e3, e3.b, e3.c, e3.a {
    private static boolean a;
    private Set<IronSource.AD_UNIT> A;
    private boolean B;
    private IronSourceSegment C;
    private final String D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private Boolean M;
    private IronSourceBannerLayout N;
    private String O;
    private Boolean P;
    private n5 Q;
    private y R;
    private w S;
    private m7 T;
    private za U;
    private h1 V;
    private InitializationListener W;
    private AtomicBoolean X;
    private boolean Y;
    private boolean Z;
    private boolean a0;
    private final String b;
    private boolean b0;
    private final String c;
    private boolean c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e5 f6362d;
    private boolean d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e5.a f6363e;
    private int e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AbstractAdapter f6364f;
    private final ConcurrentHashMap<String, h.d> f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private v f6365g;
    private final ConcurrentHashMap<String, h.b> g0;
    private IronSourceLoggerManager h;
    private final ConcurrentHashMap<String, h.d> h0;
    private y8 i;
    private f i0;
    private com.json.mediationsdk.logger.b j;
    private k j0;
    private AtomicBoolean k;
    private com.json.mediationsdk.demandOnly.c k0;
    private final Object l;
    private l4 l0;
    private com.json.mediationsdk.utils.c m;
    private z7 m0;
    private String n;
    private tc n0;
    private String o;
    private boolean o0;
    private String p;
    private AdQualityBridge p0;
    private String q;
    ISErrorListener q0;
    private Map<String, String> r;
    u5<ISDemandOnlyInterstitialListener> r0;
    private String s;
    u5<ISDemandOnlyRewardedVideoListener> s0;
    private AtomicBoolean t;
    private boolean u;
    private List<IronSource.AD_UNIT> v;
    private String w;
    private Context x;
    private Boolean y;
    private Set<IronSource.AD_UNIT> z;

    class a implements ISErrorListener {
        a() {
        }

        @Override // com.json.mediationsdk.events.ISErrorListener
        public void onError(Throwable th) {
            IronLog.INTERNAL.error(th.getMessage());
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;
        static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[b.EnumC0360b.values().length];
            c = iArr;
            try {
                iArr[b.EnumC0360b.CAPPED_PER_DELIVERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[b.EnumC0360b.CAPPED_PER_COUNT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[b.EnumC0360b.CAPPED_PER_PACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[b.EnumC0360b.NOT_CAPPED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[s.d.values().length];
            b = iArr2;
            try {
                iArr2[s.d.INIT_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[s.d.INIT_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[IronSource.AD_UNIT.values().length];
            a = iArr3;
            try {
                iArr3[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[IronSource.AD_UNIT.OFFERWALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[IronSource.AD_UNIT.BANNER.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[IronSource.AD_UNIT.NATIVE_AD.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public interface c {
        void a(String str);
    }

    private static class d {
        static volatile p a = new p(null);
    }

    private p() {
        this.b = getClass().getName();
        this.c = "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b7.7.0";
        this.l = new Object();
        this.m = null;
        this.n = null;
        this.o = "";
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.u = false;
        this.y = null;
        this.B = true;
        this.D = "sessionDepth";
        this.P = null;
        this.o0 = false;
        this.f6362d = e9.h().c();
        this.f6363e = e9.g().a();
        X0();
        this.k = new AtomicBoolean();
        this.z = new HashSet();
        this.A = new HashSet();
        this.G = false;
        this.F = false;
        this.H = false;
        this.t = new AtomicBoolean(true);
        this.X = new AtomicBoolean(false);
        this.E = 0;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.w = IronSourceUtils.getSessionId();
        this.M = Boolean.FALSE;
        this.c0 = false;
        this.O = null;
        this.Q = null;
        this.R = null;
        this.W = null;
        this.S = null;
        this.Y = false;
        this.f0 = new ConcurrentHashMap<>();
        this.h0 = new ConcurrentHashMap<>();
        this.g0 = new ConcurrentHashMap<>();
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.e0 = 1;
        this.l0 = new l4();
        this.m0 = new z7();
        this.n0 = new tc();
        this.q0 = new a();
        this.p0 = null;
        this.r0 = new u5.a();
        this.s0 = new u5.b();
    }

    /* synthetic */ p(a aVar) {
        this();
    }

    private boolean A() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.h() == null || this.m.h().d() == null || this.m.h().d().size() <= 0) ? false : true;
    }

    private void A0(Activity activity, String str) {
        try {
            InterstitialPlacement interstitialPlacementP0 = P0(str);
            if (interstitialPlacementP0 == null) {
                interstitialPlacementP0 = M0();
            }
            if (interstitialPlacementP0 == null) {
                this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "showProgrammaticInterstitial error: empty default placement in response", 3);
                x5.a().a(new IronSourceError(1020, "showProgrammaticInterstitial error: empty default placement in response"), null);
                return;
            }
            if (activity != null) {
                C0(activity);
            } else if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
                this.h.log(IronSourceLogger.IronSourceTag.API, "Activity must be provided in showInterstitial when initializing SDK with context", 3);
                x5.a().a(new IronSourceError(510, "Activity must be provided in showInterstitial when initializing SDK with context"), null);
                return;
            }
            if (this.b0) {
                this.T.a(activity, new Placement(interstitialPlacementP0));
            } else {
                this.R.a(activity, interstitialPlacementP0.getPlacementName());
            }
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "showProgrammaticInterstitial()", e2);
        }
    }

    private void B() {
        if (this.W == null || !this.X.compareAndSet(false, true)) {
            return;
        }
        IronLog.CALLBACK.verbose("onInitializationCompleted()");
        cb.i().a(new a4(IronSourceConstants.TROUBLESHOOTING_INIT_COMPLETED, IronSourceUtils.getMediationAdditionalData(false)));
        this.W.onInitializationComplete();
    }

    private void B0() {
        IronLog.INTERNAL.verbose();
        List<NetworkSettings> listV = V(this.m.h().a());
        if (listV.size() > 0) {
            this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner started in programmatic mode", 0);
            this.S = new w(listV, new k(p(), IronSourceUtils.getUserIdForNetworks(), this.m.b().getBannerConfigurations()), o8.b().a(), this.C);
            V0();
        } else {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            W(IronSourceConstants.TROUBLESHOOTING_BN_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.BANNER, false);
        }
    }

    private void C() {
        if (a) {
            return;
        }
        a = true;
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put("status", "false");
            mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, 1);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        cb.i().a(new a4(114, mediationAdditionalData));
    }

    private void C0(Activity activity) {
        ContextProvider.getInstance().updateActivity(activity);
        IronLog.INTERNAL.verbose("activity is updated to: " + activity.hashCode());
    }

    private void D0(Activity activity, String str) {
        Placement placementS0;
        try {
            placementS0 = S0(str);
            if (placementS0 == null) {
                try {
                    placementS0 = N0();
                } catch (Exception e2) {
                    e = e2;
                    this.h.logException(IronSourceLogger.IronSourceTag.API, "showProgrammaticRewardedVideo()", e);
                }
            }
            if (placementS0 == null) {
                this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "showProgrammaticRewardedVideo error: empty default placement in response", 3);
                va.a().a(new IronSourceError(1021, "showProgrammaticRewardedVideo error: empty default placement in response"), (AdInfo) null);
                return;
            }
        } catch (Exception e3) {
            e = e3;
            placementS0 = null;
        }
        if (activity != null) {
            C0(activity);
        } else if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "Activity must be provided in showRewardedVideo when initializing SDK with context", 3);
            va.a().a(ErrorBuilder.buildInitFailedError("Activity must be provided in showRewardedVideo when initializing SDK with context", IronSourceConstants.REWARDED_VIDEO_AD_UNIT), (AdInfo) null);
            return;
        }
        za zaVar = this.U;
        if (zaVar != null && (this.Y || this.a0)) {
            zaVar.a(activity, placementS0);
            return;
        }
        n5 n5Var = this.Q;
        if (n5Var != null) {
            n5Var.a(activity, placementS0);
            return;
        }
        this.h.log(IronSourceLogger.IronSourceTag.API, "showProgrammaticRewardedVideo - show called before init completed, managers not initiated yet", 3);
        va.a().a(new IronSourceError(1023, "showProgrammaticRewardedVideo - show called before init completed, managers not initiated yet"), (AdInfo) null);
    }

    private void E() {
        ConcurrentHashMap<String, List<String>> concurrentHashMapC = o8.b().c();
        if (concurrentHashMapC.containsKey(com.json.mediationsdk.metadata.a.c)) {
            if (TextUtils.isEmpty(concurrentHashMapC.get(com.json.mediationsdk.metadata.a.c).get(0))) {
                return;
            }
            l3.a.b(!MetaDataUtils.getMetaDataBooleanValue(r0));
        }
    }

    private void E0(Context context) {
        AtomicBoolean atomicBoolean = this.k;
        if (atomicBoolean == null || !atomicBoolean.compareAndSet(false, true)) {
            return;
        }
        wb.a().a(new t4(context));
        q7.i().a(context, this.C);
        cb.i().a(context, this.C);
        ka.P.a(context, this.C);
    }

    private boolean F() {
        return this.p0 == null && this.m.b().getAdQualityConfigurations().a() && AdQualityBridge.adQualityAvailable();
    }

    private void F0() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Adunit: Interstitial is now initiated - programmatic mode", 0);
        List<NetworkSettings> listV = V(this.m.h().b());
        if (listV.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            W(IronSourceConstants.TROUBLESHOOTING_IS_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.INTERSTITIAL, false);
            return;
        }
        y yVar = new y(listV, this.m.b().getInterstitialConfigurations(), p(), IronSourceUtils.getUserIdForNetworks(), this.m.b().getInterstitialConfigurations().b(), o8.b().a(), this.C);
        this.R = yVar;
        Boolean bool = this.y;
        if (bool != null) {
            yVar.a(this.x, bool.booleanValue());
        }
        if (this.c0) {
            this.c0 = false;
            this.R.i();
        }
    }

    private void G() {
        if (this.H) {
            I();
            return;
        }
        boolean zH = this.m.b().getBannerConfigurations().d().h();
        this.d0 = zH;
        if (zH) {
            H();
        } else {
            B0();
        }
    }

    private void G0(Context context) {
        this.m0.a(context);
        this.m0.e(IronSourceUtils.getSDKVersion());
        this.m0.g(this.w);
        this.m0.f(ConfigFile.getConfigFile().getPluginType());
        this.m0.a(o5.a());
        this.m0.b(IronSourceUtils.isGooglePlayInstalled(context));
        this.m0.a(o.a());
    }

    private void H() {
        IronLog.INTERNAL.verbose();
        List<NetworkSettings> listV = V(this.m.h().a());
        if (listV.size() > 0) {
            this.V = new h1(listV, this.m.b().getBannerConfigurations(), IronSourceUtils.getUserIdForNetworks(), o8.b(), this.C, this.m.k());
            V0();
        } else {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            W(IronSourceConstants.TROUBLESHOOTING_BN_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.BANNER, false);
        }
    }

    private void H0() {
        if (this.F) {
            L();
            return;
        }
        bb bbVarG = this.m.b().getRewardedVideoConfigurations();
        this.a0 = bbVarG.k().h();
        this.e0 = M(bbVarG);
        if (this.Y || this.a0) {
            J0();
        } else {
            z0();
        }
    }

    private void I() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.m.h().a().size(); i++) {
            String str = this.m.h().a().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.m.i().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, false, 1);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            W(IronSourceConstants.TROUBLESHOOTING_BN_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.BANNER, false);
            return;
        }
        synchronized (this.g0) {
            k1 k1VarC = this.m.b().getBannerConfigurations();
            f3.a aVar = new f3.a("Mediation");
            if (k1VarC.k()) {
                aVar.a("isOneFlow", 1);
            }
            this.k0 = new com.json.mediationsdk.demandOnly.c(arrayList, k1VarC, p(), q(), new f3.b(q7.i(), aVar));
        }
        for (h.b bVar : this.g0.values()) {
            this.k0.a(bVar.getBanner(), bVar.getInstanceId());
        }
        this.g0.clear();
    }

    private void I0() {
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        boolean zIsInitResponseCached = IronSourceUtils.isInitResponseCached(applicationContext);
        long firstSessionTimestamp = IronSourceUtils.getFirstSessionTimestamp(applicationContext);
        if (zIsInitResponseCached || firstSessionTimestamp != -1) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        IronLog.INTERNAL.verbose("get first session timestamp = " + jCurrentTimeMillis);
        IronSourceUtils.saveFirstSessionTimestamp(applicationContext, jCurrentTimeMillis);
    }

    private void J0() {
        IronLog.INTERNAL.verbose();
        List<NetworkSettings> listV = V(this.m.h().d());
        if (listV.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, this.e0);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            r0(IronSourceConstants.TROUBLESHOOTING_RV_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        za zaVar = new za(listV, this.m.b().getRewardedVideoConfigurations(), IronSourceUtils.getUserIdForNetworks(), this.Y, o8.b(), this.C, this.m.k());
        this.U = zaVar;
        Boolean bool = this.y;
        if (bool != null) {
            zaVar.a(this.x, bool.booleanValue());
        }
        if (this.Z && this.Y) {
            this.Z = false;
            this.U.w();
        }
    }

    private void K() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Interstitial started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.m.h().b().size(); i++) {
            String str = this.m.h().b().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.m.i().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, false, 1);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            W(IronSourceConstants.TROUBLESHOOTING_IS_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.INTERSTITIAL, false);
            return;
        }
        synchronized (this.f0) {
            this.i0 = R(arrayList);
        }
        Iterator<h.d> it = this.f0.values().iterator();
        while (it.hasNext()) {
            this.i0.a(it.next());
        }
        this.f0.clear();
    }

    private void L() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Rewarded Video started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.m.h().d().size(); i++) {
            String str = this.m.h().d().get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.m.i().b(str));
            }
        }
        if (arrayList.isEmpty()) {
            a0(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        synchronized (this.h0) {
            this.j0 = p0(arrayList);
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            a0(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        Iterator<h.d> it = this.h0.values().iterator();
        while (it.hasNext()) {
            this.j0.a(it.next());
        }
        this.h0.clear();
    }

    private m1 L0(String str) {
        m1 m1VarA;
        k1 k1VarC = this.m.b().getBannerConfigurations();
        return k1VarC == null ? new v3() : (TextUtils.isEmpty(str) || (m1VarA = k1VarC.a(str)) == null) ? k1VarC.j() : m1VarA;
    }

    private int M(bb bbVar) {
        return !this.a0 && !this.Y && bbVar.k().e() ? 2 : 1;
    }

    private InterstitialPlacement M0() {
        p7 p7VarD = this.m.b().getInterstitialConfigurations();
        if (p7VarD != null) {
            return p7VarD.a();
        }
        return null;
    }

    private Placement N0() {
        bb bbVarG = this.m.b().getRewardedVideoConfigurations();
        if (bbVarG != null) {
            return bbVarG.a();
        }
        return null;
    }

    private b.EnumC0360b O0(String str) {
        com.json.mediationsdk.utils.c cVar = this.m;
        if (cVar == null || cVar.b() == null || this.m.b().getInterstitialConfigurations() == null) {
            return b.EnumC0360b.NOT_CAPPED;
        }
        InterstitialPlacement interstitialPlacementP0 = null;
        try {
            interstitialPlacementP0 = P0(str);
            if (interstitialPlacementP0 == null && (interstitialPlacementP0 = M0()) == null) {
                this.h.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found", 3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return interstitialPlacementP0 == null ? b.EnumC0360b.NOT_CAPPED : com.json.mediationsdk.utils.b.c(ContextProvider.getInstance().getApplicationContext(), interstitialPlacementP0);
    }

    private InterstitialPlacement P0(String str) {
        p7 p7VarD = this.m.b().getInterstitialConfigurations();
        if (p7VarD != null) {
            return p7VarD.a(str);
        }
        return null;
    }

    private f R(List<NetworkSettings> list) {
        p7 p7VarD = this.m.b().getInterstitialConfigurations();
        f3.a aVar = new f3.a("Mediation");
        if (p7VarD.k()) {
            aVar.a("isOneFlow", 1);
        }
        return new f(list, p7VarD, com.json.mediationsdk.c.b(), this.r0, p(), q(), new f3.b(q7.i(), aVar));
    }

    private b.EnumC0360b R0(String str) {
        com.json.mediationsdk.utils.c cVar = this.m;
        if (cVar == null || cVar.b() == null || this.m.b().getRewardedVideoConfigurations() == null) {
            return b.EnumC0360b.NOT_CAPPED;
        }
        Placement placementS0 = null;
        try {
            placementS0 = S0(str);
            if (placementS0 == null && (placementS0 = N0()) == null) {
                this.h.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found", 3);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return placementS0 == null ? b.EnumC0360b.NOT_CAPPED : com.json.mediationsdk.utils.b.c(ContextProvider.getInstance().getApplicationContext(), placementS0);
    }

    private IronSourceError S(s.d dVar) {
        if (!this.K) {
            return new IronSourceError(510, "ironSource SDK was not initialized");
        }
        if (!this.H) {
            return new IronSourceError(510, "ironSource SDK was not initialized using Demand Only mode");
        }
        if (dVar == s.d.INIT_FAILED) {
            return new IronSourceError(510, "ironSource initialization failed");
        }
        if (dVar == s.d.INIT_IN_PROGRESS && s.c().d()) {
            return new IronSourceError(510, "ironSource initialization in progress");
        }
        return null;
    }

    private Placement S0(String str) {
        bb bbVarG = this.m.b().getRewardedVideoConfigurations();
        if (bbVarG != null) {
            return bbVarG.a(str);
        }
        return null;
    }

    private com.json.mediationsdk.utils.c T(Context context, String str) {
        if (IronSourceUtils.isInitResponseCached(context)) {
            String cachedValueByKeyOfCachedInitResponse = IronSourceUtils.getCachedValueByKeyOfCachedInitResponse(context, "appKey");
            String cachedValueByKeyOfCachedInitResponse2 = IronSourceUtils.getCachedValueByKeyOfCachedInitResponse(context, "userId");
            String cachedValueByKeyOfCachedInitResponse3 = IronSourceUtils.getCachedValueByKeyOfCachedInitResponse(context, com.json.mediationsdk.utils.c.Y1);
            if (cachedValueByKeyOfCachedInitResponse.equals(str)) {
                com.json.mediationsdk.utils.c cVar = new com.json.mediationsdk.utils.c(context, cachedValueByKeyOfCachedInitResponse, cachedValueByKeyOfCachedInitResponse2, cachedValueByKeyOfCachedInitResponse3);
                cVar.a(c.a.CACHE);
                return cVar;
            }
        }
        return null;
    }

    private com.json.mediationsdk.utils.c U(Context context, String str, c cVar) {
        com.json.mediationsdk.utils.c cVar2 = null;
        if (!IronSourceUtils.isNetworkConnected(context)) {
            return null;
        }
        try {
            String strB = b(context);
            if (TextUtils.isEmpty(strB)) {
                strB = this.f6362d.J(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            String str2 = strB;
            IronSourceSegment ironSourceSegment = this.C;
            String stringFromURL = HttpFunctions.getStringFromURL(ServerURL.getCPVProvidersURL(context, p(), str, str2, r(), this.Y, ironSourceSegment != null ? ironSourceSegment.getSegmentData() : null, g()), cVar);
            if (stringFromURL == null) {
                IronLog.INTERNAL.warning("serverResponseString is null");
                return null;
            }
            if (IronSourceUtils.isEncryptedResponse()) {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("encrypt");
                String strOptString = new JSONObject(stringFromURL).optString(com.json.mediationsdk.utils.c.Y1, null);
                if (TextUtils.isEmpty(strOptString)) {
                    ironLog.warning("encryptedResponse is empty - return null");
                    return null;
                }
                stringFromURL = IronSourceAES.decode(w3.b().c(), strOptString);
                if (TextUtils.isEmpty(stringFromURL)) {
                    ironLog.warning("encoded response invalid - return null");
                    C();
                    return null;
                }
            }
            com.json.mediationsdk.utils.c cVar3 = new com.json.mediationsdk.utils.c(context, p(), str, stringFromURL);
            try {
                cVar3.a(c.a.SERVER);
                if (cVar3.m()) {
                    return cVar3;
                }
                IronLog.INTERNAL.warning("response invalid - return null");
                return null;
            } catch (Exception e2) {
                e = e2;
                cVar2 = cVar3;
                IronLog.INTERNAL.warning("exception = " + e);
                e.printStackTrace();
                return cVar2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    private List<NetworkSettings> V(ArrayList<String> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            String str = arrayList.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList2.add(this.m.i().b(str));
            }
        }
        return arrayList2;
    }

    private void V0() {
        if (this.M.booleanValue()) {
            IronLog.INTERNAL.verbose("load banner after init");
            this.M = Boolean.FALSE;
            a(this.N, this.O);
            this.N = null;
            this.O = null;
        }
    }

    private void W(int i, JSONObject jSONObject) {
        q7.i().a(new a4(i, jSONObject));
    }

    private void X(m0 m0Var, Context context, com.json.mediationsdk.utils.c cVar) {
        q7.i().a(m0Var.c(), context);
        q7.i().b(m0Var.d(), context);
        q7.i().b(m0Var.f());
        q7.i().a(m0Var.e());
        q7.i().c(m0Var.a());
        q7.i().c(m0Var.i(), context);
        q7.i().a(m0Var.h(), context);
        q7.i().b(m0Var.j(), context);
        q7.i().d(m0Var.g(), context);
        q7.i().a(cVar.b().getApplicationConfigurations().i());
        q7.i().a(m0Var.k());
        q7.i().d(m0Var.b());
    }

    private void X0() {
        this.h = IronSourceLoggerManager.getLogger(0);
        com.json.mediationsdk.logger.b bVar = new com.json.mediationsdk.logger.b(null, 1);
        this.j = bVar;
        this.h.addLogger(bVar);
        this.i = new y8();
        v vVar = new v();
        this.f6365g = vVar;
        vVar.setInternalOfferwallListener(this.i);
    }

    private void Z(IronSource.AD_UNIT ad_unit) {
        String str = ad_unit + " ad unit has already been initialized";
        this.h.log(IronSourceLogger.IronSourceTag.API, str, 3);
        IronSourceUtils.sendAutomationLog(str);
    }

    private boolean Z0() {
        try {
            Class<?> cls = Class.forName("com.ironsource.adqualitysdk.sdk.IronSourceAdQuality");
            IronLog.INTERNAL.verbose("AdQuality SDK exist: " + cls.getName());
            return true;
        } catch (Throwable unused) {
            IronLog.INTERNAL.verbose("No AdQuality SDK found");
            return false;
        }
    }

    private void a0(IronSource.AD_UNIT ad_unit, boolean z) {
        ConcurrentHashMap concurrentHashMap;
        int i = b.a[ad_unit.ordinal()];
        if (i == 1) {
            if (!this.F) {
                if (this.Y) {
                    if (this.Z) {
                        this.Z = false;
                        n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                        return;
                    }
                    return;
                }
                if (z || y() || this.A.contains(ad_unit)) {
                    va.a().a(false, (AdInfo) null);
                    return;
                }
                return;
            }
            Iterator<h.d> it = this.h0.values().iterator();
            while (it.hasNext()) {
                String instanceId = it.next().getInstanceId();
                this.s0.a(instanceId).onRewardedVideoAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            }
            concurrentHashMap = this.h0;
        } else if (i != 2) {
            if (i == 3) {
                if (z || x() || this.A.contains(ad_unit)) {
                    this.i.onOfferwallAvailable(false);
                    return;
                }
                return;
            }
            if (i != 4) {
                return;
            }
            if (!this.H) {
                if (this.M.booleanValue()) {
                    this.M = Boolean.FALSE;
                    n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(602, "init() had failed"));
                    this.N = null;
                    this.O = null;
                    return;
                }
                return;
            }
            for (h.b bVar : this.g0.values()) {
                ISDemandOnlyBannerLayout banner = bVar.getBanner();
                if (banner != null) {
                    banner.getListener().a(bVar.getInstanceId(), ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", "Banner"));
                }
            }
            concurrentHashMap = this.g0;
        } else {
            if (!this.G) {
                if (this.c0) {
                    this.c0 = false;
                    n.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                    return;
                }
                return;
            }
            Iterator<h.d> it2 = this.f0.values().iterator();
            while (it2.hasNext()) {
                String instanceId2 = it2.next().getInstanceId();
                this.r0.a(instanceId2).onInterstitialAdLoadFailed(instanceId2, ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", "Interstitial"));
            }
            concurrentHashMap = this.f0;
        }
        concurrentHashMap.clear();
    }

    private boolean a1(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("^[a-zA-Z0-9]*$");
    }

    private synchronized void b0(h.d dVar, ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        String instanceId = dVar.getInstanceId();
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + instanceId);
        try {
        } catch (Throwable th) {
            IronLog.API.error(th.getMessage());
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, new IronSourceError(510, th.getMessage()));
        }
        if (!this.J) {
            ironLog.error("initISDemandOnly() must be called before loadISDemandOnlyInterstitial()");
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, new IronSourceError(510, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"));
            return;
        }
        if (!this.G) {
            ironLog.error("Interstitial was initialized in mediation mode. Use loadInterstitial instead");
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, new IronSourceError(510, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"));
            return;
        }
        s.d dVarA = s.c().a();
        if (dVarA == s.d.INIT_FAILED) {
            ironLog.error("init() had failed");
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            return;
        }
        IronSourceError ironSourceErrorC = dVar.c();
        if (ironSourceErrorC != null) {
            if (ironSourceErrorC.getErrorCode() == 1060) {
                r0(IronSourceConstants.TROUBLESHOOTING_DO_CALLED_IS_LOAD_WITH_NO_ACTIVITY, IronSourceUtils.getMediationAdditionalData(true, !TextUtils.isEmpty(dVar.getAdMarkup()), 1));
            }
            ironLog.error(ironSourceErrorC.toString());
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, ironSourceErrorC);
            return;
        }
        C0(dVar.getActivity());
        if (dVarA == s.d.INIT_IN_PROGRESS) {
            if (s.c().d()) {
                ironLog.error("init() had failed");
                iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            } else {
                synchronized (this.f0) {
                    this.f0.put(dVar.getInstanceId(), dVar);
                }
                if (!TextUtils.isEmpty(dVar.getInstanceId())) {
                    W(IronSourceConstants.TROUBLESHOOTING_DO_IAB_IS_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, !TextUtils.isEmpty(dVar.getAdMarkup()), 1));
                }
            }
            return;
        }
        if (!l()) {
            ironLog.error("No interstitial configurations found");
            iSDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
            return;
        }
        synchronized (this.f0) {
            f fVar = this.i0;
            if (fVar != null) {
                fVar.a(dVar);
                return;
            }
            this.f0.put(dVar.getInstanceId(), dVar);
            if (!TextUtils.isEmpty(dVar.getAdMarkup())) {
                W(IronSourceConstants.TROUBLESHOOTING_DO_IAB_IS_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, !TextUtils.isEmpty(dVar.getAdMarkup()), 1));
            }
            return;
        }
    }

    private f2 b1(String str) {
        IronSourceError ironSourceError;
        String str2;
        f2 f2Var = new f2();
        if (str != null) {
            if (n0(str, 5, 10)) {
                str2 = a1(str) ? "length should be between 5-10 characters" : "should contain only english characters and numbers";
                return f2Var;
            }
            ironSourceError = ErrorBuilder.buildInvalidCredentialsError("appKey", str, str2);
        } else {
            ironSourceError = new IronSourceError(506, "Init Fail - appKey is missing");
        }
        f2Var.a(ironSourceError);
        return f2Var;
    }

    private boolean c1() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.b() == null || this.m.b().getBannerConfigurations() == null) ? false : true;
    }

    private boolean d1() {
        return c1() && e1();
    }

    private void e0(com.json.mediationsdk.utils.c cVar) {
        this.j.setDebugLevel(cVar.b().getApplicationConfigurations().g().b());
        this.h.setLoggerDebugLevel(com.json.mediationsdk.logger.a.c, cVar.b().getApplicationConfigurations().g().a());
    }

    private boolean e1() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.h() == null || this.m.h().a() == null || this.m.h().a().size() <= 0) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void f0(com.json.mediationsdk.utils.c r9, android.content.Context r10) {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.p.f0(com.ironsource.mediationsdk.utils.c, android.content.Context):void");
    }

    private void g0(ApplicationGeneralSettings applicationGeneralSettings) {
        l3 l3Var = l3.a;
        l3Var.c(applicationGeneralSettings.getShouldUseAppSet());
        l3Var.a(applicationGeneralSettings.getShouldReuseAdvId());
        l3Var.a(applicationGeneralSettings.getUserAgentExpirationThresholdInHours());
    }

    private void h0(String str, f2 f2Var) {
        if (n0(str, 1, 128)) {
            return;
        }
        f2Var.a(ErrorBuilder.buildInvalidKeyValueError(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, IronSourceConstants.SUPERSONIC_CONFIG_NAME, "dynamicUserId is invalid, should be between 1-128 chars in length."));
    }

    private void i0(JSONObject jSONObject, Object[][] objArr) {
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    jSONObject.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IronSourceObject addToDictionary: " + Log.getStackTraceString(e2), 3);
            }
        }
    }

    private boolean j() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.b() == null || this.m.b().getInterstitialConfigurations() == null) ? false : true;
    }

    private void j0(boolean z, String str) {
        if (z) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(this.F, true, this.e0);
            if (str != null) {
                i0(mediationAdditionalData, new Object[][]{new Object[]{"placement", str}});
            }
            r0(IronSourceConstants.RV_API_IS_CAPPED_TRUE, mediationAdditionalData);
        }
    }

    private void k0(boolean z, boolean z2, int i, JSONObject jSONObject) {
        StringBuilder sb;
        String str;
        try {
            sb = new StringBuilder();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!z2) {
            if (!z) {
                sb.append(",");
                str = IronSourceConstants.EVENTS_INIT_CONTEXT_FLOW;
            }
            sb.append(String.format(",cachedUserAgent=%s", Boolean.valueOf(this.f6362d.q())));
            jSONObject.put(IronSourceConstants.EVENTS_EXT1, sb.toString());
            jSONObject.put("sessionDepth", i);
            cb.i().a(new a4(14, jSONObject));
        }
        Object[] objArr = new Object[1];
        objArr[0] = Boolean.valueOf(ContextProvider.getInstance().getCurrentActiveActivity() != null);
        str = String.format(",Activity=%s", objArr);
        sb.append(str);
        sb.append(String.format(",cachedUserAgent=%s", Boolean.valueOf(this.f6362d.q())));
        jSONObject.put(IronSourceConstants.EVENTS_EXT1, sb.toString());
        jSONObject.put("sessionDepth", i);
        cb.i().a(new a4(14, jSONObject));
    }

    private boolean l() {
        return j() && m();
    }

    private synchronized void l0(boolean z, boolean z2, IronSource.AD_UNIT... ad_unitArr) {
        JSONObject mediationAdditionalData;
        int i = 0;
        for (IronSource.AD_UNIT ad_unit : ad_unitArr) {
            if (ad_unit.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.J = true;
            } else if (ad_unit.equals(IronSource.AD_UNIT.BANNER)) {
                this.K = true;
            } else if (ad_unit.equals(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.I = true;
            } else if (ad_unit.equals(IronSource.AD_UNIT.NATIVE_AD)) {
                this.L = true;
            }
        }
        if (s.c().a() == s.d.INIT_FAILED) {
            try {
                if (this.i != null) {
                    int length = ad_unitArr.length;
                    while (i < length) {
                        IronSource.AD_UNIT ad_unit2 = ad_unitArr[i];
                        if (!this.z.contains(ad_unit2)) {
                            a0(ad_unit2, true);
                        }
                        i++;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.u) {
            s.c().b(z2);
            if (this.v == null) {
                return;
            }
            mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(z2);
            boolean z3 = false;
            for (IronSource.AD_UNIT ad_unit3 : ad_unitArr) {
                if (this.z.contains(ad_unit3)) {
                    Z(ad_unit3);
                } else {
                    this.z.add(ad_unit3);
                    this.A.add(ad_unit3);
                    try {
                        mediationAdditionalData.put(ad_unit3.toString(), true);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    List<IronSource.AD_UNIT> list = this.v;
                    if (list == null || !list.contains(ad_unit3)) {
                        a0(ad_unit3, false);
                    } else {
                        t0(ad_unit3);
                    }
                    z3 = true;
                }
            }
            if (z3) {
                int i2 = this.E + 1;
                this.E = i2;
                k0(z, z2, i2, mediationAdditionalData);
            }
        } else {
            mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(z2);
            int length2 = ad_unitArr.length;
            boolean z4 = false;
            while (i < length2) {
                IronSource.AD_UNIT ad_unit4 = ad_unitArr[i];
                if (this.z.contains(ad_unit4)) {
                    this.h.log(IronSourceLogger.IronSourceTag.API, ad_unit4 + " ad unit has started initializing.", 3);
                } else {
                    this.z.add(ad_unit4);
                    this.A.add(ad_unit4);
                    try {
                        mediationAdditionalData.put(ad_unit4.toString(), true);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    z4 = true;
                }
                i++;
            }
            if (z4) {
                int i22 = this.E + 1;
                this.E = i22;
                k0(z, z2, i22, mediationAdditionalData);
            }
        }
    }

    private boolean m() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.h() == null || this.m.h().b() == null || this.m.h().b().size() <= 0) ? false : true;
    }

    private boolean m0(h.b bVar) {
        if (s.c().a() != s.d.INIT_IN_PROGRESS) {
            return false;
        }
        synchronized (this.g0) {
            this.g0.put(bVar.getInstanceId(), bVar);
        }
        return true;
    }

    private boolean n0(String str, int i, int i2) {
        return str != null && str.length() >= i && str.length() <= i2;
    }

    public static p o() {
        return d.a;
    }

    private void o0() {
        if (this.G) {
            K();
            return;
        }
        boolean zH = this.m.b().getInterstitialConfigurations().g().h();
        this.b0 = zH;
        if (zH) {
            x0();
        } else {
            F0();
        }
    }

    private k p0(List<NetworkSettings> list) {
        bb bbVarG = this.m.b().getRewardedVideoConfigurations();
        f3.a aVar = new f3.a("Mediation");
        if (bbVarG.d()) {
            aVar.a("isOneFlow", 1);
        }
        return new k(list, bbVarG, com.json.mediationsdk.c.b(), this.s0, p(), q(), new f3.b(cb.i(), aVar));
    }

    private void r0(int i, JSONObject jSONObject) {
        cb.i().a(new a4(i, jSONObject));
    }

    private void s0(m0 m0Var, Context context, com.json.mediationsdk.utils.c cVar) {
        cb.i().a(m0Var.c(), context);
        cb.i().b(m0Var.d(), context);
        cb.i().b(m0Var.f());
        cb.i().a(m0Var.e());
        cb.i().c(m0Var.a());
        cb.i().c(m0Var.i(), context);
        cb.i().a(m0Var.h(), context);
        cb.i().b(m0Var.j(), context);
        cb.i().d(m0Var.g(), context);
        cb.i().a(cVar.b().getApplicationConfigurations().i());
        cb.i().a(m0Var.k());
        cb.i().d(m0Var.b());
    }

    private void t0(IronSource.AD_UNIT ad_unit) {
        int i = b.a[ad_unit.ordinal()];
        if (i == 1) {
            H0();
            return;
        }
        if (i == 2) {
            o0();
        } else if (i == 3) {
            this.f6365g.a(p(), q());
        } else {
            if (i != 4) {
                return;
            }
            G();
        }
    }

    private boolean u() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.b() == null || this.m.b().getNativeAdConfigurations() == null) ? false : true;
    }

    private void u0(com.json.mediationsdk.utils.c cVar, Context context) {
        e0(cVar);
        f0(cVar, context);
    }

    private boolean v() {
        return u() && w();
    }

    private boolean v0(h.b bVar) {
        synchronized (this.g0) {
            if (this.k0 != null) {
                return false;
            }
            this.g0.put(bVar.getInstanceId(), bVar);
            return true;
        }
    }

    private boolean w() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.h() == null || this.m.h().c() == null || this.m.h().c().isEmpty()) ? false : true;
    }

    private boolean w0(com.json.mediationsdk.utils.c cVar) {
        return cVar != null && cVar.l();
    }

    private boolean x() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.b() == null || this.m.b().getOfferwallConfigurations() == null) ? false : true;
    }

    private void x0() {
        IronLog.INTERNAL.verbose();
        List<NetworkSettings> listV = V(this.m.h().b());
        if (listV.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            W(IronSourceConstants.TROUBLESHOOTING_IS_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.INTERSTITIAL, false);
            return;
        }
        m7 m7Var = new m7(listV, this.m.b().getInterstitialConfigurations(), IronSourceUtils.getUserIdForNetworks(), o8.b(), this.C, this.m.k());
        this.T = m7Var;
        Boolean bool = this.y;
        if (bool != null) {
            m7Var.a(this.x, bool.booleanValue());
        }
        if (this.c0) {
            this.c0 = false;
            this.T.w();
        }
    }

    private boolean y() {
        com.json.mediationsdk.utils.c cVar = this.m;
        return (cVar == null || cVar.b() == null || this.m.b().getRewardedVideoConfigurations() == null) ? false : true;
    }

    private com.json.mediationsdk.utils.c y0(Context context) {
        com.json.mediationsdk.utils.c cVar = this.m;
        return cVar != null ? cVar : i7.b(context);
    }

    private boolean z() {
        return y() && A();
    }

    private void z0() {
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Rewarded Video started in programmatic mode", 0);
        List<NetworkSettings> listV = V(this.m.h().d());
        if (listV.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, this.e0);
            i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            r0(IronSourceConstants.TROUBLESHOOTING_RV_INIT_FAILED, mediationAdditionalData);
            a0(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        q qVar = new q(listV, this.m.b().getRewardedVideoConfigurations(), p(), IronSourceUtils.getUserIdForNetworks(), o8.b().a(), this.C);
        this.Q = qVar;
        Boolean bool = this.y;
        if (bool != null) {
            qVar.a(this.x, bool.booleanValue());
        }
    }

    public boolean D() {
        boolean z;
        boolean z2;
        try {
            if (this.G) {
                this.h.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead", 3);
                return false;
            }
            if (this.b0) {
                m7 m7Var = this.T;
                z2 = m7Var != null && m7Var.q();
            } else {
                y yVar = this.R;
                if (yVar == null || !yVar.h()) {
                }
            }
            try {
                q7.i().a(new a4(z2 ? IronSourceConstants.IS_CHECK_READY_TRUE : IronSourceConstants.IS_CHECK_READY_FALSE, IronSourceUtils.getMediationAdditionalData(false, true, 1)));
                this.h.log(IronSourceLogger.IronSourceTag.API, "isInterstitialReady():" + z2, 1);
                return z2;
            } catch (Throwable th) {
                z = z2;
                th = th;
                IronSourceLoggerManager ironSourceLoggerManager = this.h;
                IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
                ironSourceLoggerManager.log(ironSourceTag, "isInterstitialReady():" + z, 1);
                this.h.logException(ironSourceTag, "isInterstitialReady()", th);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }

    public boolean J() {
        boolean z;
        boolean z2;
        try {
            if (this.F) {
                this.h.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead", 3);
                return false;
            }
            if (this.Y || this.a0) {
                za zaVar = this.U;
                z2 = zaVar != null && zaVar.q();
            } else {
                n5 n5Var = this.Q;
                if (n5Var != null && n5Var.d()) {
                }
            }
            try {
                JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
                i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(this.e0)}});
                cb.i().a(new a4(z2 ? IronSourceConstants.RV_API_HAS_AVAILABILITY_TRUE : IronSourceConstants.RV_API_HAS_AVAILABILITY_FALSE, mediationAdditionalData));
                this.h.log(IronSourceLogger.IronSourceTag.API, "isRewardedVideoAvailable():" + z2, 1);
                return z2;
            } catch (Throwable th) {
                z = z2;
                th = th;
                IronSourceLoggerManager ironSourceLoggerManager = this.h;
                IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
                ironSourceLoggerManager.log(ironSourceTag, "isRewardedVideoAvailable():" + z, 1);
                this.h.logException(ironSourceTag, "isRewardedVideoAvailable()", th);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }

    Boolean K0() {
        return this.P;
    }

    public void N() {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "loadInterstitial()", 1);
        try {
            if (this.G) {
                this.h.log(ironSourceTag, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead", 3);
                n.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead", "Interstitial"));
                return;
            }
            if (!this.J) {
                this.h.log(ironSourceTag, "init() must be called before loadInterstitial()", 3);
                n.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() must be called before loadInterstitial()", "Interstitial"));
                return;
            }
            s.d dVarA = s.c().a();
            if (dVarA == s.d.INIT_FAILED) {
                this.h.log(ironSourceTag, "init() had failed", 3);
                n.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                return;
            }
            if (dVarA == s.d.INIT_IN_PROGRESS) {
                if (!s.c().d()) {
                    this.c0 = true;
                    return;
                } else {
                    this.h.log(ironSourceTag, "init() had failed", 3);
                    n.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                    return;
                }
            }
            if (!l()) {
                this.h.log(ironSourceTag, "No interstitial configurations found", 3);
                n.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
                return;
            }
            if (this.b0) {
                m7 m7Var = this.T;
                if (m7Var != null) {
                    m7Var.w();
                    return;
                }
            } else {
                y yVar = this.R;
                if (yVar != null) {
                    yVar.i();
                    return;
                }
            }
            this.c0 = true;
        } catch (Throwable th) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "loadInterstitial()", th);
            n.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(510, th.getMessage()));
        }
    }

    public void O() {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "loadRewardedVideo()", 1);
        try {
            if (this.F) {
                this.h.log(ironSourceTag, "Rewarded Video was initialized in demand only mode. Use loadISDemandOnlyRewardedVideo instead", 3);
                n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("Rewarded Video was initialized in demand only mode. Use loadISDemandOnlyRewardedVideo instead", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            if (!this.Y && !this.o0) {
                this.h.log(ironSourceTag, "Rewarded Video is not initiated with manual load", 3);
                return;
            }
            if (!this.I) {
                this.h.log(ironSourceTag, "init() must be called before loadRewardedVideo()", 3);
                n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() must be called before loadRewardedVideo()", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            s.d dVarA = s.c().a();
            if (dVarA == s.d.INIT_FAILED) {
                this.h.log(ironSourceTag, "init() had failed", 3);
                n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            if (dVarA == s.d.INIT_IN_PROGRESS) {
                if (!s.c().d()) {
                    this.Z = true;
                    return;
                } else {
                    this.h.log(ironSourceTag, "init() had failed", 3);
                    n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                    return;
                }
            }
            if (!z()) {
                this.h.log(ironSourceTag, "No rewarded video configurations found", 3);
                n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("the server response does not contain rewarded video data", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            za zaVar = this.U;
            if (zaVar == null) {
                this.Z = true;
            } else {
                zaVar.w();
            }
        } catch (Throwable th) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "loadRewardedVideo()", th);
            n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, new IronSourceError(510, th.getMessage()));
        }
    }

    public void P() {
        m7 m7Var = this.T;
        if (m7Var != null) {
            m7Var.a((dc) null);
        }
        za zaVar = this.U;
        if (zaVar != null) {
            zaVar.a((dc) null);
        }
        h1 h1Var = this.V;
        if (h1Var != null) {
            h1Var.a((dc) null);
        }
        this.o0 = false;
    }

    public void Q() {
        IronLog.API.info("removing all impression data listeners");
        o8.b().d();
        n5 n5Var = this.Q;
        if (n5Var != null) {
            n5Var.c();
        }
        y yVar = this.R;
        if (yVar != null) {
            yVar.c();
        }
        w wVar = this.S;
        if (wVar != null) {
            wVar.c();
        }
    }

    synchronized AbstractAdapter Q0(String str) {
        try {
            AbstractAdapter abstractAdapter = this.f6364f;
            if (abstractAdapter != null && abstractAdapter.getProviderName().equals(str)) {
                return this.f6364f;
            }
        } catch (Exception e2) {
            this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "getOfferwallAdapter exception: " + e2, 1);
        }
        return null;
    }

    boolean T0(String str) {
        if (!c1()) {
            return false;
        }
        m1 m1VarA = null;
        try {
            m1VarA = this.m.b().getBannerConfigurations().a(str);
            if (m1VarA == null && (m1VarA = this.m.b().getBannerConfigurations().j()) == null) {
                this.h.log(IronSourceLogger.IronSourceTag.API, "Banner default placement was not found", 3);
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (m1VarA == null) {
            return false;
        }
        return com.json.mediationsdk.utils.b.d(ContextProvider.getInstance().getApplicationContext(), m1VarA.getPlacementName());
    }

    boolean U0(String str) {
        if (this.G) {
            return false;
        }
        boolean z = O0(str) != b.EnumC0360b.NOT_CAPPED;
        if (z) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(this.G, true, 1);
            try {
                mediationAdditionalData.put("placement", str);
                mediationAdditionalData.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
            } catch (Exception unused) {
            }
            q7.i().a(new a4(IronSourceConstants.IS_CHECK_CAPPED_TRUE, mediationAdditionalData));
        }
        return z;
    }

    boolean W0(String str) {
        int i;
        b.EnumC0360b enumC0360bR0 = R0(str);
        boolean z = true;
        if (enumC0360bR0 == null || ((i = b.c[enumC0360bR0.ordinal()]) != 1 && i != 2 && i != 3)) {
            z = false;
        }
        j0(z, str);
        return z;
    }

    synchronized void Y(AbstractAdapter abstractAdapter) {
        this.f6364f = abstractAdapter;
    }

    void Y0(String str) {
        IronLog.API.verbose("userId = " + str);
        this.o = str;
        cb.i().a(new a4(52, IronSourceUtils.getJsonForUserId(false)));
        AdQualityBridge adQualityBridge = this.p0;
        if (adQualityBridge != null) {
            adQualityBridge.changeUserId(str);
        }
    }

    @Override // com.ironsource.e3.a
    public ISDemandOnlyBannerLayout a(Activity activity, ISBannerSize iSBannerSize) {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "createBannerForDemandOnly()", 1);
        if (activity == null) {
            this.h.log(ironSourceTag, "createBannerForDemandOnly() : Activity cannot be null", 3);
            return null;
        }
        ContextProvider.getInstance().updateActivity(activity);
        return new ISDemandOnlyBannerLayout(activity, iSBannerSize);
    }

    @Override // com.json.e3
    public String a(Context context) {
        String strCompressAndEncrypt;
        r0(IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_CALLED, null);
        if (context == null) {
            IronLog.API.error("bidding data cannot be retrieved, context required");
            return null;
        }
        s.d dVarA = s.c().a();
        s.d dVar = s.d.NOT_INIT;
        if (dVarA == dVar) {
            IronLog.API.error("bidding data cannot be retrieved, SDK not initialized");
            r0(IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_RETURNED_NULL, null);
            return null;
        }
        if (dVarA == s.d.INIT_FAILED) {
            IronLog.API.error("bidding data cannot be retrieved, SDK failed to initialize");
            r0(IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_RETURNED_NULL, null);
            return null;
        }
        try {
            com.json.mediationsdk.utils.c cVarY0 = y0(context);
            if (dVarA == dVar) {
                G0(context);
            }
            if (dVarA != s.d.INITIATED) {
                s.c().a(cVarY0);
                if (cVarY0 != null) {
                    s.c().a(context, cVarY0);
                }
            }
            com.json.mediationsdk.utils.d dVarB = com.json.mediationsdk.utils.c.b(cVarY0);
            JSONObject jSONObjectA = this.n0.a(context, dVarB);
            com.json.mediationsdk.d.c().a(jSONObjectA, true);
            strCompressAndEncrypt = dVarB.e() ? IronSourceAES.compressAndEncrypt(jSONObjectA.toString()) : IronSourceAES.encrypt(jSONObjectA.toString());
        } catch (Throwable th) {
            r0(IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_ENRICH_TOKEN_ERROR, null);
            IronLog.API.error("got error during token creation: " + th.getMessage());
            strCompressAndEncrypt = null;
        }
        if (strCompressAndEncrypt == null) {
            r0(IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_RETURNED_NULL, null);
        }
        return strCompressAndEncrypt;
    }

    @Override // com.json.ba
    public void a() {
        if (this.M.booleanValue()) {
            this.M = Boolean.FALSE;
            n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(603, "init() had failed"));
            this.N = null;
            this.O = null;
        }
        if (this.c0) {
            this.c0 = false;
            n.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
        }
        if (this.Z) {
            this.Z = false;
            n.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
        synchronized (this.f0) {
            Iterator<h.d> it = this.f0.values().iterator();
            while (it.hasNext()) {
                String instanceId = it.next().getInstanceId();
                this.r0.a(instanceId).onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            }
            this.f0.clear();
        }
        synchronized (this.h0) {
            Iterator<h.d> it2 = this.h0.values().iterator();
            while (it2.hasNext()) {
                String instanceId2 = it2.next().getInstanceId();
                this.s0.a(instanceId2).onRewardedVideoAdLoadFailed(instanceId2, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            }
            this.h0.clear();
        }
        synchronized (this.g0) {
            for (h.b bVar : this.g0.values()) {
                ISDemandOnlyBannerLayout banner = bVar.getBanner();
                if (banner != null) {
                    banner.getListener().a(bVar.getInstanceId(), ErrorBuilder.buildInitFailedError("init() had failed", "Banner"));
                }
            }
            this.g0.clear();
        }
    }

    public void a(long j) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(g());
        try {
            mediationAdditionalData.put("duration", j);
            mediationAdditionalData.put("sessionDepth", this.E);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        cb.i().a(new a4(IronSourceConstants.INIT_COMPLETE, mediationAdditionalData));
    }

    public void a(Activity activity) {
        try {
            this.h.log(IronSourceLogger.IronSourceTag.API, "onPause()", 1);
            ContextProvider.getInstance().onPause(activity);
        } catch (Throwable th) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "onPause()", th);
        }
    }

    @Override // com.ironsource.e3.a
    public synchronized void a(Activity activity, ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, String str) {
        h.b bVarA = new h.c().b(str).a(activity).a(iSDemandOnlyBannerLayout).a(IronSource.AD_UNIT.BANNER).a();
        IronSourceError ironSourceErrorC = bVarA.c();
        if (ironSourceErrorC != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorC.getErrorMessage(), 3);
            if (iSDemandOnlyBannerLayout != null) {
                iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorC);
            }
            return;
        }
        IronSourceError ironSourceErrorS = S(s.c().a());
        if (ironSourceErrorS != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorS.getErrorMessage(), 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorS);
            return;
        }
        ContextProvider.getInstance().updateActivity(activity);
        if (m0(bVarA)) {
            return;
        }
        if (!d1()) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "No banner configurations found", 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ErrorBuilder.buildInitFailedError("the server response does not contain banner data", "Banner"));
        } else {
            if (v0(bVarA)) {
                return;
            }
            this.k0.a(iSDemandOnlyBannerLayout, str);
        }
    }

    @Override // com.ironsource.e3.a
    public synchronized void a(Activity activity, ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, String str, String str2) {
        h.b bVarA = new h.c().b(str).a(activity).a(true).a(str2).a(iSDemandOnlyBannerLayout).a(IronSource.AD_UNIT.BANNER).a();
        IronSourceError ironSourceErrorC = bVarA.c();
        if (ironSourceErrorC != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorC.getErrorMessage(), 3);
            if (iSDemandOnlyBannerLayout != null) {
                iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorC);
            }
            return;
        }
        IronSourceError ironSourceErrorS = S(s.c().a());
        if (ironSourceErrorS != null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, ironSourceErrorS.getErrorMessage(), 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ironSourceErrorS);
            return;
        }
        ContextProvider.getInstance().updateActivity(activity);
        if (m0(bVarA)) {
            return;
        }
        if (!d1()) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "No banner configurations found", 3);
            iSDemandOnlyBannerLayout.getListener().a(str, ErrorBuilder.buildInitFailedError("the server response does not contain banner data", "Banner"));
        } else {
            if (v0(bVarA)) {
                return;
            }
            this.k0.a(iSDemandOnlyBannerLayout, str, str2);
        }
    }

    @Override // com.ironsource.e3.b
    public synchronized void a(Activity activity, String str) {
        b0(new h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.AD_UNIT.INTERSTITIAL).b(), this.r0.a(str));
    }

    @Override // com.ironsource.e3.c
    public synchronized void a(Activity activity, String str, String str2) {
        c0(new h.c().b(str).a(str2).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(true).a(IronSource.AD_UNIT.REWARDED_VIDEO).b(), this.s0.a(str));
    }

    public synchronized void a(Context context, String str, boolean z, InitializationListener initializationListener, IronSource.AD_UNIT... ad_unitArr) {
        IronLog.INTERNAL.verbose();
        if (!d8.a((Object) context, "Init Failed - provided context is null")) {
            d("Provided context is null");
            return;
        }
        boolean z2 = context instanceof Activity;
        if (z2) {
            C0((Activity) context);
        }
        if (initializationListener != null) {
            this.W = initializationListener;
        }
        AtomicBoolean atomicBoolean = this.t;
        if (atomicBoolean != null && atomicBoolean.compareAndSet(true, false)) {
            if (ad_unitArr == null || ad_unitArr.length == 0) {
                for (IronSource.AD_UNIT ad_unit : IronSource.AD_UNIT.values()) {
                    this.z.add(ad_unit);
                }
                this.I = true;
                this.J = true;
                this.K = true;
                this.L = true;
            } else {
                for (IronSource.AD_UNIT ad_unit2 : ad_unitArr) {
                    this.z.add(ad_unit2);
                    this.A.add(ad_unit2);
                    if (ad_unit2.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                        this.J = true;
                    }
                    if (ad_unit2.equals(IronSource.AD_UNIT.BANNER)) {
                        this.K = true;
                    }
                    if (ad_unit2.equals(IronSource.AD_UNIT.NATIVE_AD)) {
                        this.L = true;
                    }
                    if (ad_unit2.equals(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                        this.I = true;
                    }
                }
            }
            IronLog.API.info("init(appKey:" + str + ")");
            f2 f2VarB1 = b1(str);
            if (f2VarB1.b()) {
                this.n = str;
            }
            com.json.mediationsdk.utils.c cVarT = T(context, this.n);
            if (cVarT != null) {
                g0(cVarT.b().getApplicationConfigurations().e());
            }
            ContextProvider.getInstance().updateAppContext(context.getApplicationContext());
            this.f6363e.a(context.getApplicationContext(), TimeUnit.HOURS.toMillis(l3.a.d()));
            this.m0.e(IronSourceUtils.getSDKVersion());
            this.m0.a(o5.a());
            this.m0.b(IronSourceUtils.isGooglePlayInstalled(context));
            this.m0.a(o.a());
            I0();
            E();
            E0(context);
            if (this.n == null) {
                s.c().q();
                if (this.z.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                    va.a().a(false, (AdInfo) null);
                }
                if (this.z.contains(IronSource.AD_UNIT.OFFERWALL)) {
                    this.i.a(false, f2VarB1.a());
                }
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, f2VarB1.a().toString(), 1);
                return;
            }
            this.m0.a(context);
            this.m0.b(this.n);
            this.m0.g(this.w);
            this.m0.f(ConfigFile.getConfigFile().getPluginType());
            if (this.B) {
                JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(z);
                if (ad_unitArr != null) {
                    for (IronSource.AD_UNIT ad_unit3 : ad_unitArr) {
                        try {
                            mediationAdditionalData.put(ad_unit3.toString(), true);
                        } catch (Exception unused) {
                        }
                    }
                }
                int i = this.E + 1;
                this.E = i;
                k0(z2, z, i, mediationAdditionalData);
                this.B = false;
            }
            s.c().a(this);
            s.c().a(this.l0);
            s.c().a(context, str, this.o, ad_unitArr);
        } else if (ad_unitArr != null) {
            l0(z2, z, ad_unitArr);
            if (s.c().a() == s.d.INITIATED && !z) {
                B();
            }
        } else {
            this.h.log(IronSourceLogger.IronSourceTag.API, "Multiple calls to init without ad units are not allowed", 3);
        }
    }

    @Override // com.json.e3
    public synchronized void a(Context context, String str, IronSource.AD_UNIT... ad_unitArr) {
        ArrayList arrayList = new ArrayList();
        if (ad_unitArr == null || ad_unitArr.length == 0) {
            if (this.I) {
                Z(IronSource.AD_UNIT.REWARDED_VIDEO);
            } else {
                this.F = true;
                arrayList.add(IronSource.AD_UNIT.REWARDED_VIDEO);
            }
            if (this.J) {
                Z(IronSource.AD_UNIT.INTERSTITIAL);
            } else {
                this.G = true;
                arrayList.add(IronSource.AD_UNIT.INTERSTITIAL);
            }
            if (this.K) {
                Z(IronSource.AD_UNIT.BANNER);
            } else {
                this.H = true;
                arrayList.add(IronSource.AD_UNIT.BANNER);
            }
        } else {
            for (IronSource.AD_UNIT ad_unit : ad_unitArr) {
                if (ad_unit.equals(IronSource.AD_UNIT.OFFERWALL)) {
                    this.h.log(IronSourceLogger.IronSourceTag.API, ad_unit + " ad unit cannot be initialized in demand only mode", 3);
                } else {
                    if (ad_unit.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                        if (this.J) {
                            Z(ad_unit);
                        } else {
                            this.G = true;
                            if (!arrayList.contains(ad_unit)) {
                                arrayList.add(ad_unit);
                            }
                        }
                    }
                    if (ad_unit.equals(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                        if (this.I) {
                            Z(ad_unit);
                        } else {
                            this.F = true;
                            if (!arrayList.contains(ad_unit)) {
                                arrayList.add(ad_unit);
                            }
                        }
                    }
                    if (ad_unit.equals(IronSource.AD_UNIT.BANNER)) {
                        if (this.K) {
                            Z(ad_unit);
                        } else {
                            this.H = true;
                            if (!arrayList.contains(ad_unit)) {
                                arrayList.add(ad_unit);
                            }
                        }
                    }
                }
            }
        }
        if (context != null) {
            if (context instanceof Activity) {
                C0((Activity) context);
            }
            ContextProvider.getInstance().updateAppContext(context.getApplicationContext());
        }
        if (!arrayList.isEmpty()) {
            a(context, str, true, null, (IronSource.AD_UNIT[]) arrayList.toArray(new IronSource.AD_UNIT[arrayList.size()]));
        }
    }

    @Override // com.json.y7
    public void a(Context context, boolean z) {
        this.x = context;
        this.y = Boolean.valueOf(z);
        if (this.b0) {
            m7 m7Var = this.T;
            if (m7Var != null) {
                m7Var.a(context, z);
            }
        } else {
            y yVar = this.R;
            if (yVar != null) {
                yVar.a(context, z);
            }
        }
        if (this.a0) {
            za zaVar = this.U;
            if (zaVar != null) {
                zaVar.a(context, z);
                return;
            }
            return;
        }
        n5 n5Var = this.Q;
        if (n5Var != null) {
            n5Var.a(context, z);
        }
    }

    public void a(IronSource.AD_UNIT ad_unit, dc dcVar) {
        h1 h1Var;
        za zaVar;
        m7 m7Var;
        if (this.o0) {
            if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL && (m7Var = this.T) != null) {
                m7Var.a(dcVar);
            }
            if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO && (zaVar = this.U) != null) {
                zaVar.a(dcVar);
            }
            if (ad_unit != IronSource.AD_UNIT.BANNER || (h1Var = this.V) == null) {
                return;
            }
            h1Var.a(dcVar);
        }
    }

    public void a(IronSource.AD_UNIT ad_unit, WaterfallConfiguration waterfallConfiguration) {
        if (ad_unit == null) {
            IronLog.API.error("AdUnit should not be null.");
            return;
        }
        IronLog ironLog = IronLog.API;
        Object[] objArr = new Object[2];
        objArr[0] = ad_unit.name();
        objArr[1] = waterfallConfiguration == null ? "NULL" : waterfallConfiguration.toString();
        ironLog.info(String.format("(%s, %s)", objArr));
        a4 a4Var = new a4(53, IronSourceUtils.getMediationAdditionalData(false));
        a4Var.a(IronSourceConstants.EVENTS_EXT1, waterfallConfiguration == null ? "" : waterfallConfiguration.toJsonString());
        cb.i().a(a4Var, ad_unit);
        this.m0.a(ad_unit, waterfallConfiguration);
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout) {
        h1 h1Var;
        this.h.log(IronSourceLogger.IronSourceTag.API, "destroyBanner()", 1);
        try {
            if (!this.d0 || (h1Var = this.V) == null) {
                w wVar = this.S;
                if (wVar != null) {
                    wVar.a(ironSourceBannerLayout);
                }
            } else {
                h1Var.a(ironSourceBannerLayout);
            }
        } catch (Throwable th) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "destroyBanner()", th);
        }
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout, String str) {
        IronLog.INTERNAL.verbose("placementName = " + str);
        if (this.H) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "Banner was initialized in demand only mode. Use loadISDemandOnlyBanner instead", 3);
            n.a().a(IronSource.AD_UNIT.BANNER, ErrorBuilder.buildInitFailedError("Banner was initialized in demand only mode. Use loadISDemandOnlyBanner instead", "Banner"));
            return;
        }
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            StringBuilder sb = new StringBuilder();
            sb.append("loadBanner can't be called - ");
            sb.append(ironSourceBannerLayout == null ? "banner layout is null " : "banner layout is destroyed");
            String string = sb.toString();
            this.h.log(IronSourceLogger.IronSourceTag.API, string, 3);
            n.a().a(IronSource.AD_UNIT.BANNER, ErrorBuilder.buildLoadFailedError(string));
            return;
        }
        if (!this.K) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadBanner()", 3);
            n.a().a(IronSource.AD_UNIT.BANNER, ErrorBuilder.buildLoadFailedError("init() must be called before loadBanner()"));
            return;
        }
        if (ironSourceBannerLayout.getSize().getDescription().equals("CUSTOM") && (ironSourceBannerLayout.getSize().getWidth() <= 0 || ironSourceBannerLayout.getSize().getHeight() <= 0)) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "loadBanner: Unsupported banner size. Height and width must be bigger than 0", 3);
            n.a().a(IronSource.AD_UNIT.BANNER, ErrorBuilder.unsupportedBannerSize(""));
            return;
        }
        s.d dVarA = s.c().a();
        if (dVarA == s.d.INIT_FAILED) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
            n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(600, "Init() had failed"));
            return;
        }
        if (dVarA == s.d.INIT_IN_PROGRESS) {
            if (s.c().d()) {
                this.h.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(601, "Init() had failed"));
                return;
            } else {
                this.N = ironSourceBannerLayout;
                this.M = Boolean.TRUE;
                this.O = str;
                return;
            }
        }
        if (!d1()) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "No banner configurations found", 3);
            n.a().a(IronSource.AD_UNIT.BANNER, new IronSourceError(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, "the server response does not contain banner data"));
            return;
        }
        w wVar = this.S;
        if (wVar == null && this.V == null) {
            this.N = ironSourceBannerLayout;
            this.M = Boolean.TRUE;
            this.O = str;
        } else if (this.d0) {
            this.V.a(ironSourceBannerLayout, new Placement(L0(str)));
        } else {
            wVar.a(ironSourceBannerLayout, L0(str));
        }
    }

    public void a(IronSourceSegment ironSourceSegment) {
        this.C = ironSourceSegment;
        za zaVar = this.U;
        if (zaVar != null) {
            zaVar.a(ironSourceSegment);
        }
        n5 n5Var = this.Q;
        if (n5Var != null) {
            n5Var.a(ironSourceSegment);
        }
        m7 m7Var = this.T;
        if (m7Var != null) {
            m7Var.a(ironSourceSegment);
        }
        y yVar = this.R;
        if (yVar != null) {
            yVar.a(ironSourceSegment);
        }
        w wVar = this.S;
        if (wVar != null) {
            wVar.a(ironSourceSegment);
        }
        h1 h1Var = this.V;
        if (h1Var != null) {
            h1Var.a(ironSourceSegment);
        }
        AdQualityBridge adQualityBridge = this.p0;
        if (adQualityBridge != null) {
            adQualityBridge.setSegment(ironSourceSegment);
        }
        q7.i().a(this.C);
        cb.i().a(this.C);
        ka.P.a(this.C);
    }

    @Override // com.ironsource.e3.b
    public void a(ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        this.r0.a(iSDemandOnlyInterstitialListener);
    }

    @Override // com.ironsource.e3.c
    public void a(ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        this.s0.a(iSDemandOnlyRewardedVideoListener);
    }

    @Override // com.json.y7, com.json.d7
    public void a(ImpressionDataListener impressionDataListener) {
        if (d8.a((Object) impressionDataListener, "removeImpressionDataListener - listener is null")) {
            o8.b().b(impressionDataListener);
            n5 n5Var = this.Q;
            if (n5Var != null) {
                n5Var.a(impressionDataListener);
            }
            y yVar = this.R;
            if (yVar != null) {
                yVar.a(impressionDataListener);
            }
            w wVar = this.S;
            if (wVar != null) {
                wVar.a(impressionDataListener);
            }
            IronLog.API.info("remove impression data listener from " + impressionDataListener.getClass().getSimpleName());
        }
    }

    @Override // com.json.y7, com.json.b9
    public void a(LogListener logListener) {
        if (logListener == null) {
            this.h.log(IronSourceLogger.IronSourceTag.API, "setLogListener(LogListener:null)", 1);
            return;
        }
        this.j.a(logListener);
        this.h.log(IronSourceLogger.IronSourceTag.API, "setLogListener(LogListener:" + logListener.getClass().getSimpleName() + ")", 1);
    }

    public void a(InterstitialListener interstitialListener) {
        this.h.log(IronSourceLogger.IronSourceTag.API, interstitialListener == null ? "setInterstitialListener(ISListener:null)" : "setInterstitialListener(ISListener)", 1);
        this.i.a(interstitialListener);
        x5.a().a(interstitialListener);
    }

    public void a(LevelPlayInterstitialListener levelPlayInterstitialListener) {
        IronLog ironLog = IronLog.API;
        if (levelPlayInterstitialListener == null) {
            ironLog.info("ISListener is null");
        } else {
            ironLog.info();
        }
        x5.a().a(levelPlayInterstitialListener);
    }

    public void a(LevelPlayRewardedVideoListener levelPlayRewardedVideoListener) {
        IronLog ironLog = IronLog.API;
        if (levelPlayRewardedVideoListener == null) {
            ironLog.info("RVListener is null");
        } else {
            ironLog.info();
        }
        va.a().a(levelPlayRewardedVideoListener);
    }

    public synchronized void a(LevelPlayRewardedVideoManualListener levelPlayRewardedVideoManualListener) {
        IronLog ironLog;
        String str;
        if (levelPlayRewardedVideoManualListener == null) {
            IronLog.API.info("RVListener is null");
        } else {
            IronLog.API.info();
        }
        if (!this.I) {
            if (levelPlayRewardedVideoManualListener == null) {
                this.Y = false;
                ironLog = IronLog.API;
                str = "Disabling rewarded video manual mode";
            } else {
                this.Y = true;
                ironLog = IronLog.API;
                str = "Enabling rewarded video manual mode";
            }
            ironLog.info(str);
        }
        va.a().a(levelPlayRewardedVideoManualListener);
    }

    @Override // com.json.y7, com.json.v9
    public void a(OfferwallListener offerwallListener) {
        this.h.log(IronSourceLogger.IronSourceTag.API, offerwallListener == null ? "setOfferwallListener(OWListener:null)" : "setOfferwallListener(OWListener)", 1);
        this.i.a(offerwallListener);
    }

    public void a(RewardedVideoListener rewardedVideoListener) {
        this.h.log(IronSourceLogger.IronSourceTag.API, rewardedVideoListener == null ? "setRewardedVideoListener(RVListener:null)" : "setRewardedVideoListener(RVListener)", 1);
        this.i.a(rewardedVideoListener);
        va.a().a(rewardedVideoListener);
    }

    public synchronized void a(RewardedVideoManualListener rewardedVideoManualListener) {
        IronLog ironLog;
        String str;
        if (rewardedVideoManualListener == null) {
            IronLog.API.info("RVListener is null");
        } else {
            IronLog.API.info();
        }
        if (!this.I) {
            if (rewardedVideoManualListener == null) {
                this.Y = false;
                ironLog = IronLog.API;
                str = "Disabling rewarded video manual mode";
            } else {
                this.Y = true;
                ironLog = IronLog.API;
                str = "Enabling rewarded video manual mode";
            }
            ironLog.info(str);
        }
        this.i.a(rewardedVideoManualListener);
        va.a().a(rewardedVideoManualListener);
    }

    @Override // com.ironsource.e3.c
    public synchronized void a(String str) {
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + str);
        ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListenerA = this.s0.a(str);
        try {
        } catch (Exception e2) {
            IronLog.API.error(e2.getMessage());
            if (iSDemandOnlyRewardedVideoListenerA != null) {
                iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(510, e2.getMessage()));
            }
        }
        if (!this.F) {
            ironLog.error("Rewarded video was initialized in mediation mode. Use showRewardedVideo instead");
            iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(508, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"));
            return;
        }
        k kVar = this.j0;
        if (kVar != null) {
            kVar.b(str);
        } else {
            ironLog.error("Rewarded video was not initiated");
            iSDemandOnlyRewardedVideoListenerA.onRewardedVideoAdShowFailed(str, new IronSourceError(508, "Rewarded video was not initiated"));
        }
    }

    @Override // com.json.y7, com.json.v9
    public void a(String str, String str2) {
    }

    public void a(String str, List<String> list) {
        IronLog ironLog = IronLog.API;
        ironLog.verbose("key = " + str + ", values = " + list.toString());
        String strCheckMetaDataKeyValidity = MetaDataUtils.checkMetaDataKeyValidity(str);
        String strCheckMetaDataValueValidity = MetaDataUtils.checkMetaDataValueValidity(list);
        if (strCheckMetaDataKeyValidity.length() > 0) {
            ironLog.verbose(strCheckMetaDataKeyValidity);
            return;
        }
        if (strCheckMetaDataValueValidity.length() > 0) {
            ironLog.verbose(strCheckMetaDataValueValidity);
            return;
        }
        MetaData metaData = MetaDataUtils.formatMetaData(str, list);
        String metaDataKey = metaData.getMetaDataKey();
        List<String> metaDataValue = metaData.getMetaDataValue();
        if (!MetaDataUtils.isMediationOnlyKey(metaDataKey)) {
            com.json.mediationsdk.c.b().a(metaDataKey, metaDataValue);
        } else if (s.c().a() == s.d.INITIATED && MetaDataUtils.isMediationKeysBeforeInit(metaDataKey)) {
            ironLog.error("setMetaData with key = " + metaDataKey + " must to be called before init");
        } else {
            o8.b().a(metaDataKey, metaDataValue);
        }
        try {
            ConcurrentHashMap<String, List<String>> concurrentHashMapC = com.json.mediationsdk.c.b().c();
            concurrentHashMapC.putAll(o8.b().c());
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, List<String>> entry : concurrentHashMapC.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            this.m0.a(jSONObject);
        } catch (JSONException e2) {
            IronLog.INTERNAL.error("got the following error " + e2.getMessage());
            e2.printStackTrace();
        }
        cb.i().a(new a4(s.c().a() == s.d.INITIATED ? 51 : 50, IronSourceUtils.getJsonForMetaData(str, list, metaDataValue)));
    }

    public void a(String str, JSONObject jSONObject) {
        if (d8.a((Object) jSONObject, "setAdRevenueData - impressionData is null") && d8.a((Object) str, "setAdRevenueData - dataSource is null")) {
            this.l0.a(str, jSONObject);
        }
    }

    @Override // com.json.ba
    public void a(List<IronSource.AD_UNIT> list, boolean z, g2 g2Var) {
        IronLog.INTERNAL.verbose();
        try {
            this.j.a(g2Var.getApplicationConfigurations().g().d());
            this.v = list;
            this.u = true;
            this.h.log(IronSourceLogger.IronSourceTag.API, "onInitSuccess()", 1);
            IronSourceUtils.sendAutomationLog("init success");
            if (z) {
                JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
                try {
                    mediationAdditionalData.put("revived", true);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                cb.i().a(new a4(114, mediationAdditionalData));
            }
            int cmpId = g2Var.getApplicationConfigurations().e().getCmpId();
            if (cmpId >= 0) {
                new m2().a(cmpId);
            }
            q7.i().h();
            cb.i().h();
            com.json.mediationsdk.c.b().b(p(), q());
            for (IronSource.AD_UNIT ad_unit : IronSource.AD_UNIT.values()) {
                if (this.z.contains(ad_unit)) {
                    if (list.contains(ad_unit)) {
                        t0(ad_unit);
                    } else {
                        a0(ad_unit, false);
                    }
                }
            }
            if (Z0() && F()) {
                AdQualityBridge adQualityBridge = new AdQualityBridge(ContextProvider.getInstance().getApplicationContext(), p(), q(), new n(), this.m.b().getApplicationConfigurations().g().a());
                this.p0 = adQualityBridge;
                IronSourceSegment ironSourceSegment = this.C;
                if (ironSourceSegment != null) {
                    adQualityBridge.setSegment(ironSourceSegment);
                }
            }
            B();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.json.y7
    public void a(Map<String, String> map) {
        if (map != null) {
            try {
                if (map.size() == 0) {
                    return;
                }
                this.h.log(IronSourceLogger.IronSourceTag.API, this.b + ":setRewardedVideoServerParameters(params:" + map.toString() + ")", 1);
                this.r = new HashMap(map);
            } catch (Exception e2) {
                this.h.logException(IronSourceLogger.IronSourceTag.API, this.b + ":setRewardedVideoServerParameters(params:" + map.toString() + ")", e2);
            }
        }
    }

    @Override // com.json.y7
    public void a(boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "setAdaptersDebug : " + z, 1);
        com.json.mediationsdk.c.b().a(z);
    }

    public IronSourceBannerLayout b(Activity activity, ISBannerSize iSBannerSize) {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "createBanner()", 1);
        if (activity == null) {
            this.h.log(ironSourceTag, "createBanner() : Activity cannot be null", 3);
            return null;
        }
        ContextProvider.getInstance().updateActivity(activity);
        return new IronSourceBannerLayout(activity, iSBannerSize);
    }

    @Override // com.json.y7
    public String b(Context context) {
        String strP = this.f6362d.p(context);
        return !TextUtils.isEmpty(strP) ? strP : "";
    }

    @Override // com.json.y7
    public void b() {
        this.r = null;
    }

    public void b(Activity activity) {
        try {
            this.h.log(IronSourceLogger.IronSourceTag.API, "onResume()", 1);
            ContextProvider.getInstance().onResume(activity);
        } catch (Throwable th) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "onResume()", th);
        }
    }

    @Override // com.ironsource.e3.c
    public synchronized void b(Activity activity, String str) {
        c0(new h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.AD_UNIT.REWARDED_VIDEO).b(), this.s0.a(str));
    }

    @Override // com.ironsource.e3.b
    public synchronized void b(Activity activity, String str, String str2) {
        b0(new h.c().b(str).a(activity, ContextProvider.getInstance().getCurrentActiveActivity()).a(IronSource.AD_UNIT.INTERSTITIAL).a(true).a(str2).b(), this.r0.a(str));
    }

    public void b(IronSourceBannerLayout ironSourceBannerLayout) {
        a(ironSourceBannerLayout, "");
    }

    @Override // com.json.y7, com.json.d7
    public void b(ImpressionDataListener impressionDataListener) {
        if (d8.a((Object) impressionDataListener, "addImpressionDataListener - listener is null")) {
            o8.b().a(impressionDataListener);
            n5 n5Var = this.Q;
            if (n5Var != null) {
                n5Var.b(impressionDataListener);
            }
            y yVar = this.R;
            if (yVar != null) {
                yVar.b(impressionDataListener);
            }
            w wVar = this.S;
            if (wVar != null) {
                wVar.b(impressionDataListener);
            }
            IronLog.API.info("add impression data listener to " + impressionDataListener.getClass().getSimpleName());
        }
    }

    @Override // com.ironsource.e3.b
    public void b(String str) {
        this.h.log(IronSourceLogger.IronSourceTag.API, "showDemandOnlyInterstitial() instanceId=" + str, 1);
        ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListenerA = this.r0.a(str);
        try {
            if (!this.G) {
                IronLog.API.error("Interstitial was initialized in mediation mode. Use showInterstitial instead");
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, new IronSourceError(508, "Interstitial was initialized in mediation mode. Use showInterstitial instead"));
                return;
            }
            f fVar = this.i0;
            if (fVar != null) {
                fVar.a(str);
            } else {
                IronLog.API.error("Interstitial was not initiated");
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, new IronSourceError(508, "Interstitial was not initiated"));
            }
        } catch (Exception e2) {
            IronLog.API.error(e2.getMessage());
            if (iSDemandOnlyInterstitialListenerA != null) {
                iSDemandOnlyInterstitialListenerA.onInterstitialAdShowFailed(str, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
            }
        }
    }

    public void b(String str, JSONObject jSONObject) {
        String str2 = "networkKey = " + str;
        if (jSONObject != null) {
            str2 = str2 + " networkData = " + jSONObject;
        }
        IronLog.API.verbose(str2);
        com.json.mediationsdk.c.b().a(str, jSONObject);
    }

    public void b(boolean z) {
        this.P = Boolean.valueOf(z);
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "setConsent : " + z, 1);
        com.json.mediationsdk.c.b().b(z);
        if (this.f6364f != null) {
            this.h.log(IronSourceLogger.IronSourceTag.ADAPTER_API, "Offerwall | setConsent(consent:" + z + ")", 1);
            this.f6364f.setConsent(z);
        }
        this.m0.a(z);
        cb.i().a(new a4(z ? 40 : 41, IronSourceUtils.getMediationAdditionalData(false)));
    }

    @Override // com.json.y7, com.json.v9
    public void c() {
        try {
            this.h.log(IronSourceLogger.IronSourceTag.API, "showOfferwall()", 1);
            if (!x()) {
                this.i.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
                return;
            }
            x9 x9VarA = this.m.b().getOfferwallConfigurations().a();
            if (x9VarA != null) {
                j(x9VarA.getPlacementName());
            }
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "showOfferwall()", e2);
            this.i.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
        }
    }

    public void c(Activity activity) {
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, "showInterstitial()", 1);
        try {
            if (this.G) {
                this.h.log(ironSourceTag, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead", 3);
                x5.a().a(new IronSourceError(510, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"), null);
            } else {
                if (!j()) {
                    x5.a().a(ErrorBuilder.buildInitFailedError("showInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"), null);
                    return;
                }
                InterstitialPlacement interstitialPlacementM0 = M0();
                if (interstitialPlacementM0 != null) {
                    c(activity, interstitialPlacementM0.getPlacementName());
                } else {
                    x5.a().a(new IronSourceError(1020, "showInterstitial error: empty default placement in response"), null);
                }
            }
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "showInterstitial()", e2);
            x5.a().a(new IronSourceError(510, e2.getMessage()), null);
        }
    }

    public void c(Activity activity, String str) {
        String str2 = "showInterstitial(" + str + ")";
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, str2, 1);
        try {
            if (this.G) {
                this.h.log(ironSourceTag, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead", 3);
                x5.a().a(new IronSourceError(510, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"), null);
            } else if (j()) {
                A0(activity, str);
            } else {
                x5.a().a(ErrorBuilder.buildInitFailedError("showInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"), null);
            }
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, str2, e2);
            x5.a().a(new IronSourceError(510, e2.getMessage()), null);
        }
    }

    @Override // com.ironsource.e3.a
    public void c(String str) {
        this.h.log(IronSourceLogger.IronSourceTag.API, "destroyBanner()", 1);
        try {
            com.json.mediationsdk.demandOnly.c cVar = this.k0;
            if (cVar != null) {
                cVar.a(str);
            }
        } catch (Throwable th) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "destroyISDemandOnlyBanner()", th);
        }
    }

    void c0(h.d dVar, ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        String instanceId = dVar.getInstanceId();
        IronLog ironLog = IronLog.API;
        ironLog.info("instanceId=" + instanceId);
        try {
        } catch (Throwable th) {
            IronLog.API.error(th.getMessage());
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, new IronSourceError(510, th.getMessage()));
        }
        if (!this.I) {
            ironLog.error("initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, new IronSourceError(510, "initISDemandOnly() must be called before loadDemandOnlyRewardedVideo()"));
            return;
        }
        if (!this.F) {
            ironLog.error("Rewarded video was initialized in mediation mode");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, new IronSourceError(510, "Rewarded video was initialized in mediation mode"));
            return;
        }
        s.d dVarA = s.c().a();
        if (dVarA == s.d.INIT_FAILED) {
            ironLog.error("init() had failed");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronSourceError ironSourceErrorC = dVar.c();
        if (ironSourceErrorC != null) {
            if (ironSourceErrorC.getErrorCode() == 1060) {
                r0(IronSourceConstants.TROUBLESHOOTING_DO_CALLED_RV_LOAD_WITH_NO_ACTIVITY, IronSourceUtils.getMediationAdditionalData(true, !TextUtils.isEmpty(dVar.getAdMarkup()), 1));
            }
            ironLog.error(ironSourceErrorC.toString());
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, ironSourceErrorC);
            return;
        }
        C0(dVar.getActivity());
        if (dVarA == s.d.INIT_IN_PROGRESS) {
            if (s.c().d()) {
                ironLog.error("init() had failed");
                iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            synchronized (this.h0) {
                this.h0.put(instanceId, dVar);
            }
            if (TextUtils.isEmpty(dVar.getAdMarkup())) {
                return;
            }
            r0(IronSourceConstants.TROUBLESHOOTING_DO_IAB_RV_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, !TextUtils.isEmpty(dVar.getAdMarkup()), 1));
            return;
        }
        if (!z()) {
            ironLog.error("No rewarded video configurations found");
            iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("the server response does not contain rewarded video data", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        synchronized (this.h0) {
            k kVar = this.j0;
            if (kVar != null) {
                kVar.a(dVar);
                return;
            }
            this.h0.put(instanceId, dVar);
            if (!TextUtils.isEmpty(dVar.getAdMarkup())) {
                r0(IronSourceConstants.TROUBLESHOOTING_DO_IAB_RV_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, !TextUtils.isEmpty(dVar.getAdMarkup()), 1));
            }
            return;
        }
        IronLog.API.error(th.getMessage());
        iSDemandOnlyRewardedVideoListener.onRewardedVideoAdLoadFailed(instanceId, new IronSourceError(510, th.getMessage()));
    }

    @Override // com.json.y7
    public void d() {
        this.h.log(IronSourceLogger.IronSourceTag.API, "removeRewardedVideoListener()", 1);
        this.i.a((RewardedVideoListener) null);
        va.a().a((RewardedVideoListener) null);
        va.a().a((LevelPlayRewardedVideoBaseListener) null);
    }

    public void d(Activity activity) {
        if (!y()) {
            va.a().a(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT), (AdInfo) null);
            this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", 3);
            return;
        }
        Placement placementN0 = N0();
        if (placementN0 != null) {
            f(activity, placementN0.getPlacementName());
            return;
        }
        this.h.log(IronSourceLogger.IronSourceTag.INTERNAL, "showRewardedVideo error: empty default placement in response", 3);
        va.a().a(new IronSourceError(1021, "showRewardedVideo error: empty default placement in response"), (AdInfo) null);
    }

    public void d(Context context) {
        yb ybVar = yb.a;
        ybVar.b();
        if (!this.u) {
            ybVar.a(IronSourceConstants.errorCode_TEST_SUITE_SDK_NOT_INITIALIZED);
            IronLog.API.error("TestSuite cannot be launched, SDK not initialized");
            return;
        }
        if (!w0(this.m)) {
            ybVar.a(IronSourceConstants.errorCode_TEST_SUITE_DISABLED);
            IronLog.API.error("TestSuite cannot be launched, Please contact your account manager to enable it");
            return;
        }
        if (!IronSourceUtils.isNetworkConnected(context)) {
            ybVar.a(IronSourceConstants.errorCode_TEST_SUITE_NO_NETWORK_CONNECTIVITY);
            IronLog.API.error("TestSuite cannot be launched, No network connectivity");
            return;
        }
        m7 m7Var = this.T;
        if (m7Var != null) {
            m7Var.F();
        }
        za zaVar = this.U;
        if (zaVar != null) {
            zaVar.F();
        }
        h1 h1Var = this.V;
        if (h1Var != null) {
            h1Var.F();
            this.V.K();
        }
        new zb().a(context, p(), this.m.g(), IronSourceUtils.getSDKVersion(), this.m.b().getTestSuiteSettings().b(), K0(), this.Y);
        this.o0 = true;
        ybVar.c();
    }

    @Override // com.json.ba
    public void d(String str) {
        try {
            this.h.log(IronSourceLogger.IronSourceTag.API, "onInitFailed(reason:" + str + ")", 1);
            IronSourceUtils.sendAutomationLog("Mediation init failed");
            if (this.i != null) {
                Iterator<IronSource.AD_UNIT> it = this.z.iterator();
                while (it.hasNext()) {
                    a0(it.next(), true);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    void d0(SegmentListener segmentListener) {
        y8 y8Var = this.i;
        if (y8Var != null) {
            y8Var.a(segmentListener);
            s.c().a(this.i);
        }
    }

    @Override // com.json.y7
    public void e() {
        this.h.log(IronSourceLogger.IronSourceTag.API, "removeOfferwallListener()", 1);
        this.i.a((OfferwallListener) null);
    }

    @Override // com.json.y7
    public boolean e(String str) {
        try {
            String str2 = this.b + ":setDynamicUserId(dynamicUserId:" + str + ")";
            IronSourceLoggerManager ironSourceLoggerManager = this.h;
            IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
            ironSourceLoggerManager.log(ironSourceTag, str2, 1);
            f2 f2Var = new f2();
            h0(str, f2Var);
            if (!f2Var.b()) {
                IronSourceLoggerManager.getLogger().log(ironSourceTag, f2Var.a().toString(), 2);
                return false;
            }
            this.q = str;
            cb.i().a(new a4(52, IronSourceUtils.getJsonForUserId(true)));
            return true;
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, this.b + ":setDynamicUserId(dynamicUserId:" + str + ")", e2);
            return false;
        }
    }

    @Override // com.json.y7
    public void f() {
        this.h.log(IronSourceLogger.IronSourceTag.API, "removeInterstitialListener()", 1);
        this.i.a((InterstitialListener) null);
        x5.a().a((InterstitialListener) null);
        x5.a().a((LevelPlayInterstitialListener) null);
    }

    public void f(Activity activity, String str) {
        String str2 = "showRewardedVideo(" + str + ")";
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, str2, 1);
        try {
            if (this.F) {
                this.h.log(ironSourceTag, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead", 3);
                va.a().a(ErrorBuilder.buildInitFailedError("Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead", IronSourceConstants.REWARDED_VIDEO_AD_UNIT), (AdInfo) null);
            } else if (y()) {
                D0(activity, str);
            } else {
                va.a().a(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT), (AdInfo) null);
            }
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, str2, e2);
            va.a().a(new IronSourceError(510, e2.getMessage()), (AdInfo) null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    @Override // com.ironsource.e3.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean f(java.lang.String r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            com.ironsource.mediationsdk.demandOnly.f r0 = r1.i0     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Ld
            boolean r2 = r0.b(r2)     // Catch: java.lang.Throwable -> L10
            if (r2 == 0) goto Ld
            r2 = 1
            goto Le
        Ld:
            r2 = 0
        Le:
            monitor-exit(r1)
            return r2
        L10:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.p.f(java.lang.String):boolean");
    }

    @Override // com.json.y7
    public InterstitialPlacement g(String str) {
        try {
            InterstitialPlacement interstitialPlacementP0 = P0(str);
            if (interstitialPlacementP0 == null) {
                try {
                    this.h.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 2);
                    interstitialPlacementP0 = M0();
                } catch (Exception unused) {
                    return interstitialPlacementP0;
                }
            }
            this.h.log(IronSourceLogger.IronSourceTag.API, "getPlacementInfo(placement: " + str + "):" + interstitialPlacementP0, 1);
            return interstitialPlacementP0;
        } catch (Exception unused2) {
            return null;
        }
    }

    boolean g() {
        return this.F || this.G || this.H;
    }

    @Override // com.json.y7, com.json.v9
    public void getOfferwallCredits() {
        this.h.log(IronSourceLogger.IronSourceTag.API, "getOfferwallCredits()", 1);
        try {
            this.f6365g.getOfferwallCredits();
        } catch (Throwable th) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, "getOfferwallCredits()", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String h() {
        /*
            r3 = this;
            boolean r0 = r3.L
            if (r0 != 0) goto L7
            java.lang.String r0 = "init() must be called first"
            goto L2c
        L7:
            com.ironsource.mediationsdk.s r0 = com.json.mediationsdk.s.c()
            int[] r1 = com.ironsource.mediationsdk.p.b.b
            com.ironsource.mediationsdk.s$d r2 = r0.a()
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L2a
            r2 = 2
            if (r1 == r2) goto L20
            java.lang.String r0 = ""
            goto L2c
        L20:
            boolean r0 = r0.d()
            if (r0 == 0) goto L27
            goto L2a
        L27:
            java.lang.String r0 = "init() not finished yet"
            goto L2c
        L2a:
            java.lang.String r0 = "init() had failed"
        L2c:
            boolean r1 = r3.v()
            if (r1 != 0) goto L3a
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L3a
            java.lang.String r0 = "No Native Ad configurations found"
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.p.h():java.lang.String");
    }

    @Override // com.json.y7
    public void h(String str) {
        try {
            String str2 = this.b + ":setMediationType(mediationType:" + str + ")";
            IronSourceLoggerManager ironSourceLoggerManager = this.h;
            IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
            ironSourceLoggerManager.log(ironSourceTag, str2, 1);
            if (n0(str, 1, 64) && a1(str)) {
                this.s = str;
                this.m0.d(str);
            } else {
                this.h.log(ironSourceTag, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length", 1);
            }
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, this.b + ":setMediationType(mediationType:" + str + ")", e2);
        }
    }

    public l9 i() {
        IronLog.INTERNAL.verbose();
        List<NetworkSettings> listV = V(this.m.h().c());
        if (listV.size() > 0) {
            return new l9(listV, this.m.b().getNativeAdConfigurations(), IronSourceUtils.getUserIdForNetworks(), o8.b(), this.C, this.m.k());
        }
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
        i0(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
        W(IronSourceConstants.TROUBLESHOOTING_NT_INIT_FAILED, mediationAdditionalData);
        return null;
    }

    @Override // com.json.y7
    public Placement i(String str) {
        try {
            Placement placementS0 = S0(str);
            if (placementS0 == null) {
                try {
                    this.h.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 2);
                    placementS0 = N0();
                } catch (Exception unused) {
                    return placementS0;
                }
            }
            this.h.log(IronSourceLogger.IronSourceTag.API, "getPlacementInfo(placement: " + str + "):" + placementS0, 1);
            return placementS0;
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // com.json.y7, com.json.v9
    public boolean isOfferwallAvailable() {
        try {
            v vVar = this.f6365g;
            if (vVar != null) {
                return vVar.isOfferwallAvailable();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.json.y7, com.json.v9
    public void j(String str) {
        String str2 = "showOfferwall(" + str + ")";
        IronSourceLoggerManager ironSourceLoggerManager = this.h;
        IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
        ironSourceLoggerManager.log(ironSourceTag, str2, 1);
        try {
            if (!x()) {
                this.i.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
                return;
            }
            x9 x9VarA = this.m.b().getOfferwallConfigurations().a(str);
            if (x9VarA == null) {
                this.h.log(ironSourceTag, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
                x9VarA = this.m.b().getOfferwallConfigurations().a();
                if (x9VarA == null) {
                    this.h.log(ironSourceTag, "Default placement was not found, please make sure you are using the right placements.", 3);
                    return;
                }
            }
            this.f6365g.j(x9VarA.getPlacementName());
        } catch (Exception e2) {
            this.h.logException(IronSourceLogger.IronSourceTag.API, str2, e2);
            this.i.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
        }
    }

    public com.json.mediationsdk.utils.c k() {
        return this.m;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    @Override // com.ironsource.e3.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean k(java.lang.String r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            com.ironsource.mediationsdk.demandOnly.k r0 = r1.j0     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Ld
            boolean r2 = r0.a(r2)     // Catch: java.lang.Throwable -> L10
            if (r2 == 0) goto Ld
            r2 = 1
            goto Le
        Ld:
            r2 = 0
        Le:
            monitor-exit(r1)
            return r2
        L10:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.p.k(java.lang.String):boolean");
    }

    public String n() {
        return this.q;
    }

    public n9 o(String str) {
        n9 n9VarA;
        h9 h9VarE = this.m.b().getNativeAdConfigurations();
        if (h9VarE == null) {
            return null;
        }
        return (TextUtils.isEmpty(str) || (n9VarA = h9VarE.a(str)) == null) ? h9VarE.e() : n9VarA;
    }

    public String p() {
        return this.n;
    }

    public String q() {
        return this.o;
    }

    com.json.mediationsdk.utils.c q0(Context context, String str, c cVar) {
        synchronized (this.l) {
            com.json.mediationsdk.utils.c cVar2 = this.m;
            if (cVar2 != null) {
                return new com.json.mediationsdk.utils.c(cVar2);
            }
            com.json.mediationsdk.utils.c cVarU = U(context, str, cVar);
            if (cVarU == null || !cVarU.m()) {
                IronSourceLoggerManager logger = IronSourceLoggerManager.getLogger();
                IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
                logger.log(ironSourceTag, "Null or invalid response. Trying to get cached response", 0);
                cVarU = T(context, p());
                if (cVarU != null) {
                    IronSourceError ironSourceErrorBuildUsingCachedConfigurationError = ErrorBuilder.buildUsingCachedConfigurationError(p(), str);
                    this.h.log(ironSourceTag, ironSourceErrorBuildUsingCachedConfigurationError.toString() + ": " + cVarU.toString(), 1);
                    cb.i().a(new a4(IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, IronSourceUtils.getMediationAdditionalData(false)));
                }
            }
            if (cVarU != null) {
                this.m = cVarU;
                IronSourceUtils.saveLastResponse(context, cVarU.toString());
                u0(this.m, context);
                q7.i().c(true);
                cb.i().c(true);
                ka.P.c(true);
            }
            return cVarU;
        }
    }

    public String r() {
        return this.s;
    }

    public Map<String, String> s() {
        return this.r;
    }

    public String t() {
        return this.w;
    }
}
