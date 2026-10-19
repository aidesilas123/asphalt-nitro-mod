package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;

/* JADX INFO: compiled from: TransportImpl.java */
/* JADX INFO: loaded from: classes2.dex */
final class l<T> implements com.google.android.datatransport.c<T> {
    private final TransportContext a;
    private final String b;
    private final Encoding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.datatransport.b<T, byte[]> f3040d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m f3041e;

    l(TransportContext transportContext, String str, Encoding encoding, com.google.android.datatransport.b<T, byte[]> bVar, m mVar) {
        this.a = transportContext;
        this.b = str;
        this.c = encoding;
        this.f3040d = bVar;
        this.f3041e = mVar;
    }

    static /* synthetic */ void b(Exception exc) {
    }

    @Override // com.google.android.datatransport.c
    public void a(Event<T> event) {
        c(event, new com.google.android.datatransport.e() { // from class: com.google.android.datatransport.runtime.a
            @Override // com.google.android.datatransport.e
            public final void a(Exception exc) {
                l.b(exc);
            }
        });
    }

    public void c(Event<T> event, com.google.android.datatransport.e eVar) {
        this.f3041e.a(SendRequest.builder().e(this.a).c(event).f(this.b).d(this.f3040d).b(this.c).a(), eVar);
    }
}
