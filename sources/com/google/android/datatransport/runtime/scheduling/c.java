package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.backends.h;
import com.google.android.datatransport.runtime.p.b;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.v;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* JADX INFO: compiled from: DefaultScheduler.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements d {
    private static final Logger a = Logger.getLogger(TransportRuntime.class.getName());
    private final v b;
    private final Executor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.backends.e f3046d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f3047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.p.b f3048f;

    public c(Executor executor, com.google.android.datatransport.runtime.backends.e eVar, v vVar, j0 j0Var, com.google.android.datatransport.runtime.p.b bVar) {
        this.c = executor;
        this.f3046d = eVar;
        this.b = vVar;
        this.f3047e = j0Var;
        this.f3048f = bVar;
    }

    private /* synthetic */ Object b(TransportContext transportContext, EventInternal eventInternal) {
        this.f3047e.O(transportContext, eventInternal);
        this.b.a(transportContext, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e(final TransportContext transportContext, com.google.android.datatransport.e eVar, EventInternal eventInternal) {
        try {
            h hVar = this.f3046d.get(transportContext.a());
            if (hVar == null) {
                String str = String.format("Transport backend '%s' is not registered", transportContext.a());
                a.warning(str);
                eVar.a(new IllegalArgumentException(str));
            } else {
                final EventInternal eventInternalA = hVar.a(eventInternal);
                this.f3048f.a(new b.a() { // from class: com.google.android.datatransport.runtime.scheduling.b
                    @Override // com.google.android.datatransport.runtime.p.b.a
                    public final Object execute() {
                        this.a.c(transportContext, eventInternalA);
                        return null;
                    }
                });
                eVar.a(null);
            }
        } catch (Exception e2) {
            a.warning("Error scheduling event " + e2.getMessage());
            eVar.a(e2);
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.d
    public void a(final TransportContext transportContext, final EventInternal eventInternal, final com.google.android.datatransport.e eVar) {
        this.c.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.e(transportContext, eVar, eventInternal);
            }
        });
    }

    public /* synthetic */ Object c(TransportContext transportContext, EventInternal eventInternal) {
        b(transportContext, eventInternal);
        return null;
    }
}
