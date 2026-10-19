package com.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.os.CountDownTimer;
import android.util.Log;
import com.json.MessageToNative;
import com.json.b4;
import com.json.ca;
import com.json.da;
import com.json.e2;
import com.json.g9;
import com.json.gb;
import com.json.h6;
import com.json.i6;
import com.json.j3;
import com.json.j6;
import com.json.k3;
import com.json.md;
import com.json.o2;
import com.json.o4;
import com.json.o6;
import com.json.p4;
import com.json.p6;
import com.json.q2;
import com.json.q5;
import com.json.r9;
import com.json.s3;
import com.json.sdk.IronSourceNetwork;
import com.json.sdk.controller.f;
import com.json.sdk.controller.k;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.Logger;
import com.json.uc;
import com.json.x2;
import com.json.y2;
import com.json.z2;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e implements com.json.sdk.controller.g, com.json.sdk.controller.k {
    private com.json.sdk.controller.k b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CountDownTimer f6565d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final q5 f6568g;
    private final md h;
    private final r9 k;
    private final String a = e.class.getSimpleName();
    private h6.b c = h6.b.None;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e2 f6566e = new e2("NativeCommandExecutor");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e2 f6567f = new e2("ControllerCommandsExecutor");
    private final Map<String, k.a> i = new HashMap();
    private final Map<String, k.b> j = new HashMap();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ da c;

        a(String str, String str2, da daVar) {
            this.a = str;
            this.b = str2;
            this.c = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c);
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ j3 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ z2 f6570d;

        b(String str, String str2, j3 j3Var, z2 z2Var) {
            this.a = str;
            this.b = str2;
            this.c = j3Var;
            this.f6570d = z2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c, this.f6570d);
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ z2 b;

        c(JSONObject jSONObject, z2 z2Var) {
            this.a = jSONObject;
            this.b = z2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ j3 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ y2 f6572d;

        d(String str, String str2, j3 j3Var, y2 y2Var) {
            this.a = str;
            this.b = str2;
            this.c = j3Var;
            this.f6572d = y2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c, this.f6572d);
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.e$e, reason: collision with other inner class name */
    class RunnableC0365e implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ y2 b;

        RunnableC0365e(String str, y2 y2Var) {
            this.a = str;
            this.b = y2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ j3 a;
        final /* synthetic */ Map b;
        final /* synthetic */ y2 c;

        f(j3 j3Var, Map map, y2 y2Var) {
            this.a = j3Var;
            this.b = map;
            this.c = y2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            o6.a(gb.j, new j6().a(b4.u, this.a.f()).a(b4.v, p6.a(this.a, h6.e.Interstitial)).a(b4.w, Boolean.valueOf(p6.a(this.a))).a(b4.G, Long.valueOf(com.json.j.a.b(this.a.h()))).a());
            if (e.this.b != null) {
                e.this.b.b(this.a, this.b, this.c);
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ y2 b;

        g(JSONObject jSONObject, y2 y2Var) {
            this.a = jSONObject;
            this.b = y2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    class h implements Runnable {
        final /* synthetic */ j3 a;
        final /* synthetic */ Map b;
        final /* synthetic */ y2 c;

        h(j3 j3Var, Map map, y2 y2Var) {
            this.a = j3Var;
            this.b = map;
            this.c = y2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c);
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ j3 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ x2 f6576d;

        i(String str, String str2, j3 j3Var, x2 x2Var) {
            this.a = str;
            this.b = str2;
            this.c = j3Var;
            this.f6576d = x2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c, this.f6576d);
            }
        }
    }

    class j implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ x2 b;

        j(JSONObject jSONObject, x2 x2Var) {
            this.a = jSONObject;
            this.b = x2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    class k implements k.a {
        k() {
        }

        @Override // com.ironsource.sdk.controller.k.a
        public void a(f.CallbackToNative callbackToNative) {
            k.a aVar = (k.a) e.this.i.remove(callbackToNative.c());
            if (aVar != null) {
                aVar.a(callbackToNative);
            }
        }
    }

    class l implements Runnable {
        final /* synthetic */ j3 a;

        l(j3 j3Var) {
            this.a = j3Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a);
            }
        }
    }

    class m implements Runnable {
        final /* synthetic */ j3 a;
        final /* synthetic */ Map b;
        final /* synthetic */ x2 c;

        m(j3 j3Var, Map map, x2 x2Var) {
            this.a = j3Var;
            this.b = map;
            this.c = x2Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c);
            }
        }
    }

    class n implements Runnable {
        final /* synthetic */ k.a a;
        final /* synthetic */ f.MessageToController b;

        n(k.a aVar, f.MessageToController messageToController) {
            this.a = aVar;
            this.b = messageToController;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                if (this.a != null) {
                    e.this.i.put(this.b.getMsgId(), this.a);
                }
                e.this.b.a(this.b, this.a);
            }
        }
    }

    class o implements Runnable {
        final /* synthetic */ JSONObject a;

        o(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a);
            }
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.destroy();
                e.this.b = null;
            }
        }
    }

    class q implements k.b {
        q() {
        }

        @Override // com.ironsource.sdk.controller.k.b
        public void a(MessageToNative messageToNative) {
            k.b bVar = (k.b) e.this.j.get(messageToNative.d());
            if (bVar != null) {
                bVar.a(messageToNative);
            }
        }
    }

    class r implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ q2 b;
        final /* synthetic */ uc c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ k3 f6579d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f6580e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ s3 f6581f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f6582g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;

        r(Context context, q2 q2Var, uc ucVar, k3 k3Var, int i, s3 s3Var, String str, String str2, String str3) {
            this.a = context;
            this.b = q2Var;
            this.c = ucVar;
            this.f6579d = k3Var;
            this.f6580e = i;
            this.f6581f = s3Var;
            this.f6582g = str;
            this.h = str2;
            this.i = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e eVar = e.this;
                eVar.b = eVar.g(this.a, this.b, this.c, this.f6579d, this.f6580e, this.f6581f, this.f6582g, this.h, this.i);
                e.this.b.f();
            } catch (Throwable th) {
                e.this.l(Log.getStackTraceString(th));
            }
        }
    }

    class s extends CountDownTimer {
        s(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Global Controller Timer Finish");
            e.this.l(o2.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            Logger.i(e.this.a, "Global Controller Timer Tick " + j);
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.g();
        }
    }

    class u implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        u(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                e eVar = e.this;
                eVar.b = eVar.g(eVar.h.b(), e.this.h.d(), e.this.h.j(), e.this.h.f(), e.this.h.e(), e.this.h.g(), e.this.h.c(), this.a, this.b);
                e.this.b.f();
            } catch (Throwable th) {
                e.this.l(Log.getStackTraceString(th));
            }
        }
    }

    class v extends CountDownTimer {
        v(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(e.this.a, "Recovered Controller | Global Controller Timer Finish");
            e.this.l(o2.c.k);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            Logger.i(e.this.a, "Recovered Controller | Global Controller Timer Tick " + j);
        }
    }

    class w implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ Map c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ da f6583d;

        w(String str, String str2, Map map, da daVar) {
            this.a = str;
            this.b = str2;
            this.c = map;
            this.f6583d = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b, this.c, this.f6583d);
            }
        }
    }

    class x implements Runnable {
        final /* synthetic */ Map a;
        final /* synthetic */ da b;

        x(Map map, da daVar) {
            this.a = map;
            this.b = daVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.b != null) {
                e.this.b.a(this.a, this.b);
            }
        }
    }

    public e(Context context, q2 q2Var, uc ucVar, k3 k3Var, q5 q5Var, int i2, JSONObject jSONObject, String str, String str2, r9 r9Var) {
        this.k = r9Var;
        this.f6568g = q5Var;
        String networkStorageDir = IronSourceStorageUtils.getNetworkStorageDir(context);
        s3 s3VarA = s3.a(networkStorageDir, q5Var, jSONObject);
        this.h = new md(context, q2Var, ucVar, k3Var, i2, s3VarA, networkStorageDir);
        d(context, q2Var, ucVar, k3Var, i2, s3VarA, networkStorageDir, str, str2);
    }

    private void d(Context context, q2 q2Var, uc ucVar, k3 k3Var, int i2, s3 s3Var, String str, String str2, String str3) {
        i(new r(context, q2Var, ucVar, k3Var, i2, s3Var, str, str2, str3));
        this.f6565d = new s(200000L, 1000L).start();
    }

    private void e(h6.e eVar, j3 j3Var, String str, String str2) {
        Logger.i(this.a, "recoverWebController for product: " + eVar.toString());
        j6 j6Var = new j6();
        j6Var.a(b4.v, eVar.toString());
        j6Var.a(b4.u, j3Var.f());
        o6.a(gb.b, j6Var.a());
        this.h.o();
        destroy();
        i(new u(str, str2));
        this.f6565d = new v(200000L, 1000L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.json.sdk.controller.t g(Context context, q2 q2Var, uc ucVar, k3 k3Var, int i2, s3 s3Var, String str, String str2, String str3) throws Throwable {
        o6.a(gb.c);
        com.json.sdk.controller.t tVar = new com.json.sdk.controller.t(context, k3Var, q2Var, this, this.f6568g, i2, s3Var, str, o(), p(), str2, str3);
        p4 p4Var = new p4(context, s3Var, new o4(this.f6568g.a()), new g9(s3Var.a()));
        tVar.a(new com.json.sdk.controller.s(context, ucVar));
        tVar.a(new com.json.sdk.controller.n(context));
        tVar.a(new com.json.sdk.controller.o(context));
        tVar.a(new com.json.sdk.controller.i(context));
        tVar.a(new com.json.sdk.controller.a(context));
        tVar.a(new com.json.sdk.controller.p(s3Var.a(), p4Var));
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str) {
        o6.a(gb.f6118d, new j6().a(b4.z, str).a());
        this.c = h6.b.Loading;
        this.b = new com.json.sdk.controller.m(str, this.f6568g);
        this.f6566e.c();
        this.f6566e.a();
        q5 q5Var = this.f6568g;
        if (q5Var != null) {
            q5Var.b(new t());
        }
    }

    private void n(String str) {
        ca initListener = IronSourceNetwork.getInitListener();
        if (initListener != null) {
            initListener.onFail(new i6(1001, str));
            IronSourceNetwork.setInitListener(null);
        }
    }

    private k.a o() {
        return new k();
    }

    private k.b p() {
        return new q();
    }

    private void q() {
        Logger.i(this.a, "handleReadyState");
        this.c = h6.b.Ready;
        CountDownTimer countDownTimer = this.f6565d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        s();
        this.f6567f.c();
        this.f6567f.a();
        com.json.sdk.controller.k kVar = this.b;
        if (kVar != null) {
            kVar.c();
        }
    }

    private boolean r() {
        return h6.b.Ready.equals(this.c);
    }

    private void s() {
        this.h.a(true);
        com.json.sdk.controller.k kVar = this.b;
        if (kVar != null) {
            kVar.b(this.h.i());
        }
    }

    private void t() {
        ca initListener = IronSourceNetwork.getInitListener();
        if (initListener != null) {
            initListener.onSuccess();
            IronSourceNetwork.setInitListener(null);
        }
    }

    @Override // com.json.sdk.controller.g
    public void a() {
        Logger.i(this.a, "handleControllerLoaded");
        this.c = h6.b.Loaded;
        this.f6566e.c();
        this.f6566e.a();
    }

    @Override // com.json.sdk.controller.k
    public void a(Activity activity) {
        this.b.a(activity);
    }

    @Override // com.json.sdk.controller.k
    public void a(Context context) {
        com.json.sdk.controller.k kVar;
        if (!r() || (kVar = this.b) == null) {
            return;
        }
        kVar.a(context);
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var) {
        this.f6567f.a(new l(j3Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var, Map<String, String> map, x2 x2Var) {
        this.f6567f.a(new m(j3Var, map, x2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(j3 j3Var, Map<String, String> map, y2 y2Var) {
        this.f6567f.a(new h(j3Var, map, y2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(f.MessageToController messageToController, k.a aVar) {
        this.f6567f.a(new n(aVar, messageToController));
    }

    public void a(Runnable runnable) {
        this.f6566e.a(runnable);
    }

    public void a(String str, k.b bVar) {
        this.j.put(str, bVar);
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, y2 y2Var) {
        Logger.i(this.a, "load interstitial");
        this.f6567f.a(new RunnableC0365e(str, y2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, da daVar) {
        this.f6567f.a(new a(str, str2, daVar));
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, x2 x2Var) {
        if (this.h.a(e(), this.c)) {
            e(h6.e.Banner, j3Var, str, str2);
        }
        this.f6567f.a(new i(str, str2, j3Var, x2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, y2 y2Var) {
        if (this.h.a(e(), this.c)) {
            e(h6.e.Interstitial, j3Var, str, str2);
        }
        this.f6567f.a(new d(str, str2, j3Var, y2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, j3 j3Var, z2 z2Var) {
        if (this.h.a(e(), this.c)) {
            e(h6.e.RewardedVideo, j3Var, str, str2);
        }
        this.f6567f.a(new b(str, str2, j3Var, z2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(String str, String str2, Map<String, String> map, da daVar) {
        this.f6567f.a(new w(str, str2, map, daVar));
    }

    @Override // com.json.sdk.controller.k
    public void a(Map<String, String> map, da daVar) {
        this.f6567f.a(new x(map, daVar));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject) {
        this.f6567f.a(new o(jSONObject));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, x2 x2Var) {
        this.f6567f.a(new j(jSONObject, x2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, y2 y2Var) {
        this.f6567f.a(new g(jSONObject, y2Var));
    }

    @Override // com.json.sdk.controller.k
    public void a(JSONObject jSONObject, z2 z2Var) {
        this.f6567f.a(new c(jSONObject, z2Var));
    }

    @Override // com.json.sdk.controller.k
    public boolean a(String str) {
        if (this.b == null || !r()) {
            return false;
        }
        return this.b.a(str);
    }

    @Override // com.json.sdk.controller.k
    public void b() {
        com.json.sdk.controller.k kVar;
        if (!r() || (kVar = this.b) == null) {
            return;
        }
        kVar.b();
    }

    @Override // com.json.sdk.controller.k
    public void b(Context context) {
        com.json.sdk.controller.k kVar;
        if (!r() || (kVar = this.b) == null) {
            return;
        }
        kVar.b(context);
    }

    @Override // com.json.sdk.controller.k
    public void b(j3 j3Var, Map<String, String> map, y2 y2Var) {
        this.f6567f.a(new f(j3Var, map, y2Var));
    }

    @Override // com.json.sdk.controller.g
    public void b(String str) {
        Logger.i(this.a, "handleControllerFailed ");
        j6 j6Var = new j6();
        j6Var.a(b4.z, str);
        j6Var.a(b4.x, String.valueOf(this.h.m()));
        o6.a(gb.o, j6Var.a());
        this.h.a(false);
        n(str);
        if (this.f6565d != null) {
            Logger.i(this.a, "cancel timer mControllerReadyTimer");
            this.f6565d.cancel();
        }
        l(str);
    }

    @Override // com.json.sdk.controller.k
    public void b(JSONObject jSONObject) {
    }

    @Override // com.json.sdk.controller.k
    @Deprecated
    public void c() {
    }

    @Override // com.json.sdk.controller.g
    public void c(String str) {
        o6.a(gb.y, new j6().a(b4.x, str).a());
        CountDownTimer countDownTimer = this.f6565d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        l(str);
    }

    @Override // com.json.sdk.controller.k
    public void d() {
        com.json.sdk.controller.k kVar;
        if (!r() || (kVar = this.b) == null) {
            return;
        }
        kVar.d();
    }

    @Override // com.json.sdk.controller.k
    public void destroy() {
        Logger.i(this.a, "destroy controller");
        CountDownTimer countDownTimer = this.f6565d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        e2 e2Var = this.f6567f;
        if (e2Var != null) {
            e2Var.b();
        }
        this.f6565d = null;
        i(new p());
    }

    @Override // com.json.sdk.controller.k
    public h6.c e() {
        com.json.sdk.controller.k kVar = this.b;
        return kVar != null ? kVar.e() : h6.c.None;
    }

    @Override // com.json.sdk.controller.k
    public void f() {
    }

    @Override // com.json.sdk.controller.g
    public void g() {
        Logger.i(this.a, "handleControllerReady ");
        this.k.a(e());
        if (h6.c.Web.equals(e())) {
            o6.a(gb.f6119e, new j6().a(b4.x, String.valueOf(this.h.m())).a());
            t();
        }
        q();
    }

    void i(Runnable runnable) {
        q5 q5Var = this.f6568g;
        if (q5Var != null) {
            q5Var.c(runnable);
        } else {
            Logger.e(this.a, "mThreadManager = null");
        }
    }

    public com.json.sdk.controller.k j() {
        return this.b;
    }
}
