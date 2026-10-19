package com.google.protobuf;

import com.google.protobuf.Internal;

/* JADX INFO: loaded from: classes3.dex */
public enum NullValue implements Internal.c {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private static final Internal.d<NullValue> internalValueMap = new Internal.d<NullValue>() { // from class: com.google.protobuf.NullValue.a
        @Override // com.google.protobuf.Internal.d
        public NullValue findValueByNumber(int i) {
            return NullValue.forNumber(i);
        }
    };
    private final int value;

    private static final class b implements Internal.e {
        static final Internal.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.Internal.e
        public boolean isInRange(int i) {
            return NullValue.forNumber(i) != null;
        }
    }

    NullValue(int i) {
        this.value = i;
    }

    public static NullValue forNumber(int i) {
        if (i != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static Internal.d<NullValue> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static NullValue valueOf(int i) {
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
