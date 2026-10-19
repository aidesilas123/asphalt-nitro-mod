package com.google.android.datatransport.runtime;

import android.content.Context;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.t;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.u;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class TransportRuntime implements m {
    private static volatile n a;
    private final com.google.android.datatransport.runtime.time.a b;
    private final com.google.android.datatransport.runtime.time.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.d f3014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final t f3015e;

    TransportRuntime(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, com.google.android.datatransport.runtime.scheduling.d dVar, t tVar, u uVar) {
        this.b = aVar;
        this.c = aVar2;
        this.f3014d = dVar;
        this.f3015e = tVar;
        uVar.a();
    }

    private EventInternal b(SendRequest sendRequest) {
        return EventInternal.builder().i(this.b.a()).k(this.c.a()).j(sendRequest.f()).h(new h(sendRequest.a(), sendRequest.c())).g(sendRequest.b().a()).d();
    }

    private static Set<Encoding> c(f fVar) {
        return fVar instanceof g ? Collections.unmodifiableSet(((g) fVar).a()) : Collections.singleton(Encoding.of("proto"));
    }

    public static TransportRuntime getInstance() {
        n nVar = a;
        if (nVar != null) {
            return nVar.e();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void initialize(Context context) {
        if (a == null) {
            synchronized (TransportRuntime.class) {
                if (a == null) {
                    a = DaggerTransportRuntimeComponent.builder().a(context).build();
                }
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.m
    public void a(SendRequest sendRequest, com.google.android.datatransport.e eVar) {
        this.f3014d.a(sendRequest.e().e(sendRequest.b().c()), b(sendRequest), eVar);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public t d() {
        return this.f3015e;
    }

    public com.google.android.datatransport.d e(f fVar) {
        return new k(c(fVar), TransportContext.builder().b(fVar.getName()).c(fVar.getExtras()).a(), this);
    }
}
