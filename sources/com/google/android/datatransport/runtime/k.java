package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import java.util.Set;

/* JADX INFO: compiled from: TransportFactoryImpl.java */
/* JADX INFO: loaded from: classes2.dex */
final class k implements com.google.android.datatransport.d {
    private final Set<Encoding> a;
    private final TransportContext b;
    private final m c;

    k(Set<Encoding> set, TransportContext transportContext, m mVar) {
        this.a = set;
        this.b = transportContext;
        this.c = mVar;
    }

    @Override // com.google.android.datatransport.d
    public <T> com.google.android.datatransport.c<T> a(String str, Class<T> cls, Encoding encoding, com.google.android.datatransport.b<T, byte[]> bVar) {
        if (this.a.contains(encoding)) {
            return new l(this.b, str, encoding, bVar, this.c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", encoding, this.a));
    }
}
