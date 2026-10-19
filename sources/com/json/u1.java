package com.json;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Base64;
import com.json.c4;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceSegment;
import com.json.mediationsdk.events.ISErrorListener;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.p;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u1 implements g5 {
    private int[] A;
    private int[] B;
    private int[] C;
    int G;
    String H;
    String I;
    Set<Integer> J;
    private f K;
    private IronSourceSegment L;
    private nb M;
    private ISErrorListener N;
    private boolean l;
    private a3 p;
    private pd q;
    private ArrayList<a4> r;
    private int t;
    private String u;
    private Context v;
    private int[] z;
    final int a = 1;
    final int b = 100;
    final int c = 5000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f6648d = 90000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f6649e = 1024;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f6650f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final String f6651g = "supersonic_sdk.db";
    final String h = IronSourceConstants.EVENTS_PROVIDER;
    final String i = "placement";
    private final String j = v4.r0;
    private final String k = "mt";
    private boolean m = false;
    private boolean n = false;
    private int o = -1;
    private boolean s = true;
    private int w = 100;
    private int x = 5000;
    private int y = 1;
    private Map<String, String> D = new HashMap();
    private Map<String, String> E = new HashMap();
    private String F = "";
    private final Object O = new Object();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u1.this.e();
        }
    }

    class b implements Runnable {
        final /* synthetic */ a4 a;
        final /* synthetic */ IronSource.AD_UNIT b;

        b(a4 a4Var, IronSource.AD_UNIT ad_unit) {
            this.a = a4Var;
            this.b = ad_unit;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a("eventSessionId", u1.this.u);
            String connectionType = IronSourceUtils.getConnectionType(u1.this.v);
            if (u1.this.O(this.a)) {
                this.a.a("connectionType", connectionType);
            }
            if (u1.this.r(connectionType, this.a)) {
                a4 a4Var = this.a;
                a4Var.a(u1.this.t(a4Var));
            }
            int iA = u1.this.a(this.a.c(), this.b);
            if (iA != e.NOT_SUPPORTED.a()) {
                this.a.a("adUnit", Integer.valueOf(iA));
            }
            u1.this.f(this.a, "reason");
            u1.this.f(this.a, IronSourceConstants.EVENTS_EXT1);
            if (!u1.this.E.isEmpty()) {
                for (Map.Entry entry : u1.this.E.entrySet()) {
                    if (!this.a.b().has((String) entry.getKey()) && entry.getKey() != "eventId" && entry.getKey() != "timestamp") {
                        this.a.a((String) entry.getKey(), entry.getValue());
                    }
                }
            }
            if (u1.this.S(this.a)) {
                if (u1.this.P(this.a) && !u1.this.G(this.a)) {
                    this.a.a("sessionDepth", Integer.valueOf(u1.this.y(this.a)));
                }
                if (u1.this.U(this.a)) {
                    u1.this.K(this.a);
                } else if (!TextUtils.isEmpty(u1.this.E(this.a.c())) && u1.this.W(this.a)) {
                    a4 a4Var2 = this.a;
                    a4Var2.a("placement", u1.this.E(a4Var2.c()));
                }
                long firstSessionTimestamp = IronSourceUtils.getFirstSessionTimestamp(u1.this.v);
                if (firstSessionTimestamp != -1) {
                    this.a.a(IronSourceConstants.FIRST_SESSION_TIMESTAMP, Long.valueOf(firstSessionTimestamp));
                }
                IronLog.EVENT.verbose(this.a.toString());
                u1.this.r.add(this.a);
                u1.B(u1.this);
            }
            u1 u1Var = u1.this;
            boolean zL = u1Var.s(u1Var.B) ? u1.this.l(this.a.c(), u1.this.B) : u1.this.D(this.a);
            if (!u1.this.m && zL) {
                u1.this.m = true;
            }
            if (u1.this.p != null) {
                if (u1.this.N()) {
                    u1.this.J();
                    return;
                }
                u1 u1Var2 = u1.this;
                if (u1Var2.x(u1Var2.r) || zL) {
                    u1.this.e();
                }
            }
        }
    }

    class c implements h5 {

        class a implements Runnable {
            final /* synthetic */ boolean a;
            final /* synthetic */ ArrayList b;

            a(boolean z, ArrayList arrayList) {
                this.a = z;
                this.b = arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (this.a) {
                        ArrayList<a4> arrayListA = u1.this.p.a(u1.this.I);
                        u1.this.t = arrayListA.size() + u1.this.r.size();
                    } else {
                        IronLog.INTERNAL.error("Failed to send events. Saving them back to storage.");
                        u1.this.j(this.b);
                    }
                } catch (Exception e2) {
                    if (u1.this.N != null) {
                        u1.this.N.onError(new IllegalStateException("Error on sending data ", e2));
                    }
                }
                c.this.a(this.b);
            }
        }

        c() {
        }

        public void a(ArrayList<a4> arrayList) {
            if (arrayList != null) {
                try {
                    arrayList.clear();
                } catch (Exception e2) {
                    IronLog.INTERNAL.error("clearData exception: " + e2.getMessage());
                }
            }
        }

        @Override // com.json.h5
        public synchronized void a(ArrayList<a4> arrayList, boolean z) {
            u1.this.K.b(new a(z, arrayList));
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u1.this.J();
        }
    }

    public enum e {
        NOT_SUPPORTED(-1),
        OFFERWALL(1),
        INTERSTITIAL(2),
        REWARDED_VIDEO(3),
        NATIVE_AD(4),
        BANNER(8);

        private int h;

        e(int i) {
            this.h = i;
        }

        public int a() {
            return this.h;
        }
    }

    private class f extends HandlerThread {
        private Handler a;

        f(String str) {
            super(str);
        }

        void a() {
            this.a = new Handler(getLooper());
        }

        void b(Runnable runnable) {
            this.a.post(runnable);
        }
    }

    static /* synthetic */ int B(u1 u1Var) {
        int i = u1Var.t;
        u1Var.t = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G(a4 a4Var) {
        JSONObject jSONObjectB = a4Var.b();
        if (jSONObjectB == null) {
            return false;
        }
        return jSONObjectB.has("sessionDepth");
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
    public void J() {
        ArrayList<a4> arrayListA;
        try {
            this.m = false;
            ArrayList<a4> arrayList = new ArrayList<>();
            try {
                synchronized (this.O) {
                    arrayListA = this.p.a(this.I);
                    this.p.b(this.I);
                }
                c4.c cVar = new c4.c(new c4.a(arrayListA, this.r), this.x);
                this.p.a(cVar.a(), this.I);
                arrayList.addAll(cVar.b());
            } catch (Throwable th) {
                IronLog.INTERNAL.error("CombinedEventList exception: " + th.getMessage());
                ISErrorListener iSErrorListener = this.N;
                if (iSErrorListener != null) {
                    iSErrorListener.onError(new IllegalStateException("Combined event exception: ", th));
                }
                arrayList.clear();
                arrayList.addAll(this.r);
            }
            if (arrayList.size() > 0) {
                this.r.clear();
                this.t = 0;
                JSONObject jSONObjectB = s4.a().b();
                try {
                    k(jSONObjectB);
                    String strB = b();
                    if (!TextUtils.isEmpty(strB)) {
                        jSONObjectB.put(v4.r0, strB);
                    }
                    String strR = p.o().r();
                    if (!TextUtils.isEmpty(strR)) {
                        jSONObjectB.put("mt", strR);
                    }
                    Map<String, String> mapC = c();
                    if (!mapC.isEmpty()) {
                        for (Map.Entry<String, String> entry : mapC.entrySet()) {
                            if (!jSONObjectB.has(entry.getKey())) {
                                jSONObjectB.put(entry.getKey(), entry.getValue());
                            }
                        }
                    }
                    JSONObject jSONObjectA = new g4().a();
                    Iterator<String> itKeys = jSONObjectA.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObjectB.put(next, jSONObjectA.get(next));
                    }
                } catch (Throwable th2) {
                    IronLog.INTERNAL.error("Exception while building the event general properties: " + th2.getMessage());
                }
                String strA = this.q.a(arrayList, jSONObjectB);
                if (TextUtils.isEmpty(strA)) {
                    IronLog.INTERNAL.error("Failed to parse events.");
                    ISErrorListener iSErrorListener2 = this.N;
                    if (iSErrorListener2 != null) {
                        iSErrorListener2.onError(new IllegalStateException("Event parse failed"));
                        return;
                    }
                    return;
                }
                if (this.n) {
                    try {
                        strA = Base64.encodeToString(w7.a(strA, this.o), 0);
                    } catch (Exception e2) {
                        ISErrorListener iSErrorListener3 = this.N;
                        if (iSErrorListener3 != null) {
                            iSErrorListener3.onError(new IllegalStateException("Error on compression: ", e2));
                        }
                    }
                }
                IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new h4(new c(), strA, this.q.f(), arrayList));
            }
        } catch (Throwable th3) {
            IronLog.INTERNAL.error("Send event exception: " + th3.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N() {
        return (this.t >= this.w || this.m) && this.l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean S(a4 a4Var) {
        if (a4Var == null) {
            return false;
        }
        if (s(this.z)) {
            return true ^ l(a4Var.c(), this.z);
        }
        if (s(this.A)) {
            return l(a4Var.c(), this.A);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i, IronSource.AD_UNIT ad_unit) {
        e eVar;
        int iA = e.NOT_SUPPORTED.a();
        if (ad_unit == IronSource.AD_UNIT.OFFERWALL || i == 15 || (i >= 300 && i < 400)) {
            eVar = e.OFFERWALL;
        } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO || ((i >= 1000 && i < 2000) || (i >= 91000 && i < 92000))) {
            eVar = e.REWARDED_VIDEO;
        } else if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL || ((i >= 2000 && i < 3000) || (i >= 92000 && i < 93000))) {
            eVar = e.INTERSTITIAL;
        } else if (ad_unit == IronSource.AD_UNIT.BANNER || ((i >= 3000 && i < 4000) || (i >= 93000 && i < 94000))) {
            eVar = e.BANNER;
        } else {
            if (ad_unit != IronSource.AD_UNIT.NATIVE_AD && ((i < 4000 || i >= 5000) && (i < 94000 || i >= 95000))) {
                return iA;
            }
            eVar = e.NATIVE_AD;
        }
        return eVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (this.O) {
            this.p.a(this.r, this.I);
            this.r.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(a4 a4Var, String str) {
        g(a4Var, str, 1024);
    }

    private void g(a4 a4Var, String str, int i) {
        JSONObject jSONObjectB = a4Var.b();
        if (jSONObjectB == null || !jSONObjectB.has(str)) {
            return;
        }
        try {
            String strOptString = jSONObjectB.optString(str, null);
            if (strOptString != null) {
                a4Var.a(str, strOptString.substring(0, Math.min(strOptString.length(), i)));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void k(JSONObject jSONObject) {
        try {
            IronSourceSegment ironSourceSegment = this.L;
            if (ironSourceSegment != null) {
                if (ironSourceSegment.getAge() > 0) {
                    jSONObject.put("age", this.L.getAge());
                }
                if (!TextUtils.isEmpty(this.L.getGender())) {
                    jSONObject.put(IronSourceSegment.GENDER, this.L.getGender());
                }
                if (this.L.getLevel() > 0) {
                    jSONObject.put(IronSourceSegment.LEVEL, this.L.getLevel());
                }
                if (this.L.getIsPaying() != null) {
                    jSONObject.put(IronSourceSegment.PAYING, this.L.getIsPaying().get());
                }
                if (this.L.getIapt() > 0.0d) {
                    jSONObject.put(IronSourceSegment.IAPT, this.L.getIapt());
                }
                if (this.L.getUcd() > 0) {
                    jSONObject.put(IronSourceSegment.USER_CREATION_DATE, this.L.getUcd());
                }
            }
            nb nbVar = this.M;
            if (nbVar != null) {
                String strB = nbVar.b();
                if (!TextUtils.isEmpty(strB)) {
                    jSONObject.put("segmentId", strB);
                }
                JSONObject jSONObjectA = this.M.a();
                Iterator<String> itKeys = jSONObjectA.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject.put(next, jSONObjectA.get(next));
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l(int i, int[] iArr) {
        if (!s(iArr)) {
            return false;
        }
        for (int i2 : iArr) {
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean r(String str, a4 a4Var) {
        if (str.equalsIgnoreCase("none")) {
            return s(this.C) ? l(a4Var.c(), this.C) : this.J.contains(Integer.valueOf(a4Var.c()));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s(int[] iArr) {
        return iArr != null && iArr.length > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int t(a4 a4Var) {
        return a4Var.c() + 90000;
    }

    private void v(String str) {
        pd pdVar = this.q;
        if (pdVar == null || !pdVar.c().equals(str)) {
            this.q = qd.a(str, this.G);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean x(ArrayList<a4> arrayList) {
        return arrayList != null && arrayList.size() >= this.y;
    }

    abstract void C();

    protected abstract boolean D(a4 a4Var);

    protected abstract String E(int i);

    void F() {
        this.r = new ArrayList<>();
        this.t = 0;
        this.q = qd.a(this.H, this.G);
        f fVar = new f(this.I + "EventThread");
        this.K = fVar;
        fVar.start();
        this.K.a();
        this.u = IronSourceUtils.getSessionId();
        this.J = new HashSet();
        C();
    }

    protected int I(int i) {
        return a(i, (IronSource.AD_UNIT) null);
    }

    protected abstract void K(a4 a4Var);

    protected boolean O(a4 a4Var) {
        return (a4Var.c() == 40 || a4Var.c() == 41 || a4Var.c() == 50 || a4Var.c() == 51 || a4Var.c() == 52) ? false : true;
    }

    protected boolean P(a4 a4Var) {
        return (a4Var.c() == 14 || a4Var.c() == 114 || a4Var.c() == 514 || a4Var.c() == 140 || a4Var.c() == 40 || a4Var.c() == 41 || a4Var.c() == 50 || a4Var.c() == 51 || a4Var.c() == 52) ? false : true;
    }

    protected abstract boolean U(a4 a4Var);

    protected abstract boolean W(a4 a4Var);

    @Override // com.json.g5
    public void a(int i) {
        if (i > 0) {
            this.x = i;
        }
    }

    public synchronized void a(Context context, IronSourceSegment ironSourceSegment) {
        String defaultEventsFormatterType = IronSourceUtils.getDefaultEventsFormatterType(context, this.I, this.H);
        this.H = defaultEventsFormatterType;
        v(defaultEventsFormatterType);
        this.q.e(IronSourceUtils.getDefaultEventsURL(context, this.I, null));
        this.p = a3.a(context, "supersonic_sdk.db", 5);
        this.K.b(new a());
        this.z = IronSourceUtils.getDefaultOptOutEvents(context, this.I);
        this.A = IronSourceUtils.getDefaultOptInEvents(context, this.I);
        this.B = IronSourceUtils.getDefaultTriggerEvents(context, this.I);
        this.C = IronSourceUtils.getDefaultNonConnectivityEvents(context, this.I);
        this.L = ironSourceSegment;
        this.v = context;
    }

    @Override // com.json.g5
    public synchronized void a(a4 a4Var) {
        a(a4Var, (IronSource.AD_UNIT) null);
    }

    public synchronized void a(a4 a4Var, IronSource.AD_UNIT ad_unit) {
        if (a4Var != null) {
            if (this.s) {
                this.K.b(new b(a4Var, ad_unit));
            }
        }
    }

    public void a(IronSourceSegment ironSourceSegment) {
        this.L = ironSourceSegment;
    }

    public void a(ISErrorListener iSErrorListener) {
        this.N = iSErrorListener;
    }

    public synchronized void a(nb nbVar) {
        this.M = nbVar;
    }

    public void a(String str) {
        this.F = str;
    }

    @Override // com.json.g5
    public void a(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.H = str;
        IronSourceUtils.saveDefaultEventsFormatterType(context, this.I, str);
        v(str);
    }

    public void a(Map<String, String> map) {
        this.D.putAll(map);
    }

    public void a(Map<String, Object> map, int i, String str) {
        map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(i));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        map.put(IronSourceConstants.AUCTION_FALLBACK, str);
    }

    @Override // com.json.g5
    public void a(boolean z) {
        this.n = z;
    }

    @Override // com.json.g5
    public void a(int[] iArr, Context context) {
        this.A = iArr;
        IronSourceUtils.saveDefaultOptInEvents(context, this.I, iArr);
    }

    public String b() {
        return this.F;
    }

    @Override // com.json.g5
    public void b(int i) {
        if (i > 0) {
            this.w = i;
        }
    }

    @Override // com.json.g5
    public void b(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        pd pdVar = this.q;
        if (pdVar != null) {
            pdVar.e(str);
        }
        IronSourceUtils.saveDefaultEventsURL(context, this.I, str);
    }

    public void b(Map<String, String> map) {
        this.E.putAll(map);
    }

    @Override // com.json.g5
    public void b(boolean z) {
        this.s = z;
    }

    @Override // com.json.g5
    public void b(int[] iArr, Context context) {
        this.B = iArr;
        IronSourceUtils.saveDefaultTriggerEvents(context, this.I, iArr);
    }

    public Map<String, String> c() {
        return this.D;
    }

    @Override // com.json.g5
    public void c(int i) {
        if (i > 0) {
            this.y = i;
        }
    }

    public void c(boolean z) {
        this.l = z;
    }

    @Override // com.json.g5
    public void c(int[] iArr, Context context) {
        this.z = iArr;
        IronSourceUtils.saveDefaultOptOutEvents(context, this.I, iArr);
    }

    @Override // com.json.g5
    public void d(int i) {
        this.o = i;
    }

    @Override // com.json.g5
    public void d(int[] iArr, Context context) {
        this.C = iArr;
        IronSourceUtils.saveDefaultNonConnectivityEvents(context, this.I, iArr);
    }

    public void h() {
        this.K.b(new d());
    }

    protected void j(ArrayList<a4> arrayList) {
        if (arrayList != null) {
            synchronized (this.O) {
                this.p.a(arrayList, this.I);
                this.t = this.p.a(this.I).size() + this.r.size();
            }
        }
    }

    protected abstract int y(a4 a4Var);
}
