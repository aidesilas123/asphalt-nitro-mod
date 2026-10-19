package com.google.protobuf;

import java.util.List;

/* JADX INFO: compiled from: MethodOrBuilder.java */
/* JADX INFO: loaded from: classes3.dex */
public interface w0 extends r0 {
    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    String getName();

    ByteString getNameBytes();

    Option getOptions(int i);

    int getOptionsCount();

    List<Option> getOptionsList();

    boolean getRequestStreaming();

    String getRequestTypeUrl();

    ByteString getRequestTypeUrlBytes();

    boolean getResponseStreaming();

    String getResponseTypeUrl();

    ByteString getResponseTypeUrlBytes();

    Syntax getSyntax();

    int getSyntaxValue();

    @Override // com.google.protobuf.r0
    /* synthetic */ boolean isInitialized();
}
