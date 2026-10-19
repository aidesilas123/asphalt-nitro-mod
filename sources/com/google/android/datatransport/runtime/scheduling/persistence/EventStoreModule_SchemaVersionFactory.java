package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes2.dex */
public final class EventStoreModule_SchemaVersionFactory implements com.google.android.datatransport.runtime.dagger.internal.b<Integer> {

    private static final class a {
        private static final EventStoreModule_SchemaVersionFactory a = new EventStoreModule_SchemaVersionFactory();
    }

    public static EventStoreModule_SchemaVersionFactory create() {
        return a.a;
    }

    public static int schemaVersion() {
        return l0.c();
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer get() {
        return Integer.valueOf(schemaVersion());
    }
}
