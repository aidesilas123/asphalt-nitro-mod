package com.google.protobuf;

import com.google.protobuf.a;
import com.google.protobuf.q0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: AbstractParser.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class b<MessageType extends q0> implements g1<MessageType> {
    private static final ExtensionRegistryLite EMPTY_REGISTRY = ExtensionRegistryLite.getEmptyRegistry();

    private MessageType checkMessageInitialized(MessageType messagetype) throws d0 {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw newUninitializedMessageException(messagetype).asInvalidProtocolBufferException().setUnfinishedMessage(messagetype);
    }

    private x1 newUninitializedMessageException(MessageType messagetype) {
        return messagetype instanceof a ? ((a) messagetype).newUninitializedMessageException() : new x1(messagetype);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseDelimitedFrom(InputStream inputStream) throws d0 {
        return (MessageType) parseDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (MessageType) checkMessageInitialized(parsePartialDelimitedFrom(inputStream, extensionRegistryLite));
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(ByteString byteString) throws d0 {
        return (MessageType) parseFrom(byteString, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (MessageType) checkMessageInitialized(parsePartialFrom(byteString, extensionRegistryLite));
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(CodedInputStream codedInputStream) throws d0 {
        return (MessageType) parseFrom(codedInputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (MessageType) checkMessageInitialized((q0) parsePartialFrom(codedInputStream, extensionRegistryLite));
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(InputStream inputStream) throws d0 {
        return (MessageType) parseFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (MessageType) checkMessageInitialized(parsePartialFrom(inputStream, extensionRegistryLite));
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(ByteBuffer byteBuffer) throws d0 {
        return (MessageType) parseFrom(byteBuffer, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        try {
            CodedInputStream codedInputStreamNewInstance = CodedInputStream.newInstance(byteBuffer);
            q0 q0Var = (q0) parsePartialFrom(codedInputStreamNewInstance, extensionRegistryLite);
            try {
                codedInputStreamNewInstance.checkLastTagWas(0);
                return (MessageType) checkMessageInitialized(q0Var);
            } catch (d0 e2) {
                throw e2.setUnfinishedMessage(q0Var);
            }
        } catch (d0 e3) {
            throw e3;
        }
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(byte[] bArr) throws d0 {
        return (MessageType) parseFrom(bArr, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(byte[] bArr, int i, int i2) throws d0 {
        return (MessageType) parseFrom(bArr, i, i2, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (MessageType) checkMessageInitialized(parsePartialFrom(bArr, i, i2, extensionRegistryLite));
    }

    @Override // com.google.protobuf.g1
    public MessageType parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (MessageType) parseFrom(bArr, 0, bArr.length, extensionRegistryLite);
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialDelimitedFrom(InputStream inputStream) throws d0 {
        return (MessageType) parsePartialDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            return (MessageType) parsePartialFrom((InputStream) new a.AbstractC0277a.C0278a(inputStream, CodedInputStream.readRawVarint32(i, inputStream)), extensionRegistryLite);
        } catch (IOException e2) {
            throw new d0(e2);
        }
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(ByteString byteString) throws d0 {
        return (MessageType) parsePartialFrom(byteString, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        try {
            CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
            MessageType messagetype = (MessageType) parsePartialFrom(codedInputStreamNewCodedInput, extensionRegistryLite);
            try {
                codedInputStreamNewCodedInput.checkLastTagWas(0);
                return messagetype;
            } catch (d0 e2) {
                throw e2.setUnfinishedMessage(messagetype);
            }
        } catch (d0 e3) {
            throw e3;
        }
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(CodedInputStream codedInputStream) throws d0 {
        return (MessageType) parsePartialFrom(codedInputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(InputStream inputStream) throws d0 {
        return (MessageType) parsePartialFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        CodedInputStream codedInputStreamNewInstance = CodedInputStream.newInstance(inputStream);
        MessageType messagetype = (MessageType) parsePartialFrom(codedInputStreamNewInstance, extensionRegistryLite);
        try {
            codedInputStreamNewInstance.checkLastTagWas(0);
            return messagetype;
        } catch (d0 e2) {
            throw e2.setUnfinishedMessage(messagetype);
        }
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(byte[] bArr) throws d0 {
        return (MessageType) parsePartialFrom(bArr, 0, bArr.length, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(byte[] bArr, int i, int i2) throws d0 {
        return (MessageType) parsePartialFrom(bArr, i, i2, EMPTY_REGISTRY);
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(byte[] bArr, int i, int i2, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        try {
            CodedInputStream codedInputStreamNewInstance = CodedInputStream.newInstance(bArr, i, i2);
            MessageType messagetype = (MessageType) parsePartialFrom(codedInputStreamNewInstance, extensionRegistryLite);
            try {
                codedInputStreamNewInstance.checkLastTagWas(0);
                return messagetype;
            } catch (d0 e2) {
                throw e2.setUnfinishedMessage(messagetype);
            }
        } catch (d0 e3) {
            throw e3;
        }
    }

    @Override // com.google.protobuf.g1
    public MessageType parsePartialFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws d0 {
        return (MessageType) parsePartialFrom(bArr, 0, bArr.length, extensionRegistryLite);
    }

    @Override // com.google.protobuf.g1
    public abstract /* synthetic */ MessageType parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d0;
}
