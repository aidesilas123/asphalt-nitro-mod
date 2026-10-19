package com.google.protobuf;

/* JADX INFO: compiled from: ManifestSchemaFactory.java */
/* JADX INFO: loaded from: classes3.dex */
final class k0 implements m1 {
    private static final p0 EMPTY_FACTORY = new a();
    private final p0 messageInfoFactory;

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    class a implements p0 {
        a() {
        }

        @Override // com.google.protobuf.p0
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // com.google.protobuf.p0
        public o0 messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    private static class b implements p0 {
        private p0[] factories;

        b(p0... p0VarArr) {
            this.factories = p0VarArr;
        }

        @Override // com.google.protobuf.p0
        public boolean isSupported(Class<?> cls) {
            for (p0 p0Var : this.factories) {
                if (p0Var.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.p0
        public o0 messageInfoFor(Class<?> cls) {
            for (p0 p0Var : this.factories) {
                if (p0Var.isSupported(cls)) {
                    return p0Var.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }
    }

    public k0() {
        this(getDefaultMessageInfoFactory());
    }

    private k0(p0 p0Var) {
        this.messageInfoFactory = (p0) Internal.checkNotNull(p0Var, "messageInfoFactory");
    }

    private static p0 getDefaultMessageInfoFactory() {
        return new b(GeneratedMessageInfoFactory.getInstance(), getDescriptorMessageInfoFactory());
    }

    private static p0 getDescriptorMessageInfoFactory() {
        try {
            return (p0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return EMPTY_FACTORY;
        }
    }

    private static boolean isProto2(o0 o0Var) {
        return o0Var.getSyntax() == ProtoSyntax.PROTO2;
    }

    private static <T> l1<T> newSchema(Class<T> cls, o0 o0Var) {
        return GeneratedMessageLite.class.isAssignableFrom(cls) ? isProto2(o0Var) ? t0.newSchema(cls, o0Var, b1.lite(), i0.lite(), SchemaUtil.unknownFieldSetLiteSchema(), w.lite(), n0.lite()) : t0.newSchema(cls, o0Var, b1.lite(), i0.lite(), SchemaUtil.unknownFieldSetLiteSchema(), null, n0.lite()) : isProto2(o0Var) ? t0.newSchema(cls, o0Var, b1.full(), i0.full(), SchemaUtil.proto2UnknownFieldSetSchema(), w.full(), n0.full()) : t0.newSchema(cls, o0Var, b1.full(), i0.full(), SchemaUtil.proto3UnknownFieldSetSchema(), null, n0.full());
    }

    @Override // com.google.protobuf.m1
    public <T> l1<T> createSchema(Class<T> cls) {
        SchemaUtil.requireGeneratedMessage(cls);
        o0 o0VarMessageInfoFor = this.messageInfoFactory.messageInfoFor(cls);
        return o0VarMessageInfoFor.isMessageSetWireFormat() ? GeneratedMessageLite.class.isAssignableFrom(cls) ? u0.newSchema(SchemaUtil.unknownFieldSetLiteSchema(), w.lite(), o0VarMessageInfoFor.getDefaultInstance()) : u0.newSchema(SchemaUtil.proto2UnknownFieldSetSchema(), w.full(), o0VarMessageInfoFor.getDefaultInstance()) : newSchema(cls, o0VarMessageInfoFor);
    }
}
