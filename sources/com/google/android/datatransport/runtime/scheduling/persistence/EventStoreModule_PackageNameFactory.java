package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class EventStoreModule_PackageNameFactory implements com.google.android.datatransport.runtime.dagger.internal.b<String> {
    private final e.a.a<Context> a;

    public EventStoreModule_PackageNameFactory(e.a.a<Context> aVar) {
        this.a = aVar;
    }

    public static EventStoreModule_PackageNameFactory create(e.a.a<Context> aVar) {
        return new EventStoreModule_PackageNameFactory(aVar);
    }

    public static String packageName(Context context) {
        return (String) Preconditions.checkNotNull(l0.b(context), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String get() {
        return packageName(this.a.get());
    }
}
