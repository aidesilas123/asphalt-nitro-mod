package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: Parser.java */
/* JADX INFO: loaded from: classes3.dex */
public interface g1<MessageType> {
    MessageType parseDelimitedFrom(InputStream inputStream) throws d0;

    MessageType parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parseFrom(ByteString byteString) throws d0;

    MessageType parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parseFrom(CodedInputStream codedInputStream) throws d0;

    MessageType parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parseFrom(InputStream inputStream) throws d0;

    MessageType parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parseFrom(ByteBuffer byteBuffer) throws d0;

    MessageType parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parseFrom(byte[] bArr) throws d0;

    MessageType parseFrom(byte[] bArr, int i, int i2) throws d0;

    MessageType parseFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parsePartialDelimitedFrom(InputStream inputStream) throws d0;

    MessageType parsePartialDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parsePartialFrom(ByteString byteString) throws d0;

    MessageType parsePartialFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parsePartialFrom(CodedInputStream codedInputStream) throws d0;

    MessageType parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parsePartialFrom(InputStream inputStream) throws d0;

    MessageType parsePartialFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parsePartialFrom(byte[] bArr) throws d0;

    MessageType parsePartialFrom(byte[] bArr, int i, int i2) throws d0;

    MessageType parsePartialFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0;

    MessageType parsePartialFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws d0;
}
