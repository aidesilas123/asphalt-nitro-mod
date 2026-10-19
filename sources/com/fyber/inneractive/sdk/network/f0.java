package com.fyber.inneractive.sdk.network;

import android.util.Log;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.factories.b;
import com.fyber.inneractive.sdk.network.c0;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f0<T> implements c0<T> {
    public volatile boolean a;
    public final w<T> b;
    public g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c0.a f2105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f2106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile q0 f2107f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f2108g;
    public final com.fyber.inneractive.sdk.config.global.s h;
    public long i;
    public long j;
    public long k;
    public long l;
    public int m;
    public boolean n;
    public boolean o;
    public final Object p;
    public boolean q;

    public class a implements Runnable {
        public final /* synthetic */ Object a;
        public final /* synthetic */ Exception b;
        public final /* synthetic */ boolean c;

        public a(Object obj, Exception exc, boolean z) {
            this.a = obj;
            this.b = exc;
            this.c = z;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            f0.this.b.a((T) this.a, this.b, this.c);
        }
    }

    public f0(f0<T> f0Var) {
        this.a = false;
        this.f2107f = q0.INITIAL;
        this.i = 0L;
        this.j = 0L;
        this.k = 0L;
        this.l = 0L;
        this.m = 0;
        this.n = false;
        this.o = false;
        this.p = new Object();
        this.q = false;
        this.b = f0Var.b;
        this.c = f0Var.c;
        this.f2108g = UUID.randomUUID().toString();
        this.h = f0Var.h;
        this.m = f0Var.m;
        this.i = f0Var.i;
        this.k = f0Var.k;
        this.j = f0Var.j;
        this.l = f0Var.l;
    }

    public f0(w<T> wVar, g gVar) {
        this(wVar, gVar, null);
    }

    public f0(w<T> wVar, g gVar, com.fyber.inneractive.sdk.config.global.s sVar) {
        this.a = false;
        this.f2107f = q0.INITIAL;
        this.i = 0L;
        this.j = 0L;
        this.k = 0L;
        this.l = 0L;
        this.m = 0;
        this.n = false;
        this.o = false;
        this.p = new Object();
        this.q = false;
        this.b = wVar;
        this.c = gVar;
        this.f2108g = UUID.randomUUID().toString();
        this.h = sVar;
    }

    public int a(Map<String, List<String>> map) {
        List<String> list = map != null ? map.get("Content-Length") : null;
        if (list != null) {
            return com.fyber.inneractive.sdk.util.q.a(list.get(0), -1);
        }
        return -1;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public j a(String str) throws Exception {
        try {
            c0.a aVar = this.f2105d;
            if (aVar != null) {
                aVar.a("sdkInitNetworkRequest");
            }
            this.f2106e = this.c.a(this, com.fyber.inneractive.sdk.util.l.f(), str);
            c0.a aVar2 = this.f2105d;
            if (aVar2 != null) {
                aVar2.a("sdkGotServerResponse");
            }
            return this.f2106e;
        } catch (b e2) {
            IAlog.a("failed start network request", e2, new Object[0]);
            throw e2;
        } catch (w0 e3) {
            IAlog.a("failed read network response", e3, new Object[0]);
            throw e3;
        } catch (Exception e4) {
            IAlog.a("failed start network request", e4, new Object[0]);
            throw e4;
        }
    }

    public com.fyber.inneractive.sdk.response.e a(int i, n nVar, com.fyber.inneractive.sdk.response.j jVar, com.fyber.inneractive.sdk.dv.g gVar) throws Exception {
        try {
            com.fyber.inneractive.sdk.response.a aVarA = com.fyber.inneractive.sdk.response.a.a(i);
            if (aVarA == null) {
                aVarA = com.fyber.inneractive.sdk.response.a.RETURNED_ADTYPE_MRAID;
            }
            com.fyber.inneractive.sdk.response.b bVarA = b.a.a.a(aVarA);
            if (bVarA == null) {
                IAlog.e("Received ad type %s does not have an appropriate parser!", Integer.valueOf(i));
                if (b.a.a.a.size() == 0) {
                    Log.e("Inneractive_error", "Critical error raised while fetching an ad - please make sure you have added all the required fyber libraries (ia-mraid-kit, ia-video-kit) to your project");
                }
                throw new a0("Could not find parser for ad type " + i);
            }
            IAlog.a("Received ad type %s - Got parser! %s", Integer.valueOf(i), bVarA);
            if (jVar != null) {
                bVarA.c = jVar;
            }
            bVarA.a = bVarA.a();
            if (nVar != null) {
                bVarA.c = new com.fyber.inneractive.sdk.response.k(nVar);
            }
            com.fyber.inneractive.sdk.response.e eVarA = bVarA.a((String) null);
            eVarA.I = x();
            if (gVar != null) {
                eVarA.s = gVar;
            }
            c0.a aVar = this.f2105d;
            if (aVar != null) {
                aVar.a("sdkParsedResponse");
            }
            return eVarA;
        } catch (Exception e2) {
            IAlog.a("failed parse ad network request", e2, new Object[0]);
            throw new a0(e2);
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public void a(long j) {
        synchronized (this.p) {
            if (this.n) {
                this.l = j;
                this.m = (int) (((long) this.m) + (j - this.j));
                this.n = false;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public void a(b0 b0Var, String str, String str2) {
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public void a(q0 q0Var) {
        c0.a aVar;
        this.f2107f = q0Var;
        if (q0Var != q0.QUEUED_FOR_RETRY || (aVar = this.f2105d) == null) {
            return;
        }
        aVar.a("sdkRequestEndedButWillBeRetried");
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public void a(T t, Exception exc, boolean z) {
        if (!z) {
            a(q0.RESOLVED);
        }
        com.fyber.inneractive.sdk.util.m.b.post(new a(t, exc, z));
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public void b() {
        try {
            j jVar = this.f2106e;
            if (jVar != null) {
                jVar.a();
            }
            this.c.b();
        } catch (Exception unused) {
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public void b(long j) {
        synchronized (this.p) {
            if (!this.n) {
                this.n = true;
                this.j = j;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String c() {
        return null;
    }

    public void c(long j) {
        synchronized (this.p) {
            if (this.o) {
                this.k = j;
                this.m = (int) (((long) this.m) + (j - this.i));
                this.o = false;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public void d() {
        boolean z;
        boolean z2;
        synchronized (this.p) {
            z = this.n;
        }
        if (z) {
            a(System.currentTimeMillis());
            return;
        }
        synchronized (this.p) {
            z2 = this.o;
        }
        if (z2) {
            c(System.currentTimeMillis());
        }
    }

    public void d(long j) {
        synchronized (this.p) {
            if (!this.o) {
                this.o = true;
                this.i = j;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String f() {
        return this.f2108g;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean g() {
        return this.a;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int h() {
        Integer numB;
        com.fyber.inneractive.sdk.config.global.s sVar = this.h;
        if (sVar == null || (numB = ((com.fyber.inneractive.sdk.config.global.features.k) sVar.a(com.fyber.inneractive.sdk.config.global.features.k.class)).b("watchdog_buffer_time_ms")) == null) {
            return 500;
        }
        return numB.intValue();
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean j() {
        if (this.q) {
            com.fyber.inneractive.sdk.config.global.features.k kVar = (com.fyber.inneractive.sdk.config.global.features.k) IAConfigManager.M.L.a(com.fyber.inneractive.sdk.config.global.features.k.class);
            if (kVar.a("should_add_request_watchdog", false) || kVar.a("should_report_request_watchdog", false)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public com.fyber.inneractive.sdk.network.a<T> k() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean l() {
        return !(this instanceof p0);
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public com.fyber.inneractive.sdk.config.global.s m() {
        return this.h;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public t0 n() {
        IAConfigManager iAConfigManager = IAConfigManager.M;
        return new t0(iAConfigManager.u.b.a("connect_timeout", 5000, 1), iAConfigManager.u.b.a("read_timeout", 5000, 1));
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public q0 p() {
        return this.f2107f;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String q() {
        return "application/json; charset=utf-8";
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean s() {
        return this.q && ((com.fyber.inneractive.sdk.config.global.features.k) IAConfigManager.M.L.a(com.fyber.inneractive.sdk.config.global.features.k.class)).a("should_manage_request_watchdog", true);
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public byte[] u() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public Map<String, String> w() {
        return null;
    }

    public int x() {
        return this.m;
    }

    public int y() {
        int i;
        synchronized (this.p) {
            i = this.m;
        }
        return i;
    }
}
