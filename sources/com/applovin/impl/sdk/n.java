package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.privacy.a.c;
import com.applovin.impl.privacy.a.d;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.e.l;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdService;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.network.d;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinTargetingData;
import com.applovin.sdk.AppLovinUserSegment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class n {
    public static n aAC;

    @Nullable
    public static n aAD;
    private static final boolean aAF;

    @Nullable
    private static volatile a aAG;
    protected static Context hr;
    private String aAI;
    private WeakReference<Activity> aAJ;
    private long aAK;
    private boolean aAL;
    private long aAM;
    private boolean aAO;
    private AppLovinSdkSettings aAP;
    private AppLovinUserSegment aAQ;
    private AppLovinTargetingData aAR;
    private String aAS;

    @Nullable
    private volatile AppLovinNativeAdService aAU;

    @Nullable
    private volatile EventServiceImpl aAW;

    @Nullable
    private volatile UserServiceImpl aAY;

    @Nullable
    private volatile d aBB;

    @Nullable
    private volatile b aBD;

    @Nullable
    private volatile t aBF;

    @Nullable
    private volatile com.applovin.impl.sdk.d.c aBH;

    @Nullable
    private volatile SessionTracker aBJ;

    @Nullable
    private volatile u aBL;

    @Nullable
    private volatile ae aBN;

    @Nullable
    private volatile com.applovin.impl.sdk.network.d aBP;

    @Nullable
    private volatile k aBR;

    @Nullable
    private volatile com.applovin.impl.sdk.utils.q aBT;

    @Nullable
    private volatile i aBV;

    @Nullable
    private volatile com.applovin.impl.privacy.a.c aBX;

    @Nullable
    private volatile com.applovin.impl.privacy.b.b aBZ;

    @Nullable
    private volatile CmpServiceImpl aBa;
    private volatile AppLovinSdk aBc;

    @Nullable
    private volatile com.applovin.impl.sdk.e.q aBe;

    @Nullable
    private volatile com.applovin.impl.sdk.c.c aBg;

    @Nullable
    private volatile com.applovin.impl.sdk.network.b aBi;

    @Nullable
    private volatile com.applovin.impl.sdk.d.g aBk;

    @Nullable
    private volatile q aBm;

    @Nullable
    private volatile o aBo;

    @Nullable
    private volatile p aBq;

    @Nullable
    private volatile Boolean aBs;

    @Nullable
    private volatile aa aBt;

    @Nullable
    private volatile com.applovin.impl.sdk.c.e aBv;

    @Nullable
    private volatile m aBx;

    @Nullable
    private volatile com.applovin.impl.sdk.utils.t aBz;

    @Nullable
    private volatile com.applovin.impl.mediation.debugger.b aCB;

    @Nullable
    private volatile y aCD;

    @Nullable
    private volatile com.applovin.impl.mediation.d aCF;

    @Nullable
    private volatile com.applovin.impl.mediation.debugger.ui.testmode.c aCH;
    private List<MaxAdFormat> aCJ;

    @Nullable
    private String aCT;
    private AppLovinSdk.SdkInitializationListener aCU;
    private AppLovinSdk.SdkInitializationListener aCV;
    private AppLovinSdkConfiguration aCW;

    @Nullable
    private volatile com.applovin.impl.a.a.a aCb;

    @Nullable
    private volatile com.applovin.impl.sdk.a.f aCd;

    @Nullable
    private volatile w aCf;

    @Nullable
    private volatile ArrayService aCh;

    @Nullable
    private volatile r aCj;

    @Nullable
    private volatile PostbackServiceImpl aCl;

    @Nullable
    private volatile com.applovin.impl.sdk.network.f aCn;

    @Nullable
    private volatile f aCp;

    @Nullable
    private volatile com.applovin.impl.mediation.f aCr;

    @Nullable
    private volatile com.applovin.impl.mediation.e aCt;

    @Nullable
    private volatile MediationServiceImpl aCv;

    @Nullable
    private volatile com.applovin.impl.mediation.a.d aCx;

    @Nullable
    private volatile com.applovin.impl.mediation.h aCz;

    @Nullable
    private volatile AppLovinAdServiceImpl age;

    @Nullable
    private volatile x logger;
    private static final Object aAH = new Object();
    private static final long aAE = System.currentTimeMillis();
    private final AtomicBoolean aAN = new AtomicBoolean();
    private final Object aAT = new Object();
    private final Object aAV = new Object();
    private final Object aAX = new Object();
    private final Object aAZ = new Object();
    private final Object aBb = new Object();
    private final Object aBd = new Object();
    private final Object aBf = new Object();
    private final Object aBh = new Object();
    private final Object aBj = new Object();
    private final Object aBl = new Object();
    private final Object aBn = new Object();
    private final Object aBp = new Object();
    private final Object aBr = new Object();
    private final Object aBu = new Object();
    private final Object aBw = new Object();
    private final Object aBy = new Object();
    private final Object aBA = new Object();
    private final Object aBC = new Object();
    private final Object aBE = new Object();
    private final Object aBG = new Object();
    private final Object aBI = new Object();
    private final Object aBK = new Object();
    private final Object aBM = new Object();
    private final Object aBO = new Object();
    private final Object aBQ = new Object();
    private final Object aBS = new Object();
    private final Object aBU = new Object();
    private final Object aBW = new Object();
    private final Object aBY = new Object();
    private final Object aCa = new Object();
    private final Object aCc = new Object();
    private final Object aCe = new Object();
    private final Object aCg = new Object();
    private final Object aCi = new Object();
    private final Object aCk = new Object();
    private final Object aCm = new Object();
    private final Object aCo = new Object();
    private final Object aCq = new Object();
    private final Object aCs = new Object();
    private final Object aCu = new Object();
    private final Object aCw = new Object();
    private final Object aCy = new Object();
    private final Object aCA = new Object();
    private final Object aCC = new Object();
    private final Object aCE = new Object();
    private final Object aCG = new Object();
    private final Object aCI = new Object();
    private final Object aCK = new Object();
    private final AtomicBoolean aCL = new AtomicBoolean(true);
    private final AtomicBoolean aCM = new AtomicBoolean();
    private boolean aCN = false;
    private boolean iV = false;
    private boolean aCO = false;
    private boolean aCP = false;
    private boolean aCQ = false;
    private boolean aCR = false;
    private int aCS = 0;

    static {
        boolean z;
        try {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a0
                @Override // java.lang.Runnable
                public final void run() {
                    com.applovin.impl.sdk.utils.u.LG();
                }
            });
            z = true;
        } finally {
            z = false;
            try {
            } finally {
            }
        }
    }

    private Map<String, String> BJ() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) a(com.applovin.impl.sdk.c.b.aPa)));
        } catch (JSONException unused) {
            return Collections.emptyMap();
        }
    }

    private boolean BT() {
        if (this.aBs == null) {
            this.aBs = (Boolean) a(com.applovin.impl.sdk.c.b.aOo);
        }
        return Boolean.TRUE.equals(this.aBs);
    }

    private void Bj() {
        this.aBv = new com.applovin.impl.sdk.c.e(this);
        this.aBg = new com.applovin.impl.sdk.c.c(this);
        this.logger = new x(this);
        this.aBF = new t(this);
        this.aBB = new d(this);
        this.aBD = new b(this);
        this.aAW = new EventServiceImpl(this);
        this.aAY = new UserServiceImpl(this);
        this.aBH = new com.applovin.impl.sdk.d.c(this);
        this.aBe = new com.applovin.impl.sdk.e.q(this);
        this.aBi = new com.applovin.impl.sdk.network.b(this);
        this.aBk = new com.applovin.impl.sdk.d.g(this);
        this.aCd = new com.applovin.impl.sdk.a.f(this);
        this.aBT = new com.applovin.impl.sdk.utils.q(this);
        if (((Boolean) a(com.applovin.impl.sdk.c.b.aOo)).booleanValue()) {
            this.aBm = new q(this);
            this.aBq = new p(this);
        } else {
            this.aBo = new o(this);
        }
        CG();
        this.age = new AppLovinAdServiceImpl(this);
        this.aAU = new AppLovinNativeAdService(this);
        this.aBJ = new SessionTracker(this);
        this.aBL = new u(this);
        this.aBN = new ae(this);
        this.aCl = new PostbackServiceImpl(this);
        this.aCp = new f(this);
        this.aCr = new com.applovin.impl.mediation.f(this);
        this.aCt = new com.applovin.impl.mediation.e(this);
        this.aCv = new MediationServiceImpl(this);
        this.aCx = new com.applovin.impl.mediation.a.d(this);
        this.aCD = new y(this);
        this.aCB = new com.applovin.impl.mediation.debugger.b(this);
        this.aCz = new com.applovin.impl.mediation.h();
        this.aCF = new com.applovin.impl.mediation.d(this);
        this.aBx = new m(this);
        this.aBV = new i(this);
        this.aCH = new com.applovin.impl.mediation.debugger.ui.testmode.c(this);
        this.aBX = new com.applovin.impl.privacy.a.c(this);
        this.aBZ = new com.applovin.impl.privacy.b.b(this);
        this.aCb = new com.applovin.impl.a.a.a(this);
        this.aCf = new w(this);
        this.aCh = new ArrayService(this);
        this.aCj = new r(this);
        this.aCn = new com.applovin.impl.sdk.network.f(this);
        this.aBR = new k(this);
        this.aBz = new com.applovin.impl.sdk.utils.t(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Bk() {
        Context context = hr;
        final x xVarBN = BN();
        com.applovin.impl.sdk.c.e eVarBX = BX();
        com.applovin.impl.sdk.e.q qVarBO = BO();
        final com.applovin.impl.privacy.a.c cVarCl = Cl();
        E(context);
        Ce();
        Cv();
        Cr();
        Cx().a(MaxAdapter.InitializationStatus.INITIALIZING);
        if (this.aAP.isExceptionHandlerEnabled() && ((Boolean) a(com.applovin.impl.sdk.c.b.aKA)).booleanValue()) {
            AppLovinExceptionHandler.shared().addSdk(this);
            AppLovinExceptionHandler.shared().enable();
        }
        if (((Boolean) a(com.applovin.impl.sdk.c.b.aNW)).booleanValue()) {
            this.aBP = new com.applovin.impl.sdk.network.d(context);
        }
        if (TextUtils.isEmpty(this.aAI)) {
            x.H("AppLovinSdk", "Unable to find AppLovin SDK key. Please add  meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
            x.H("AppLovinSdk", "Called with an invalid SDK key from: " + Log.getStackTraceString(new Throwable("")));
        }
        if (this.aAI.length() != 86 && com.applovin.impl.sdk.utils.u.b(context, this)) {
            x.H("AppLovinSdk", "Please double-check that you entered your SDK key correctly (" + this.aAI + ") : " + Log.getStackTraceString(new Throwable("")));
        }
        if (com.applovin.impl.sdk.utils.u.LD()) {
            x.H("AppLovinSdk", "Failed to find class for name: com.applovin.sdk.AppLovinSdk. Please ensure proguard rules have not been omitted from the build.");
        }
        if (!com.applovin.impl.sdk.utils.u.O(this)) {
            x.H("AppLovinSdk", "Detected non-Android core JSON library. Please double-check that none of your third party libraries include custom implementation of org.json.JSONObject.");
        }
        if (com.applovin.impl.sdk.utils.u.ae(context)) {
            this.aAP.setVerboseLogging(true);
        }
        BP().a(com.applovin.impl.sdk.c.b.aKq, Boolean.valueOf(this.aAP.isVerboseLoggingEnabled()));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        com.applovin.impl.sdk.c.d<String> dVar = com.applovin.impl.sdk.c.d.aRh;
        if (TextUtils.isEmpty((String) eVarBX.b(dVar, (Object) null, defaultSharedPreferences))) {
            this.aCO = true;
            eVarBX.a(dVar, Boolean.toString(true), defaultSharedPreferences);
        } else {
            eVarBX.a(dVar, Boolean.toString(false), defaultSharedPreferences);
        }
        com.applovin.impl.sdk.c.d<Boolean> dVar2 = com.applovin.impl.sdk.c.d.aRi;
        if (((Boolean) eVarBX.b(dVar2, Boolean.FALSE)).booleanValue()) {
            if (x.Fn()) {
                xVarBN.f("AppLovinSdk", "Initializing SDK for non-maiden launch");
            }
            this.aCP = true;
        } else {
            if (x.Fn()) {
                xVarBN.f("AppLovinSdk", "Initializing SDK for maiden launch");
            }
            eVarBX.a(dVar2, Boolean.TRUE);
            eVarBX.a(com.applovin.impl.sdk.c.d.aRt, Boolean.valueOf(cVarCl.isEnabled()));
        }
        com.applovin.impl.sdk.c.d<String> dVar3 = com.applovin.impl.sdk.c.d.aRj;
        String str = (String) eVarBX.b(dVar3, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE > com.applovin.impl.sdk.utils.u.dG(str)) {
                eVarBX.a(dVar3, AppLovinSdk.VERSION);
            }
        } else {
            eVarBX.a(dVar3, AppLovinSdk.VERSION);
        }
        final boolean zAa = com.applovin.impl.sdk.utils.i.aa(getApplicationContext());
        int i = StringUtils.parseInt(this.aAP.getExtraParameters().get(AppLovinSdkExtraParameterKey.INITIALIZATION_DELAY_MILLIS), ((Integer) a(com.applovin.impl.sdk.c.b.aOZ)).intValue());
        com.applovin.impl.sdk.e.ab abVar = new com.applovin.impl.sdk.e.ab(this, true, "scheduleAdLoadIntegrationError", new Runnable() { // from class: com.applovin.impl.sdk.g1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.CP();
            }
        });
        q.b bVar = q.b.MAIN;
        long j = i;
        qVarBO.a(abVar, bVar, j);
        qVarBO.a(new com.applovin.impl.sdk.e.ab(this, true, "sdkInit", new Runnable() { // from class: com.applovin.impl.sdk.i1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(zAa, xVarBN, cVarCl);
            }
        }), bVar, j);
    }

    private void Bn() {
        com.applovin.impl.sdk.e.q qVarBO = BO();
        int i = this.aCS + 1;
        this.aCS = i;
        qVarBO.a(new com.applovin.impl.sdk.e.l(i, this, new l.a() { // from class: com.applovin.impl.sdk.n.2
            @Override // com.applovin.impl.sdk.e.l.a
            public void G(JSONObject jSONObject) {
                boolean z = jSONObject != null && jSONObject.length() > 0;
                n.this.D(jSONObject);
                g.o(n.this);
                com.applovin.impl.sdk.utils.i.a(jSONObject, z, n.this);
                n.this.CB().h(JsonUtils.getBoolean(jSONObject, "smd", Boolean.FALSE).booleanValue(), JsonUtils.getInt(jSONObject, "smd_delay_sec", 2));
                n nVar = n.this;
                nVar.aCJ = nVar.F(jSONObject);
                if (z) {
                    List<String> listExplode = CollectionUtils.explode(JsonUtils.getString(jSONObject, "eaaui", ""));
                    n nVar2 = n.this;
                    nVar2.aCW = new SdkConfigurationImpl(listExplode, nVar2);
                }
                n.this.CE().f(jSONObject);
                n.this.E(jSONObject);
                com.applovin.impl.sdk.utils.m.bj(((Boolean) n.this.a(com.applovin.impl.sdk.c.b.aQN)).booleanValue());
                com.applovin.impl.sdk.utils.m.bk(((Boolean) n.this.a(com.applovin.impl.sdk.c.b.aQO)).booleanValue());
                if (n.this.Bq() || !n.this.Br()) {
                    n.this.cz("Initializing SDK in non-MAX environment...");
                } else if (n.this.Cl().zX() == d.a.UNIFIED) {
                    Activity activityCF = n.this.CF();
                    if (n.this.aCM.compareAndSet(false, true)) {
                        n.this.Cl().Aa();
                        n.this.Cl().a(activityCF, new c.a() { // from class: com.applovin.impl.sdk.n.2.1
                            @Override // com.applovin.impl.privacy.a.c.a
                            public void onFlowCompleted(@Nullable com.applovin.impl.privacy.a.a aVar) {
                                n.this.cz("Initializing SDK in MAX environment...");
                            }
                        });
                    } else {
                        n.this.cz("Initializing SDK in MAX environment...");
                    }
                } else {
                    n.this.cz("Initializing SDK in MAX environment...");
                }
                if (!((Boolean) n.this.a(com.applovin.impl.sdk.c.b.aNW)).booleanValue() || z || !com.applovin.impl.sdk.utils.i.aa(n.getApplicationContext())) {
                    n.this.Bo();
                    return;
                }
                n.this.BN();
                if (x.Fn()) {
                    n.this.BN().g("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
                }
                n.this.Bw();
            }
        }), q.b.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Bo() {
        Long l = (Long) a(com.applovin.impl.sdk.c.b.aOf);
        if (l.longValue() >= 0 && this.aAN.compareAndSet(false, true)) {
            com.applovin.impl.sdk.utils.w.a(l.longValue(), false, this, new Runnable() { // from class: com.applovin.impl.sdk.o1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.CN();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Bw() {
        final com.applovin.impl.sdk.network.d dVarG = G(hr);
        dVarG.a(new d.a() { // from class: com.applovin.impl.sdk.n.4
            @Override // com.applovin.impl.sdk.network.d.a
            public void CQ() {
                n.this.BN();
                if (x.Fn()) {
                    n.this.BN().g("AppLovinSdk", "Connected to internet - re-initializing SDK");
                }
                synchronized (n.this.aCK) {
                    if (!n.this.aCN) {
                        n.this.Bm();
                    }
                }
                dVarG.b(this);
            }

            @Override // com.applovin.impl.sdk.network.d.a
            public void CR() {
            }
        });
    }

    private void CG() {
        if (!aa.N(hr) || this.aCR) {
            return;
        }
        try {
            this.aBt = new aa(this);
        } catch (Throwable th) {
            x.f("AppLovinSdk", "Failed to initialize Privacy Sandbox Service", th);
            this.aCR = true;
        }
    }

    public static long CH() {
        return aAE;
    }

    public static boolean CI() {
        return aAF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void CM() {
        b(com.applovin.impl.sdk.c.d.aRN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void CN() {
        com.applovin.impl.sdk.e.q qVarBO = BO();
        int i = this.aCS + 1;
        this.aCS = i;
        qVarBO.a(new com.applovin.impl.sdk.e.l(i, this, new l.a() { // from class: com.applovin.impl.sdk.n.3
            @Override // com.applovin.impl.sdk.e.l.a
            public void G(JSONObject jSONObject) {
                if (jSONObject != null && jSONObject.length() > 0) {
                    n.this.D(jSONObject);
                }
                n.this.aAN.set(false);
                n.this.Bo();
            }
        }), q.b.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void CO() {
        if (BO().isInitialized()) {
            return;
        }
        BN();
        if (x.Fn()) {
            BN().f("AppLovinSdk", "Timing out adapters init...");
        }
        BO().KM();
        Bv();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void CP() {
        if (!Br() || Bq()) {
            return;
        }
        v.w(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(JSONObject jSONObject) {
        this.aAM = System.currentTimeMillis();
        com.applovin.impl.sdk.utils.i.j(jSONObject, this);
        com.applovin.impl.sdk.utils.i.i(jSONObject, this);
        com.applovin.impl.sdk.utils.i.k(jSONObject, this);
        com.applovin.impl.mediation.e.b.d(jSONObject, this);
        com.applovin.impl.mediation.e.b.e(jSONObject, this);
        com.applovin.impl.mediation.e.b.f(jSONObject, this);
        com.applovin.impl.mediation.e.b.z(jSONObject);
    }

    public static a E(Context context) {
        if (aAG == null) {
            synchronized (aAH) {
                if (aAG == null) {
                    aAG = new a(context);
                }
            }
        }
        return aAG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(JSONObject jSONObject) {
        Iterator it = JsonUtils.getList(jSONObject, "error_messages", Collections.emptyList()).iterator();
        while (it.hasNext()) {
            x.H("AppLovinSdk", (String) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MaxAdFormat> F(JSONObject jSONObject) {
        List listAsList = Arrays.asList(JsonUtils.getString(jSONObject, "eaf", "").split(","));
        ArrayList arrayList = new ArrayList(listAsList.size());
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            MaxAdFormat fromString = MaxAdFormat.formatFromString((String) it.next());
            if (fromString != null) {
                arrayList.add(fromString);
            }
        }
        return arrayList;
    }

    public static void F(Context context) {
        if (context == null) {
            return;
        }
        hr = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        BN();
        if (x.Fn()) {
            BN().f("AppLovinSdk", "Calling back publisher's initialization completion handler...");
        }
        sdkInitializationListener.onSdkInitialized(this.aCW);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, x xVar, com.applovin.impl.privacy.a.c cVar) {
        synchronized (this.aCK) {
            if (!((Boolean) a(com.applovin.impl.sdk.c.b.aNX)).booleanValue() || z) {
                Bm();
            }
            if (((Boolean) a(com.applovin.impl.sdk.c.b.aNW)).booleanValue() && !z) {
                if (x.Fn()) {
                    xVar.g("AppLovinSdk", "SDK initialized with no internet connection - listening for connection");
                }
                Bw();
            }
            if (cVar.zX() == d.a.TERMS) {
                if (Br()) {
                    if (x.Fn()) {
                        xVar.f("AppLovinSdk", "MAX mediation detected... Generating consent flow...");
                    }
                    cVar.Aa();
                    cVar.a(CF(), new c.a() { // from class: com.applovin.impl.sdk.n.1
                        @Override // com.applovin.impl.privacy.a.c.a
                        public void onFlowCompleted(@Nullable com.applovin.impl.privacy.a.a aVar) {
                        }
                    });
                } else if (x.Fn()) {
                    xVar.f("AppLovinSdk", "non-MAX mediation detected, mediation provider is: " + this.aAS);
                }
            }
        }
    }

    public static String b(String str, List<String> list) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Context applicationContext = getApplicationContext();
        return c(applicationContext.getResources().getIdentifier(str, TypedValues.Custom.S_STRING, applicationContext.getPackageName()), list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        sdkInitializationListener.onSdkInitialized(this.aCW);
    }

    public static String c(@StringRes int i, List<String> list) {
        String string = getApplicationContext().getResources().getString(i);
        return list != null ? String.format(string, list.toArray()) : string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void cB(String str) {
        BZ().cA(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void cC(String str) {
        BP().a(com.applovin.impl.sdk.c.b.aOD, str);
    }

    public static String cl(String str) {
        return b(str, (List<String>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cz(String str) {
        BN();
        if (x.Fn()) {
            BN().f("AppLovinSdk", str);
        }
        BO().b(new com.applovin.impl.sdk.e.p(this));
    }

    public static String gA(@StringRes int i) {
        return c(i, (List<String>) null);
    }

    public static Context getApplicationContext() {
        return hr;
    }

    public String BA() {
        return BZ().BA();
    }

    public String BB() {
        return BZ().Lv();
    }

    public AppLovinTargetingDataImpl BC() {
        return (AppLovinTargetingDataImpl) this.aAR;
    }

    public AppLovinAdServiceImpl BD() {
        if (this.age == null) {
            synchronized (this.aAT) {
                if (this.age == null) {
                    this.age = new AppLovinAdServiceImpl(this);
                }
            }
        }
        return this.age;
    }

    public AppLovinNativeAdService BE() {
        if (this.aAU == null) {
            synchronized (this.aAV) {
                if (this.aAU == null) {
                    this.aAU = new AppLovinNativeAdService(this);
                }
            }
        }
        return this.aAU;
    }

    public EventServiceImpl BF() {
        if (this.aAW == null) {
            synchronized (this.aAX) {
                if (this.aAW == null) {
                    this.aAW = new EventServiceImpl(this);
                }
            }
        }
        return this.aAW;
    }

    public UserServiceImpl BG() {
        if (this.aAY == null) {
            synchronized (this.aAZ) {
                if (this.aAY == null) {
                    this.aAY = new UserServiceImpl(this);
                }
            }
        }
        return this.aAY;
    }

    public void BH() {
        if (StringUtils.isValidString(this.aCT)) {
            return;
        }
        this.aCT = "max";
        BN();
        if (x.Fn()) {
            BN().f("AppLovinSdk", "Detected mediation provider: MAX");
        }
    }

    @Nullable
    public String BI() {
        boolean z;
        if (StringUtils.isValidString(this.aCT)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Map<String, String> mapBJ = BJ();
        List<String> listB = b(com.applovin.impl.sdk.c.b.aPc);
        Boolean bool = (Boolean) a(com.applovin.impl.sdk.c.b.aPd);
        if (mapBJ.isEmpty() && !bool.booleanValue()) {
            return null;
        }
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            Integer numValueOf = (Integer) a(com.applovin.impl.sdk.c.b.aPb);
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (numValueOf.intValue() <= 0) {
                    break;
                }
                String className = stackTraceElement.getClassName();
                Iterator<String> it = listB.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (className.startsWith(it.next())) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    for (Map.Entry<String, String> entry : mapBJ.entrySet()) {
                        if (className.startsWith(entry.getKey())) {
                            this.aCT = entry.getValue();
                            BN();
                            if (x.Fn()) {
                                BN().f("AppLovinSdk", "Detected mediation provider: " + this.aCT);
                            }
                            return null;
                        }
                    }
                    if (bool.booleanValue()) {
                        arrayList.add(className);
                    }
                    numValueOf = Integer.valueOf(numValueOf.intValue() - 1);
                }
            }
        } catch (Throwable th) {
            Cs().d("AppLovinSdk", "detectMediationProvider", th);
        }
        this.aCT = "unknown";
        BN();
        if (x.Fn()) {
            BN().h("AppLovinSdk", "Unable to detect mediation provider");
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return StringUtils.join(",", arrayList);
    }

    public Activity BK() {
        WeakReference<Activity> weakReference = this.aAJ;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public boolean BL() {
        return this.aCP;
    }

    public a BM() {
        return E(hr);
    }

    public x BN() {
        if (this.logger == null) {
            synchronized (this.aBd) {
                if (this.logger == null) {
                    this.logger = new x(this);
                }
            }
        }
        return this.logger;
    }

    public com.applovin.impl.sdk.e.q BO() {
        if (this.aBe == null) {
            synchronized (this.aBf) {
                if (this.aBe == null) {
                    this.aBe = new com.applovin.impl.sdk.e.q(this);
                }
            }
        }
        return this.aBe;
    }

    public com.applovin.impl.sdk.c.c BP() {
        if (this.aBg == null) {
            synchronized (this.aBh) {
                if (this.aBg == null) {
                    this.aBg = new com.applovin.impl.sdk.c.c(this);
                }
            }
        }
        return this.aBg;
    }

    public com.applovin.impl.sdk.network.b BQ() {
        if (this.aBi == null) {
            synchronized (this.aBj) {
                if (this.aBi == null) {
                    this.aBi = new com.applovin.impl.sdk.network.b(this);
                }
            }
        }
        return this.aBi;
    }

    public com.applovin.impl.sdk.d.g BR() {
        if (this.aBk == null) {
            synchronized (this.aBl) {
                if (this.aBk == null) {
                    this.aBk = new com.applovin.impl.sdk.d.g(this);
                }
            }
        }
        return this.aBk;
    }

    public o BS() {
        if (this.aBo == null) {
            synchronized (this.aBp) {
                if (this.aBo == null) {
                    this.aBo = new o(this);
                }
            }
        }
        return this.aBo;
    }

    @Nullable
    public q BU() {
        if (BT() && this.aBm == null) {
            synchronized (this.aBn) {
                if (this.aBm == null) {
                    this.aBm = new q(this);
                }
            }
        }
        return this.aBm;
    }

    @Nullable
    public p BV() {
        if (BT() && this.aBq == null) {
            synchronized (this.aBr) {
                if (this.aBq == null) {
                    this.aBq = new p(this);
                }
            }
        }
        return this.aBq;
    }

    @Nullable
    public aa BW() {
        if (this.aBt == null) {
            synchronized (this.aBu) {
                if (this.aBt == null) {
                    CG();
                }
            }
        }
        return this.aBt;
    }

    public com.applovin.impl.sdk.c.e BX() {
        if (this.aBv == null) {
            synchronized (this.aBw) {
                if (this.aBv == null) {
                    this.aBv = new com.applovin.impl.sdk.c.e(this);
                }
            }
        }
        return this.aBv;
    }

    public m BY() {
        if (this.aBx == null) {
            synchronized (this.aBy) {
                if (this.aBx == null) {
                    this.aBx = new m(this);
                }
            }
        }
        return this.aBx;
    }

    public com.applovin.impl.sdk.utils.t BZ() {
        if (this.aBz == null) {
            synchronized (this.aBA) {
                if (this.aBz == null) {
                    this.aBz = new com.applovin.impl.sdk.utils.t(this);
                }
            }
        }
        return this.aBz;
    }

    public void Bl() {
        synchronized (this.aCK) {
            if (!this.aCN && !this.iV) {
                Bm();
            }
        }
    }

    public void Bm() {
        synchronized (this.aCK) {
            this.aCN = true;
            BO().KL();
            Bn();
        }
    }

    public boolean Bp() {
        boolean z;
        synchronized (this.aCK) {
            z = this.aCN;
        }
        return z;
    }

    public boolean Bq() {
        return this.aAL;
    }

    public boolean Br() {
        return StringUtils.containsIgnoreCase(getMediationProvider(), "max");
    }

    public boolean Bs() {
        return com.applovin.impl.sdk.utils.u.dE("com.unity3d.player.UnityPlayerActivity");
    }

    public void Bt() {
        String str = (String) BX().b(com.applovin.impl.sdk.c.d.aRj, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE < com.applovin.impl.sdk.utils.u.dG(str)) {
                x.H("AppLovinSdk", "Current version (" + AppLovinSdk.VERSION + ") is older than earlier installed version (" + str + "), which may cause compatibility issues.");
            }
        }
    }

    public void Bu() {
        Ch().Bd();
    }

    public void Bv() {
        final AppLovinSdk.SdkInitializationListener sdkInitializationListener;
        if ((Cl().zY() && Cl().zX() == d.a.UNIFIED) || (sdkInitializationListener = this.aCU) == null) {
            return;
        }
        if (isEnabled()) {
            this.aCU = null;
            this.aCV = null;
            Cx().a(MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS);
        } else {
            if (this.aCV == sdkInitializationListener) {
                return;
            }
            Cx().a(MaxAdapter.InitializationStatus.INITIALIZED_FAILURE);
            if (((Boolean) a(com.applovin.impl.sdk.c.b.aKw)).booleanValue()) {
                this.aCU = null;
            } else {
                this.aCV = sdkInitializationListener;
            }
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.f1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(sdkInitializationListener);
            }
        }, Math.max(0L, ((Long) a(com.applovin.impl.sdk.c.b.aKx)).longValue()));
    }

    public void Bx() {
        x.H("AppLovinSdk", "Resetting SDK state...");
        com.applovin.impl.sdk.d.g gVarBR = BR();
        com.applovin.impl.sdk.d.f fVar = com.applovin.impl.sdk.d.f.aTa;
        long jB = gVarBR.b(fVar);
        BP().JH();
        BP().JF();
        BR().JW();
        BR().b(fVar, jB + 1);
        if (this.aCL.compareAndSet(true, false)) {
            Bm();
        } else {
            this.aCL.set(true);
        }
    }

    public long By() {
        if (this.aAM == 0) {
            return -1L;
        }
        return System.currentTimeMillis() - this.aAM;
    }

    public String Bz() {
        return BZ().Bz();
    }

    public com.applovin.impl.mediation.h CA() {
        if (this.aCz == null) {
            synchronized (this.aCA) {
                if (this.aCz == null) {
                    this.aCz = new com.applovin.impl.mediation.h();
                }
            }
        }
        return this.aCz;
    }

    public com.applovin.impl.mediation.debugger.b CB() {
        if (this.aCB == null) {
            synchronized (this.aCC) {
                if (this.aCB == null) {
                    this.aCB = new com.applovin.impl.mediation.debugger.b(this);
                }
            }
        }
        return this.aCB;
    }

    public y CC() {
        if (this.aCD == null) {
            synchronized (this.aCE) {
                if (this.aCD == null) {
                    this.aCD = new y(this);
                }
            }
        }
        return this.aCD;
    }

    public com.applovin.impl.mediation.d CD() {
        if (this.aCF == null) {
            synchronized (this.aCG) {
                if (this.aCF == null) {
                    this.aCF = new com.applovin.impl.mediation.d(this);
                }
            }
        }
        return this.aCF;
    }

    public com.applovin.impl.mediation.debugger.ui.testmode.c CE() {
        if (this.aCH == null) {
            synchronized (this.aCI) {
                if (this.aCH == null) {
                    this.aCH = new com.applovin.impl.mediation.debugger.ui.testmode.c(this);
                }
            }
        }
        return this.aCH;
    }

    public Activity CF() {
        Activity activityAz = E(getApplicationContext()).Az();
        return activityAz != null ? activityAz : BK();
    }

    public long CJ() {
        return this.aAK;
    }

    public boolean CK() {
        return this.aCO;
    }

    @Nullable
    public String CL() {
        return this.aCT;
    }

    public d Ca() {
        if (this.aBB == null) {
            synchronized (this.aBC) {
                if (this.aBB == null) {
                    this.aBB = new d(this);
                }
            }
        }
        return this.aBB;
    }

    public b Cb() {
        if (this.aBD == null) {
            synchronized (this.aBE) {
                if (this.aBD == null) {
                    this.aBD = new b(this);
                }
            }
        }
        return this.aBD;
    }

    public t Cc() {
        if (this.aBF == null) {
            synchronized (this.aBG) {
                if (this.aBF == null) {
                    this.aBF = new t(this);
                }
            }
        }
        return this.aBF;
    }

    public com.applovin.impl.sdk.d.c Cd() {
        if (this.aBH == null) {
            synchronized (this.aBI) {
                if (this.aBH == null) {
                    this.aBH = new com.applovin.impl.sdk.d.c(this);
                }
            }
        }
        return this.aBH;
    }

    public SessionTracker Ce() {
        if (this.aBJ == null) {
            synchronized (this.aBK) {
                if (this.aBJ == null) {
                    this.aBJ = new SessionTracker(this);
                }
            }
        }
        return this.aBJ;
    }

    public u Cf() {
        if (this.aBL == null) {
            synchronized (this.aBM) {
                if (this.aBL == null) {
                    this.aBL = new u(this);
                }
            }
        }
        return this.aBL;
    }

    public ae Cg() {
        if (this.aBN == null) {
            synchronized (this.aBO) {
                if (this.aBN == null) {
                    this.aBN = new ae(this);
                }
            }
        }
        return this.aBN;
    }

    public k Ch() {
        if (this.aBR == null) {
            synchronized (this.aBS) {
                if (this.aBR == null) {
                    this.aBR = new k(this);
                }
            }
        }
        return this.aBR;
    }

    public com.applovin.impl.sdk.utils.q Ci() {
        if (this.aBT == null) {
            synchronized (this.aBU) {
                if (this.aBT == null) {
                    this.aBT = new com.applovin.impl.sdk.utils.q(this);
                }
            }
        }
        return this.aBT;
    }

    public i Cj() {
        if (this.aBV == null) {
            synchronized (this.aBW) {
                if (this.aBV == null) {
                    this.aBV = new i(this);
                }
            }
        }
        return this.aBV;
    }

    public AppLovinSdkSettings.TermsAndPrivacyPolicyFlowSettings Ck() {
        return getSettings().getBackingConsentFlowSettings();
    }

    public com.applovin.impl.privacy.a.c Cl() {
        if (this.aBX == null) {
            synchronized (this.aBY) {
                if (this.aBX == null) {
                    this.aBX = new com.applovin.impl.privacy.a.c(this);
                }
            }
        }
        return this.aBX;
    }

    public com.applovin.impl.privacy.b.b Cm() {
        if (this.aBZ == null) {
            synchronized (this.aCa) {
                if (this.aBZ == null) {
                    this.aBZ = new com.applovin.impl.privacy.b.b(this);
                }
            }
        }
        return this.aBZ;
    }

    public CmpServiceImpl Cn() {
        if (this.aBa == null) {
            synchronized (this.aBb) {
                if (this.aBa == null) {
                    this.aBa = new CmpServiceImpl(this);
                }
            }
        }
        return this.aBa;
    }

    public com.applovin.impl.a.a.a Co() {
        if (this.aCb == null) {
            synchronized (this.aCc) {
                if (this.aCb == null) {
                    this.aCb = new com.applovin.impl.a.a.a(this);
                }
            }
        }
        return this.aCb;
    }

    public com.applovin.impl.sdk.a.f Cp() {
        if (this.aCd == null) {
            synchronized (this.aCe) {
                if (this.aCd == null) {
                    this.aCd = new com.applovin.impl.sdk.a.f(this);
                }
            }
        }
        return this.aCd;
    }

    public w Cq() {
        if (this.aCf == null) {
            synchronized (this.aCg) {
                if (this.aCf == null) {
                    this.aCf = new w(this);
                }
            }
        }
        return this.aCf;
    }

    public ArrayService Cr() {
        if (this.aCh == null) {
            synchronized (this.aCi) {
                if (this.aCh == null) {
                    this.aCh = new ArrayService(this);
                }
            }
        }
        return this.aCh;
    }

    public r Cs() {
        if (this.aCj == null) {
            synchronized (this.aCk) {
                if (this.aCj == null) {
                    this.aCj = new r(this);
                }
            }
        }
        return this.aCj;
    }

    public PostbackServiceImpl Ct() {
        if (this.aCl == null) {
            synchronized (this.aCm) {
                if (this.aCl == null) {
                    this.aCl = new PostbackServiceImpl(this);
                }
            }
        }
        return this.aCl;
    }

    public com.applovin.impl.sdk.network.f Cu() {
        if (this.aCn == null) {
            synchronized (this.aCo) {
                if (this.aCn == null) {
                    this.aCn = new com.applovin.impl.sdk.network.f(this);
                }
            }
        }
        return this.aCn;
    }

    public f Cv() {
        if (this.aCp == null) {
            synchronized (this.aCq) {
                if (this.aCp == null) {
                    this.aCp = new f(this);
                }
            }
        }
        return this.aCp;
    }

    public com.applovin.impl.mediation.f Cw() {
        if (this.aCr == null) {
            synchronized (this.aCs) {
                if (this.aCr == null) {
                    this.aCr = new com.applovin.impl.mediation.f(this);
                }
            }
        }
        return this.aCr;
    }

    public com.applovin.impl.mediation.e Cx() {
        if (this.aCt == null) {
            synchronized (this.aCu) {
                if (this.aCt == null) {
                    this.aCt = new com.applovin.impl.mediation.e(this);
                }
            }
        }
        return this.aCt;
    }

    public MediationServiceImpl Cy() {
        if (this.aCv == null) {
            synchronized (this.aCw) {
                if (this.aCv == null) {
                    this.aCv = new MediationServiceImpl(this);
                }
            }
        }
        return this.aCv;
    }

    public com.applovin.impl.mediation.a.d Cz() {
        if (this.aCx == null) {
            synchronized (this.aCy) {
                if (this.aCx == null) {
                    this.aCx = new com.applovin.impl.mediation.a.d(this);
                }
            }
        }
        return this.aCx;
    }

    public com.applovin.impl.sdk.network.d G(Context context) {
        if (this.aBP == null) {
            synchronized (this.aBQ) {
                if (this.aBP == null) {
                    this.aBP = new com.applovin.impl.sdk.network.d(context);
                }
            }
        }
        return this.aBP;
    }

    public <T> T a(com.applovin.impl.sdk.c.b<T> bVar) {
        return (T) BP().a(bVar);
    }

    public <T> T a(com.applovin.impl.sdk.c.d<T> dVar) {
        return (T) b(dVar, (Object) null);
    }

    public <T> T a(String str, @Nullable T t, Class<?> cls, SharedPreferences sharedPreferences) {
        return (T) com.applovin.impl.sdk.c.e.a(str, t, cls, sharedPreferences);
    }

    public void a(SharedPreferences sharedPreferences) {
        BX().a(sharedPreferences);
    }

    public <T> void a(com.applovin.impl.sdk.c.d<T> dVar, @Nullable T t) {
        BX().a(dVar, t);
    }

    public <T> void a(com.applovin.impl.sdk.c.d<T> dVar, @Nullable T t, SharedPreferences sharedPreferences) {
        BX().a(dVar, t, sharedPreferences);
    }

    public void a(AppLovinSdk appLovinSdk) {
        this.aBc = appLovinSdk;
    }

    public void a(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        this.aAI = str;
        this.aAK = System.currentTimeMillis();
        this.aCN = true;
        this.aAP = appLovinSdkSettings;
        this.aAQ = new h();
        this.aAR = new AppLovinTargetingDataImpl();
        this.aCW = new SdkConfigurationImpl(null, this);
        hr = context.getApplicationContext();
        if (!CI()) {
            throw new RuntimeException("As of version 12.0.0, the AppLovin MAX SDK requires Java 8. For more information visit our docs: https://dash.applovin.com/documentation/mediation/android/getting-started/integration");
        }
        if (context instanceof Activity) {
            this.aAJ = new WeakReference<>((Activity) context);
        }
        if ("HSrCHRtOan6wp2kwOIGJC1RDtuSrF2mWVbio2aBcMHX9KF3iTJ1lLSzCKP1ZSo5yNolPNw1kCTtWpxELFF4ah1".equalsIgnoreCase(str)) {
            this.aAL = true;
            aAD = this;
        } else if (aAC == null) {
            aAC = this;
        } else {
            x.H("AppLovinSdk", "Multiple SDK instances detected");
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        boolean z = context.getSharedPreferences("com.applovin.sdk.1", 0).getBoolean("com.applovin.sdk." + com.applovin.impl.sdk.utils.u.dD(str) + ".lisvib", false);
        this.aAO = z;
        if (z) {
            com.applovin.impl.sdk.utils.u.k(new Runnable() { // from class: com.applovin.impl.sdk.m1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Bk();
                }
            });
        } else {
            Bj();
            Bk();
        }
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
    }

    public <T> void a(String str, @Nullable T t, SharedPreferences.Editor editor) {
        BX().a(str, t, editor);
    }

    public boolean a(com.applovin.impl.sdk.c.b<String> bVar, MaxAdFormat maxAdFormat) {
        return c(bVar).contains(maxAdFormat);
    }

    public void aK(boolean z) {
        synchronized (this.aCK) {
            this.aCN = false;
            this.iV = z;
        }
        if (z) {
            List<String> listB = b(com.applovin.impl.sdk.c.a.aJe);
            if (listB.isEmpty()) {
                BO().KM();
                Bv();
                return;
            }
            Long l = (Long) a(com.applovin.impl.sdk.c.a.aJf);
            com.applovin.impl.sdk.e.ab abVar = new com.applovin.impl.sdk.e.ab(this, true, "timeoutInitAdapters", new Runnable() { // from class: com.applovin.impl.sdk.l1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.CO();
                }
            });
            BN();
            if (x.Fn()) {
                BN().f("AppLovinSdk", "Waiting for required adapters to init: " + listB + " - timing out in " + l + "ms...");
            }
            BO().a(abVar, q.b.MEDIATION_TIMEOUT, l.longValue(), true);
        }
    }

    public <T> T b(com.applovin.impl.sdk.c.d<T> dVar, @Nullable T t) {
        return (T) BX().b(dVar, t);
    }

    public <T> T b(com.applovin.impl.sdk.c.d<T> dVar, @Nullable T t, SharedPreferences sharedPreferences) {
        return (T) BX().b(dVar, t, sharedPreferences);
    }

    public List<String> b(com.applovin.impl.sdk.c.b<String> bVar) {
        return BP().b(bVar);
    }

    public <T> void b(com.applovin.impl.sdk.c.d<T> dVar) {
        BX().b(dVar);
    }

    public void bN(long j) {
        BY().bL(j);
    }

    public List<MaxAdFormat> c(com.applovin.impl.sdk.c.b<String> bVar) {
        return BP().c(bVar);
    }

    public void cA(final String str) {
        BN();
        if (x.Fn()) {
            BN().f("AppLovinSdk", "Setting user id: " + str);
        }
        if (StringUtils.isValidString(str) && str.length() > com.applovin.impl.sdk.utils.u.gX(8)) {
            x.H("AppLovinSdk", "Provided user id longer than supported (" + str.length() + " bytes, " + com.applovin.impl.sdk.utils.u.gX(8) + " maximum)");
        }
        if (com.applovin.impl.sdk.utils.u.Lx() && this.aAO) {
            com.applovin.impl.sdk.utils.u.k(new Runnable() { // from class: com.applovin.impl.sdk.n1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.cB(str);
                }
            });
        } else {
            BZ().cA(str);
        }
    }

    public void e(com.applovin.impl.mediation.b.f fVar) {
        if (BO().isInitialized()) {
            return;
        }
        List<String> listB = b(com.applovin.impl.sdk.c.a.aJe);
        if (listB.size() <= 0 || !Cx().tV().keySet().containsAll(listB)) {
            return;
        }
        BN();
        if (x.Fn()) {
            BN().f("AppLovinSdk", "All required adapters initialized");
        }
        BO().KM();
        Bv();
    }

    public boolean g(MaxAdFormat maxAdFormat) {
        List<MaxAdFormat> list = this.aCJ;
        return (list == null || list.size() <= 0 || this.aCJ.contains(maxAdFormat)) ? false : true;
    }

    public AppLovinSdkConfiguration getConfiguration() {
        return this.aCW;
    }

    public String getMediationProvider() {
        String str = (String) a(com.applovin.impl.sdk.c.d.aRN);
        return StringUtils.isValidString(str) ? str : this.aAS;
    }

    public String getSdkKey() {
        return this.aAI;
    }

    public AppLovinSdkSettings getSettings() {
        return this.aAP;
    }

    public AppLovinUserSegment getUserSegment() {
        return this.aAQ;
    }

    public AppLovinSdk getWrappingSdk() {
        return this.aBc;
    }

    public void initializeSdk(final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        if (!isEnabled()) {
            this.aCU = sdkInitializationListener;
        } else if (sdkInitializationListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.k1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(sdkInitializationListener);
                }
            });
        }
    }

    public boolean isEnabled() {
        boolean z;
        synchronized (this.aCK) {
            z = this.iV;
        }
        return z;
    }

    public void setMediationProvider(String str) {
        BN();
        if (x.Fn()) {
            BN().f("AppLovinSdk", "setMediationProvider(mediationProvider=" + str + ")");
        }
        if (str != null && (str.isEmpty() || str.length() > 64 || !StringUtils.isAlphaNumeric(str))) {
            x.H("AppLovinSdk", "Mediation provider set to invalid value: " + str + ". Please use a valid mediation provider (e.g., AppLovinMediationProvider.MAX)");
            return;
        }
        this.aAS = str;
        if (com.applovin.impl.sdk.utils.u.Lx() && this.aAO) {
            com.applovin.impl.sdk.utils.u.k(new Runnable() { // from class: com.applovin.impl.sdk.j1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.CM();
                }
            });
        } else {
            b(com.applovin.impl.sdk.c.d.aRN);
        }
    }

    public void setPluginVersion(final String str) {
        x.D("AppLovinSdk", "Setting plugin version: " + str);
        if (com.applovin.impl.sdk.utils.u.Lx() && this.aAO) {
            com.applovin.impl.sdk.utils.u.k(new Runnable() { // from class: com.applovin.impl.sdk.h1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.cC(str);
                }
            });
        } else {
            BP().a(com.applovin.impl.sdk.c.b.aOD, str);
        }
    }

    public void showCreativeDebugger() {
        Co().showCreativeDebugger();
    }

    public void showMediationDebugger() {
        showMediationDebugger(null);
    }

    public void showMediationDebugger(@Nullable Map<String, List<?>> map) {
        CB().showMediationDebugger(map);
    }

    @NonNull
    public String toString() {
        return "CoreSdk{sdkKey='" + this.aAI + "', enabled=" + this.iV + ", isFirstSession=" + this.aCO + '}';
    }
}
