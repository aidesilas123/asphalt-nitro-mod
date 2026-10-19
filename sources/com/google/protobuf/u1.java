package com.google.protobuf;

import java.util.List;

/* JADX INFO: compiled from: TypeOrBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public interface u1 extends r0 {
    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    Field getFields(int i);

    int getFieldsCount();

    List<Field> getFieldsList();

    String getName();

    ByteString getNameBytes();

    String getOneofs(int i);

    ByteString getOneofsBytes(int i);

    int getOneofsCount();

    List<String> getOneofsList();

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
