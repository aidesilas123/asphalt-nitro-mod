package com.google.protobuf;

import com.google.protobuf.Internal;

/* JADX INFO: loaded from: classes3.dex */
public enum Syntax implements Internal.c {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    UNRECOGNIZED(-1);

    public static final int SYNTAX_PROTO2_VALUE = 0;
    public static final int SYNTAX_PROTO3_VALUE = 1;
    private static final Internal.d<Syntax> internalValueMap = new Internal.d<Syntax>() { // from class: com.google.protobuf.Syntax.a
        @Override // com.google.protobuf.Internal.d
        public Syntax findValueByNumber(int i) {
            return Syntax.forNumber(i);
        }
    };
    private final int value;

    private static final class b implements Internal.e {
        static final Internal.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.Internal.e
        public boolean isInRange(int i) {
            return Syntax.forNumber(i) != null;
        }
    }

    Syntax(int i) {
        this.value = i;
    }

    public static Syntax forNumber(int i) {
        if (i == 0) {
            return SYNTAX_PROTO2;
        }
        if (i != 1) {
            return null;
        }
        return SYNTAX_PROTO3;
    }

    public static Internal.d<Syntax> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static Syntax valueOf(int i) {
        return forNumber(i);
    }

    @Override // com.google.protobuf.Internal.c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
