package com.google.protobuf;

import java.util.List;

/* JADX INFO: compiled from: EnumValueOrBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public interface s extends r0 {
    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    String getName();

    ByteString getNameBytes();

    int getNumber();

    Option getOptions(int i);

    int getOptionsCount();

    List<Option> getOptionsList();

    @Override // com.google.protobuf.r0
    /* synthetic */ boolean isInitialized();
}
