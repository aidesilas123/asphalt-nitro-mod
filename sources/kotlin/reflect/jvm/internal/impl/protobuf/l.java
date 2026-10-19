package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.InputStream;

/* JADX INFO: compiled from: Parser.java */
/* JADX INFO: loaded from: classes5.dex */
public interface l<MessageType> {
    MessageType a(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d;

    MessageType b(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d;

    MessageType c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d;

    MessageType d(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d;
}
