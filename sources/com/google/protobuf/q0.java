package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: MessageLite.java */
/* JADX INFO: loaded from: classes3.dex */
public interface q0 extends r0 {

    /* JADX INFO: compiled from: MessageLite.java */
    public interface a extends r0, Cloneable {
        q0 build();

        q0 buildPartial();

        a clear();

        /* JADX INFO: renamed from: clone */
        a mo203clone();

        @Override // com.google.protobuf.r0
        /* synthetic */ q0 getDefaultInstanceForType();

        @Override // com.google.protobuf.r0
        /* synthetic */ boolean isInitialized();

        boolean mergeDelimitedFrom(InputStream inputStream) throws IOException;

        boolean mergeDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        a mergeFrom(ByteString byteString) throws d0;

        a mergeFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0;

        a mergeFrom(CodedInputStream codedInputStream) throws IOException;

        a mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        a mergeFrom(q0 q0Var);

        a mergeFrom(InputStream inputStream) throws IOException;

        a mergeFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        a mergeFrom(byte[] bArr) throws d0;

        a mergeFrom(byte[] bArr, int i, int i2) throws d0;

        a mergeFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0;

        a mergeFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws d0;
    }

    @Override // com.google.protobuf.r0
    /* synthetic */ q0 getDefaultInstanceForType();

    g1<? extends q0> getParserForType();

    int getSerializedSize();

    @Override // com.google.protobuf.r0
    /* synthetic */ boolean isInitialized();

    a newBuilderForType();

    a toBuilder();

    byte[] toByteArray();

    ByteString toByteString();

    void writeDelimitedTo(OutputStream outputStream) throws IOException;

    void writeTo(CodedOutputStream codedOutputStream) throws IOException;

    void writeTo(OutputStream outputStream) throws IOException;
}
