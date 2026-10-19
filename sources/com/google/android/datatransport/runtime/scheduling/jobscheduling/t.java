package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.p.b;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;
import com.google.android.datatransport.runtime.scheduling.persistence.i0;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: Uploader.java */
/* JADX INFO: loaded from: classes2.dex */
public class t {
    private final Context a;
    private final com.google.android.datatransport.runtime.backends.e b;
    private final j0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v f3059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f3060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.p.b f3061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f3062g;
    private final com.google.android.datatransport.runtime.time.a h;
    private final i0 i;

    public t(Context context, com.google.android.datatransport.runtime.backends.e eVar, j0 j0Var, v vVar, Executor executor, com.google.android.datatransport.runtime.p.b bVar, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, i0 i0Var) {
        this.a = context;
        this.b = eVar;
        this.c = j0Var;
        this.f3059d = vVar;
        this.f3060e = executor;
        this.f3061f = bVar;
        this.f3062g = aVar;
        this.h = aVar2;
        this.i = i0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Boolean d(TransportContext transportContext) {
        return Boolean.valueOf(this.c.F(transportContext));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Iterable f(TransportContext transportContext) {
        return this.c.H(transportContext);
    }

    private /* synthetic */ Object g(Iterable iterable, TransportContext transportContext, long j) {
        this.c.G(iterable);
        this.c.B(transportContext, this.f3062g.a() + j);
        return null;
    }

    private /* synthetic */ Object i(Iterable iterable) {
        this.c.A(iterable);
        return null;
    }

    private /* synthetic */ Object k() {
        this.i.d();
        return null;
    }

    private /* synthetic */ Object m(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            this.i.f(((Integer) r0.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
        }
        return null;
    }

    private /* synthetic */ Object o(TransportContext transportContext, long j) {
        this.c.B(transportContext, this.f3062g.a() + j);
        return null;
    }

    private /* synthetic */ Object q(TransportContext transportContext, int i) {
        this.f3059d.a(transportContext, i + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(final TransportContext transportContext, final int i, Runnable runnable) {
        try {
            try {
                com.google.android.datatransport.runtime.p.b bVar = this.f3061f;
                final j0 j0Var = this.c;
                Objects.requireNonNull(j0Var);
                bVar.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.b
                    @Override // com.google.android.datatransport.runtime.p.b.a
                    public final Object execute() {
                        return Integer.valueOf(j0Var.z());
                    }
                });
                if (b()) {
                    u(transportContext, i);
                } else {
                    this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.k
                        @Override // com.google.android.datatransport.runtime.p.b.a
                        public final Object execute() {
                            this.a.r(transportContext, i);
                            return null;
                        }
                    });
                }
            } catch (com.google.android.datatransport.runtime.p.a unused) {
                this.f3059d.a(transportContext, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    @VisibleForTesting
    public EventInternal a(com.google.android.datatransport.runtime.backends.h hVar) {
        com.google.android.datatransport.runtime.p.b bVar = this.f3061f;
        final i0 i0Var = this.i;
        Objects.requireNonNull(i0Var);
        return hVar.a(EventInternal.builder().i(this.f3062g.a()).k(this.h.a()).j("GDT_CLIENT_METRICS").h(new com.google.android.datatransport.runtime.h(Encoding.of("proto"), ((ClientMetrics) bVar.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.o
            @Override // com.google.android.datatransport.runtime.p.b.a
            public final Object execute() {
                return i0Var.e();
            }
        })).e())).d());
    }

    boolean b() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public /* synthetic */ Object h(Iterable iterable, TransportContext transportContext, long j) {
        g(iterable, transportContext, j);
        return null;
    }

    public /* synthetic */ Object j(Iterable iterable) {
        i(iterable);
        return null;
    }

    public /* synthetic */ Object l() {
        k();
        return null;
    }

    public /* synthetic */ Object n(Map map) {
        m(map);
        return null;
    }

    public /* synthetic */ Object p(TransportContext transportContext, long j) {
        o(transportContext, j);
        return null;
    }

    public /* synthetic */ Object r(TransportContext transportContext, int i) {
        q(transportContext, i);
        return null;
    }

    void u(final TransportContext transportContext, int i) {
        BackendResponse backendResponseB;
        com.google.android.datatransport.runtime.backends.h hVar = this.b.get(transportContext.a());
        long jMax = 0;
        while (true) {
            final long j = jMax;
            while (((Boolean) this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.e
                @Override // com.google.android.datatransport.runtime.p.b.a
                public final Object execute() {
                    return this.a.d(transportContext);
                }
            })).booleanValue()) {
                final Iterable iterable = (Iterable) this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.g
                    @Override // com.google.android.datatransport.runtime.p.b.a
                    public final Object execute() {
                        return this.a.f(transportContext);
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return;
                }
                if (hVar == null) {
                    Logging.d("Uploader", "Unknown backend for %s, deleting event batch for it...", transportContext);
                    backendResponseB = BackendResponse.fatalError();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((PersistedEvent) it.next()).a());
                    }
                    if (transportContext.d()) {
                        arrayList.add(a(hVar));
                    }
                    backendResponseB = hVar.b(BackendRequest.builder().b(arrayList).c(transportContext.b()).a());
                }
                if (backendResponseB.b() == BackendResponse.Status.TRANSIENT_ERROR) {
                    this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.h
                        @Override // com.google.android.datatransport.runtime.p.b.a
                        public final Object execute() {
                            this.a.h(iterable, transportContext, j);
                            return null;
                        }
                    });
                    this.f3059d.b(transportContext, i + 1, true);
                    return;
                }
                this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.j
                    @Override // com.google.android.datatransport.runtime.p.b.a
                    public final Object execute() {
                        this.a.j(iterable);
                        return null;
                    }
                });
                if (backendResponseB.b() == BackendResponse.Status.OK) {
                    jMax = Math.max(j, backendResponseB.a());
                    if (transportContext.d()) {
                        this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.l
                            @Override // com.google.android.datatransport.runtime.p.b.a
                            public final Object execute() {
                                this.a.l();
                                return null;
                            }
                        });
                    }
                } else if (backendResponseB.b() == BackendResponse.Status.INVALID_PAYLOAD) {
                    final HashMap map = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String strI = ((PersistedEvent) it2.next()).a().i();
                        if (map.containsKey(strI)) {
                            map.put(strI, Integer.valueOf(((Integer) map.get(strI)).intValue() + 1));
                        } else {
                            map.put(strI, 1);
                        }
                    }
                    this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.f
                        @Override // com.google.android.datatransport.runtime.p.b.a
                        public final Object execute() {
                            this.a.n(map);
                            return null;
                        }
                    });
                }
            }
            this.f3061f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.i
                @Override // com.google.android.datatransport.runtime.p.b.a
                public final Object execute() {
                    this.a.p(transportContext, j);
                    return null;
                }
            });
            return;
        }
    }

    public void v(final TransportContext transportContext, final int i, final Runnable runnable) {
        this.f3060e.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.t(transportContext, i, runnable);
            }
        });
    }
}
