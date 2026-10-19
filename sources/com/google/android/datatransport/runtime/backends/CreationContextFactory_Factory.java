package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class CreationContextFactory_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<f> {
    private final e.a.a<Context> a;
    private final e.a.a<com.google.android.datatransport.runtime.time.a> b;
    private final e.a.a<com.google.android.datatransport.runtime.time.a> c;

    public CreationContextFactory_Factory(e.a.a<Context> aVar, e.a.a<com.google.android.datatransport.runtime.time.a> aVar2, e.a.a<com.google.android.datatransport.runtime.time.a> aVar3) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
    }

    public static CreationContextFactory_Factory create(e.a.a<Context> aVar, e.a.a<com.google.android.datatransport.runtime.time.a> aVar2, e.a.a<com.google.android.datatransport.runtime.time.a> aVar3) {
        return new CreationContextFactory_Factory(aVar, aVar2, aVar3);
    }

    public static f newInstance(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        return new f(context, aVar, aVar2);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f get() {
        return newInstance(this.a.get(), this.b.get(), this.c.get());
    }
}
