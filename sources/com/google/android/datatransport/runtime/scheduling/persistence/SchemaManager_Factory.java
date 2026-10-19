package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class SchemaManager_Factory implements com.google.android.datatransport.runtime.dagger.internal.b<n0> {
    private final e.a.a<Context> a;
    private final e.a.a<String> b;
    private final e.a.a<Integer> c;

    public SchemaManager_Factory(e.a.a<Context> aVar, e.a.a<String> aVar2, e.a.a<Integer> aVar3) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
    }

    public static SchemaManager_Factory create(e.a.a<Context> aVar, e.a.a<String> aVar2, e.a.a<Integer> aVar3) {
        return new SchemaManager_Factory(aVar, aVar2, aVar3);
    }

    public static n0 newInstance(Context context, String str, int i) {
        return new n0(context, str, i);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public n0 get() {
        return newInstance(this.a.get(), this.b.get(), this.c.get().intValue());
    }
}
