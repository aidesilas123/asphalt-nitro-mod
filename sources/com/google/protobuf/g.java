package com.google.protobuf;

import java.util.List;

/* JADX INFO: compiled from: ApiOrBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public interface g extends r0 {
    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    Method getMethods(int i);

    int getMethodsCount();

    List<Method> getMethodsList();

    Mixin getMixins(int i);

    int getMixinsCount();

    List<Mixin> getMixinsList();

    String getName();

    ByteString getNameBytes();

    Option getOptions(int i);

    int getOptionsCount();

    List<Option> getOptionsList();

    SourceContext getSourceContext();

    Syntax getSyntax();

    int getSyntaxValue();

    String getVersion();

    ByteString getVersionBytes();

    boolean hasSourceContext();

    @Override // com.google.protobuf.r0
    /* synthetic */ boolean isInitialized();
}
