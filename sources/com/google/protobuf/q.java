package com.google.protobuf;

import java.util.List;

/* JADX INFO: compiled from: EnumOrBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public interface q extends r0 {
    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    EnumValue getEnumvalue(int i);

    int getEnumvalueCount();

    List<EnumValue> getEnumvalueList();

    String getName();

    ByteString getNameBytes();

    Option getOptions(int i);

    int getOptionsCount();

    List<Option> getOptionsList();

    SourceContext getSourceContext();

    Syntax getSyntax();

    int getSyntaxValue();

    boolean hasSourceContext();

    @Override // com.google.protobuf.r0
    /* synthetic */ boolean isInitialized();
}
