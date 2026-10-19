package com.google.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
final class Protobuf {
    private static final Protobuf INSTANCE = new Protobuf();
    private final ConcurrentMap<Class<?>, l1<?>> schemaCache = new ConcurrentHashMap();
    private final m1 schemaFactory = new k0();

    private Protobuf() {
    }

    public static Protobuf getInstance() {
        return INSTANCE;
    }

    int getTotalSchemaSize() {
        int schemaSize = 0;
        for (l1<?> l1Var : this.schemaCache.values()) {
            if (l1Var instanceof t0) {
                schemaSize += ((t0) l1Var).getSchemaSize();
            }
        }
        return schemaSize;
    }

    <T> boolean isInitialized(T t) {
        return schemaFor(t).isInitialized(t);
    }

    public <T> void makeImmutable(T t) {
        schemaFor(t).makeImmutable(t);
    }

    public <T> void mergeFrom(T t, j1 j1Var) throws IOException {
        mergeFrom(t, j1Var, ExtensionRegistryLite.getEmptyRegistry());
    }

    public <T> void mergeFrom(T t, j1 j1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        schemaFor(t).mergeFrom(t, j1Var, extensionRegistryLite);
    }

    public l1<?> registerSchema(Class<?> cls, l1<?> l1Var) {
        Internal.checkNotNull(cls, "messageType");
        Internal.checkNotNull(l1Var, "schema");
        return this.schemaCache.putIfAbsent(cls, l1Var);
    }

    public l1<?> registerSchemaOverride(Class<?> cls, l1<?> l1Var) {
        Internal.checkNotNull(cls, "messageType");
        Internal.checkNotNull(l1Var, "schema");
        return this.schemaCache.put(cls, l1Var);
    }

    public <T> l1<T> schemaFor(Class<T> cls) {
        Internal.checkNotNull(cls, "messageType");
        l1<T> l1Var = (l1) this.schemaCache.get(cls);
        if (l1Var != null) {
            return l1Var;
        }
        l1<T> l1VarCreateSchema = this.schemaFactory.createSchema(cls);
        l1<T> l1Var2 = (l1<T>) registerSchema(cls, l1VarCreateSchema);
        return l1Var2 != null ? l1Var2 : l1VarCreateSchema;
    }

    public <T> l1<T> schemaFor(T t) {
        return schemaFor((Class) t.getClass());
    }

    public <T> void writeTo(T t, Writer writer) throws IOException {
        schemaFor(t).writeTo(t, writer);
    }
}
