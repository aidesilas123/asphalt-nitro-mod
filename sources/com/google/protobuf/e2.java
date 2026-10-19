package com.google.protobuf;

import com.google.protobuf.Value;

/* JADX INFO: compiled from: ValueOrBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public interface e2 extends r0 {
    boolean getBoolValue();

    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    Value.KindCase getKindCase();

    ListValue getListValue();

    NullValue getNullValue();

    int getNullValueValue();

    double getNumberValue();

    String getStringValue();

    ByteString getStringValueBytes();

    Struct getStructValue();

    boolean hasBoolValue();

    boolean hasListValue();

    boolean hasNullValue();

    boolean hasNumberValue();

    boolean hasStringValue();

    boolean hasStructValue();

    @Override // com.google.protobuf.r0
    /* synthetic */ boolean isInitialized();
}
