package com.google.protobuf;

import com.google.protobuf.Field;
import java.util.List;

/* JADX INFO: compiled from: FieldOrBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public interface z extends r0 {
    Field.Cardinality getCardinality();

    int getCardinalityValue();

    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    String getDefaultValue();

    ByteString getDefaultValueBytes();

    String getJsonName();

    ByteString getJsonNameBytes();

    Field.Kind getKind();

    int getKindValue();

    String getName();

    ByteString getNameBytes();

    int getNumber();

    int getOneofIndex();

    Option getOptions(int i);

    int getOptionsCount();

    List<Option> getOptionsList();

    boolean getPacked();

    String getTypeUrl();

    ByteString getTypeUrlBytes();

    @Override // com.google.protobuf.r0
    /* synthetic */ boolean isInitialized();
}
