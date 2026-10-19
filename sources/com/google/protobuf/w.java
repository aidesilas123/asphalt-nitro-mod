package com.google.protobuf;

/* JADX INFO: compiled from: ExtensionSchemas.java */
/* JADX INFO: loaded from: classes3.dex */
final class w {
    private static final u<?> LITE_SCHEMA = new v();
    private static final u<?> FULL_SCHEMA = loadSchemaForFullRuntime();

    w() {
    }

    static u<?> full() {
        u<?> uVar = FULL_SCHEMA;
        if (uVar != null) {
            return uVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static u<?> lite() {
        return LITE_SCHEMA;
    }

    private static u<?> loadSchemaForFullRuntime() {
        try {
            return (u) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
