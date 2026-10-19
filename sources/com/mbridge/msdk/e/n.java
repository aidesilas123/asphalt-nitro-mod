package com.mbridge.msdk.e;

import android.util.Log;
import com.mbridge.msdk.e.a.m;
import com.mbridge.msdk.e.a.o;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Network.java */
/* JADX INFO: loaded from: classes4.dex */
final class n {
    private q a;
    private final int b;
    private final o c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v f6980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.mbridge.msdk.e.a.n f6982f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f6983g;

    /* JADX INFO: compiled from: Network.java */
    private static final class a implements o.a {
        private final q a;
        private final s b;

        public a(q qVar, s sVar) {
            this.a = qVar;
            this.b = sVar;
        }

        @Override // com.mbridge.msdk.e.a.o.a
        public final void a(com.mbridge.msdk.e.a.u uVar) {
            if (y.b(this.a)) {
                try {
                    this.a.a(this.b, 0, uVar.getMessage());
                } catch (Exception e2) {
                    if (com.mbridge.msdk.e.a.a) {
                        Log.e("TrackManager", "onErrorResponse error", e2);
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: Network.java */
    private static final class b implements o.b {
        private final q a;
        private final s b;

        public b(q qVar, s sVar) {
            this.a = qVar;
            this.b = sVar;
        }

        @Override // com.mbridge.msdk.e.a.o.b
        public final void a(Object obj) {
            if (y.b(this.a)) {
                try {
                    this.a.a(this.b);
                } catch (Exception e2) {
                    if (com.mbridge.msdk.e.a.a) {
                        Log.e("TrackManager", "onResponse error", e2);
                    }
                }
            }
        }
    }

    public n(int i, o oVar, v vVar, int i2) {
        this.b = i;
        this.c = oVar;
        this.f6980d = vVar;
        this.f6981e = i2;
        this.f6983g = new ThreadPoolExecutor(1, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.mbridge.msdk.e.n.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, "MBridgeReportResponseThread");
            }
        }, new ThreadPoolExecutor.DiscardPolicy());
    }

    public final void a(q qVar) {
        this.a = qVar;
    }

    public final void a(s sVar, Map<String, String> map, boolean z) {
        if (y.a(map)) {
            q qVar = this.a;
            if (qVar != null) {
                try {
                    qVar.a(sVar, 0, "params is null");
                    return;
                } catch (Exception e2) {
                    if (com.mbridge.msdk.e.a.a) {
                        Log.e("TrackManager", "send error", e2);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        try {
            if (!y.b(this.f6982f)) {
                com.mbridge.msdk.e.a.a.b bVar = new com.mbridge.msdk.e.a.a.b(this.c.c());
                com.mbridge.msdk.e.a.f fVar = new com.mbridge.msdk.e.a.f(this.f6983g);
                int i = this.b;
                if (i <= 0) {
                    i = 4;
                }
                com.mbridge.msdk.e.a.n nVar = new com.mbridge.msdk.e.a.n(bVar, fVar, i, new com.mbridge.msdk.e.a.a.i());
                this.f6982f = nVar;
                nVar.a();
            }
            u uVar = this.f6981e == 1 ? new u(this.c.b(), 1, this.c.a()) : new u(this.c.b(), 1);
            uVar.a(map);
            uVar.a(false);
            uVar.b(true);
            uVar.c(true);
            uVar.a(this.f6980d);
            uVar.a(z ? m.b.HIGH : m.b.NORMAL);
            uVar.a((o.b) new b(this.a, sVar));
            uVar.a((o.a) new a(this.a, sVar));
            this.f6982f.a(uVar);
        } catch (Exception e3) {
            if (com.mbridge.msdk.e.a.a) {
                Log.e("TrackManager", "send error", e3);
            }
            if (y.b(this.a)) {
                this.a.a(sVar, 0, e3.getMessage());
            }
        }
    }
}
