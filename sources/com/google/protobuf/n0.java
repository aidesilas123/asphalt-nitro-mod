package com.google.protobuf;

/* JADX INFO: compiled from: MapFieldSchemas.java */
/* JADX INFO: loaded from: classes3.dex */
final class n0 {
    private static final l0 FULL_SCHEMA = loadSchemaForFullRuntime();
    private static final l0 LITE_SCHEMA = new m0();

    n0() {
    }

    static l0 full() {
        return FULL_SCHEMA;
    }

    static l0 lite() {
        return LITE_SCHEMA;
    }

    private static l0 loadSchemaForFullRuntime() {
        try {
            return (l0) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
