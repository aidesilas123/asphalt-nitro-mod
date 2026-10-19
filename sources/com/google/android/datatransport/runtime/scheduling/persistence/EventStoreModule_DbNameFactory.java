package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class EventStoreModule_DbNameFactory implements com.google.android.datatransport.runtime.dagger.internal.b<String> {

    private static final class a {
        private static final EventStoreModule_DbNameFactory a = new EventStoreModule_DbNameFactory();
    }

    public static EventStoreModule_DbNameFactory create() {
        return a.a;
    }

    public static String dbName() {
        return (String) Preconditions.checkNotNull(l0.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String get() {
        return dbName();
    }
}
