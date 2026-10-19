package com.mbridge.msdk.foundation.same.net.stack;

import android.content.Context;
import android.text.TextUtils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.same.net.dns.MBDns;
import com.mbridge.msdk.foundation.same.net.h.d;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.thrid.okhttp.ConnectionPool;
import com.mbridge.msdk.thrid.okhttp.Dispatcher;
import com.mbridge.msdk.thrid.okhttp.EventListener;
import com.mbridge.msdk.thrid.okhttp.OkHttpClient;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: OKHTTPClientManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private OkHttpClient a;
    private e b;
    private String c;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: OKHTTPClientManager.java */
    static final class a {
        private static final c a = new c();
    }

    /* JADX INFO: compiled from: OKHTTPClientManager.java */
    public static class b implements Serializable {
        public int a;
        public long b = 0;
        public String c = "";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f7169d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f7170e = "";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f7171f = "";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f7172g = 0;
        public String h = "";
        public long i = 0;
        public String j = "";
        public long k = 0;

        public static b a(b bVar) {
            b bVar2 = new b();
            bVar2.a = bVar.a;
            bVar2.f7169d = bVar.f7169d;
            bVar2.f7171f = bVar.f7171f;
            bVar2.b = bVar.b;
            bVar2.i = bVar.i;
            bVar2.c = bVar.c;
            bVar2.h = bVar.h;
            bVar2.f7172g = bVar.f7172g;
            bVar2.f7170e = bVar.f7170e;
            bVar2.j = bVar.j;
            bVar2.k = bVar.k;
            return bVar2;
        }
    }

    private c() {
        this.a = null;
        this.c = "";
    }

    public static c a() {
        return a.a;
    }

    public final void a(b bVar) {
        if (bVar == null) {
            return;
        }
        final b bVarA = b.a(bVar);
        com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.stack.c.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    StringBuilder sb = new StringBuilder("key=2000102&");
                    sb.append("app_id=");
                    sb.append(com.mbridge.msdk.foundation.controller.b.d().h());
                    sb.append(o2.i.c);
                    sb.append("status=");
                    sb.append(bVarA.a);
                    sb.append(o2.i.c);
                    sb.append("domain=");
                    sb.append(bVarA.f7171f);
                    sb.append(o2.i.c);
                    sb.append("method=");
                    sb.append(bVarA.f7169d);
                    sb.append(o2.i.c);
                    if (!TextUtils.isEmpty(bVarA.h)) {
                        sb.append("dns_r=");
                        sb.append(bVarA.h);
                        sb.append(o2.i.c);
                        sb.append("dns_d=");
                        sb.append(bVarA.f7172g);
                        sb.append(o2.i.c);
                        sb.append("host=");
                        sb.append(bVarA.f7170e);
                        sb.append(o2.i.c);
                        if (TextUtils.isEmpty(bVarA.j)) {
                            if (TextUtils.isEmpty(bVarA.c)) {
                                sb.append("call_d=");
                                sb.append(bVarA.b);
                                sb.append(o2.i.c);
                                sb.append("connect_d=");
                                sb.append(bVarA.i);
                                sb.append(o2.i.c);
                                sb.append("connection_d=");
                                sb.append(bVarA.k);
                            } else {
                                sb.append("connect_d=");
                                sb.append(bVarA.i);
                                sb.append(o2.i.c);
                                sb.append("connection_e=");
                                sb.append(bVarA.c);
                            }
                        } else if (!TextUtils.isEmpty(bVarA.j)) {
                            sb.append("connect_e=");
                            sb.append(bVarA.j);
                        } else if (!TextUtils.isEmpty(bVarA.c)) {
                            sb.append("connect_e=");
                            sb.append(bVarA.c);
                        }
                    } else if (!TextUtils.isEmpty(bVarA.c)) {
                        sb.append("connect_e=");
                        sb.append(bVarA.c);
                    } else if (!TextUtils.isEmpty(bVarA.j)) {
                        sb.append("connect_e=");
                        sb.append(bVarA.j);
                    }
                    if (k.a().c()) {
                        k.a().a(sb.toString());
                        return;
                    }
                    final c cVar = c.this;
                    String string = sb.toString();
                    Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                    com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(contextG);
                    d dVarA = q.a(contextG);
                    dVarA.a("data", URLEncoder.encode(string, b4.L));
                    dVarA.a("m_sdk", "msdk");
                    aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.net.stack.c.3
                        @Override // com.mbridge.msdk.foundation.same.report.d.b
                        public final void onFailed(String str) {
                            aa.a("OKHTTPClientManager", "report failed");
                        }

                        @Override // com.mbridge.msdk.foundation.same.report.d.b
                        public final void onSuccess(String str) {
                            aa.a("OKHTTPClientManager", "report success");
                        }
                    });
                } catch (Exception e2) {
                    aa.d("OKHTTPClientManager", e2.getMessage());
                }
            }
        });
    }

    public final boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (this.b == null) {
                this.b = f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
            }
            e eVar = this.b;
            if (eVar == null) {
                return false;
            }
            String strY = eVar.y();
            String str2 = com.mbridge.msdk.foundation.same.net.g.d.a().a;
            if (TextUtils.isEmpty(strY) || !str.startsWith(strY) || TextUtils.equals(strY, str2)) {
                return false;
            }
            this.c = strY;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final synchronized OkHttpClient b() {
        if (this.a == null) {
            Dispatcher dispatcher = new Dispatcher();
            dispatcher.setMaxRequestsPerHost(50);
            dispatcher.setMaxRequests(256);
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            builder.readTimeout(100L, timeUnit);
            builder.connectTimeout(60L, timeUnit);
            builder.writeTimeout(60L, timeUnit);
            builder.connectionPool(new ConnectionPool(32, 5L, TimeUnit.MINUTES));
            builder.dispatcher(dispatcher);
            builder.eventListener(new EventListener() { // from class: com.mbridge.msdk.foundation.same.net.stack.c.1
            });
            builder.dns(new MBDns());
            this.a = builder.build();
        }
        return this.a;
    }

    public final b c() {
        b bVar = new b();
        bVar.f7171f = this.c;
        return bVar;
    }
}
