package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import java.io.Serializable;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: CommonReportEvent.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b implements Serializable {
    private final String a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f7173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f7174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o f7175f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f7176g;
    private final boolean h;
    private final ConcurrentHashMap<String, Object> i;
    private final ConcurrentHashMap<String, String> j;
    private final Context k;
    private final a l;
    private final String m;
    private final String n;
    private final String o;
    private final String p;
    private final boolean q;
    private final com.mbridge.msdk.foundation.same.net.m r;
    private String s;
    private final CampaignEx t;
    private final long u;
    private boolean v;
    private String w;

    /* JADX INFO: compiled from: CommonReportEvent.java */
    public static class a {
        private String a;
        private final String b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f7177d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ConcurrentHashMap<String, Object> f7178e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ConcurrentHashMap<String, String> f7179f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Executor f7180g;
        private d h;
        private long i;
        private o k;
        private Context l;
        private com.mbridge.msdk.foundation.same.net.m r;
        private CampaignEx s;
        private long t;
        private boolean j = false;
        private String m = "";
        private String n = "";
        private String o = "";
        private String p = "";
        private boolean q = false;
        private boolean u = false;
        private String v = "";

        public a(String str, String str2, String str3, int i, int i2) {
            this.a = str;
            this.b = str2;
            if (TextUtils.isEmpty(str3)) {
                this.c = UUID.randomUUID().toString();
            } else {
                this.c = str3;
            }
            this.t = System.currentTimeMillis();
            this.f7177d = UUID.randomUUID().toString();
            this.f7178e = new ConcurrentHashMap<>(v.a(i));
            this.f7179f = new ConcurrentHashMap<>(v.a(i2));
        }

        public final a a(long j) {
            this.i = j;
            this.j = true;
            return this;
        }

        public final a a(Context context) {
            this.l = context;
            return this;
        }

        public final a a(String str) {
            this.a = str;
            return this;
        }

        public final a a(Map<String, String> map) {
            if (map != null && !map.isEmpty()) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (entry != null && !TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                        if (entry.getKey().equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                            aa.d("CommonReport", entry.getValue());
                        }
                        this.f7179f.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            return this;
        }

        public final a a(Executor executor) {
            this.f7180g = executor;
            return this;
        }

        public final a a(boolean z) {
            this.q = z;
            return this;
        }

        public final b a() {
            if (this.f7180g == null) {
                this.f7180g = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.mbridge.msdk.foundation.same.report.b.a.1
                    @Override // java.util.concurrent.ThreadFactory
                    public final Thread newThread(Runnable runnable) {
                        return new Thread(runnable, "mb-common-report-thread");
                    }
                });
            }
            if (this.l == null) {
                this.l = com.mbridge.msdk.foundation.controller.b.d().g();
            }
            if (this.h == null) {
                this.h = new e();
            }
            if (this.k == null) {
                if (ac.a().a("metrics", "e_t_l", ac.a().a("e_t_l", 0)) == 1) {
                    this.k = new j();
                } else {
                    this.k = new f();
                }
            }
            if (this.r == null) {
                this.r = new com.mbridge.msdk.foundation.same.net.b(30000, 1);
            }
            return new b(this);
        }

        public final a b(long j) {
            this.t = j;
            return this;
        }

        public final a b(String str) {
            this.m = str;
            return this;
        }

        public final a b(boolean z) {
            this.u = z;
            return this;
        }

        public final a c(String str) {
            this.v = str;
            return this;
        }

        public final a d(String str) {
            this.n = str;
            return this;
        }

        public final a e(String str) {
            this.p = str;
            return this;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && a.class == obj.getClass()) {
                try {
                    a aVar = (a) obj;
                    if (Objects.equals(this.c, aVar.c)) {
                        if (Objects.equals(this.f7177d, aVar.f7177d)) {
                            return true;
                        }
                    }
                    return false;
                } catch (Exception unused) {
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.c, this.f7177d);
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.same.report.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CommonReportEvent.java */
    public interface InterfaceC0407b {
        void a(b bVar);

        void a(b bVar, int i, String str);
    }

    public b(a aVar) {
        this.v = false;
        this.l = aVar;
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f7173d = aVar.f7180g;
        this.i = aVar.f7178e;
        this.j = aVar.f7179f;
        this.f7174e = aVar.h;
        this.f7175f = aVar.k;
        this.f7176g = aVar.i;
        this.h = aVar.j;
        this.k = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
        this.q = aVar.q;
        this.r = aVar.r;
        this.t = aVar.s;
        this.u = aVar.t;
        this.v = aVar.u;
        this.w = aVar.v;
    }

    public static a a(String str, String str2) {
        return new a(str, str2, "", 1, 1);
    }

    public final a a() {
        return this.l;
    }

    public final void a(String str) {
        this.s = str;
    }

    public final void b() {
        final InterfaceC0407b interfaceC0407b = null;
        this.f7173d.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.b.1
            @Override // java.lang.Runnable
            public final void run() {
                b bVar = this;
                if (bVar == null) {
                    aa.d("CommonReport", "reportEvent is null !!!");
                    return;
                }
                d dVar = bVar.f7174e;
                if (dVar == null) {
                    aa.d("CommonReport", "decorate is null !!!");
                    return;
                }
                o oVar = this.f7175f;
                if (oVar == null) {
                    aa.d("CommonReport", "report is null !!!");
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.same.net.h.d dVarA = dVar.a(this);
                    if (dVarA != null) {
                        oVar.a(this.k, interfaceC0407b, this, dVarA);
                        return;
                    }
                    if (MBridgeConstans.DEBUG) {
                        aa.d("CommonReport", "requestParams is null !!!");
                    }
                    InterfaceC0407b interfaceC0407b2 = interfaceC0407b;
                    if (interfaceC0407b2 != null) {
                        interfaceC0407b2.a(this, 0, "requestParams is null");
                    }
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.b("CommonReport", "report error", e2);
                    }
                    InterfaceC0407b interfaceC0407b3 = interfaceC0407b;
                    if (interfaceC0407b3 != null) {
                        interfaceC0407b3.a(this, 0, e2.getMessage());
                    }
                }
            }
        });
    }

    public final Executor c() {
        return this.f7173d;
    }

    public final Context d() {
        return this.k;
    }

    public final String e() {
        return this.m;
    }

    public final String f() {
        return this.w;
    }

    public final String g() {
        return this.n;
    }

    public final String h() {
        return this.p;
    }

    public final int hashCode() {
        return this.l.hashCode();
    }

    public final String i() {
        return this.a;
    }

    public final boolean j() {
        return this.v;
    }

    public final boolean k() {
        return this.q;
    }

    public final com.mbridge.msdk.foundation.same.net.m l() {
        return this.r;
    }

    public final ConcurrentHashMap<String, String> m() {
        return this.j;
    }

    public final long n() {
        return this.f7176g;
    }

    public final boolean o() {
        return this.h;
    }

    public final String p() {
        return this.s;
    }

    public final long q() {
        return this.u;
    }
}
