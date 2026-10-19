package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class MetadataBackendRegistry_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<g> {
    private final e.a.a<Context> a;
    private final e.a.a<f> b;

    public MetadataBackendRegistry_Factory(e.a.a<Context> aVar, e.a.a<f> aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    public static MetadataBackendRegistry_Factory create(e.a.a<Context> aVar, e.a.a<f> aVar2) {
        return new MetadataBackendRegistry_Factory(aVar, aVar2);
    }

    public static g newInstance(Context context, Object obj) {
        return new g(context, (f) obj);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public g get() {
        return newInstance(this.a.get(), this.b.get());
    }
}
