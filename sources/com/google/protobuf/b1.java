package com.google.protobuf;

/* JADX INFO: compiled from: NewInstanceSchemas.java */
/* JADX INFO: loaded from: classes3.dex */
final class b1 {
    private static final z0 FULL_SCHEMA = loadSchemaForFullRuntime();
    private static final z0 LITE_SCHEMA = new a1();

    b1() {
    }

    static z0 full() {
        return FULL_SCHEMA;
    }

    static z0 lite() {
        return LITE_SCHEMA;
    }

    private static z0 loadSchemaForFullRuntime() {
        try {
            return (z0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
