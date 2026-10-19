package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class EventStoreModule_StoreConfigFactory implements com.google.android.datatransport.runtime.dagger.internal.b<k0> {

    private static final class a {
        private static final EventStoreModule_StoreConfigFactory a = new EventStoreModule_StoreConfigFactory();
    }

    public static EventStoreModule_StoreConfigFactory create() {
        return a.a;
    }

    public static k0 storeConfig() {
        return (k0) Preconditions.checkNotNull(l0.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public k0 get() {
        return storeConfig();
    }
}
