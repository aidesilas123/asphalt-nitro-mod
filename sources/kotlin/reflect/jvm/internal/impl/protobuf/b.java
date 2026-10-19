package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.j;

/* JADX INFO: compiled from: AbstractParser.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class b<MessageType extends j> implements l<MessageType> {
    private static final ExtensionRegistryLite a = ExtensionRegistryLite.getEmptyRegistry();

    private MessageType e(MessageType messagetype) throws d {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw f(messagetype).c().k(messagetype);
    }

    private p f(MessageType messagetype) {
        return messagetype instanceof a ? ((a) messagetype).c() : new p(messagetype);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public MessageType d(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        return (MessageType) e(j(inputStream, extensionRegistryLite));
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public MessageType a(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        return (MessageType) e(k(inputStream, extensionRegistryLite));
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public MessageType b(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d {
        return (MessageType) e(l(byteString, extensionRegistryLite));
    }

    public MessageType j(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            return (MessageType) k(new a.AbstractC0539a.C0540a(inputStream, CodedInputStream.readRawVarint32(i, inputStream)), extensionRegistryLite);
        } catch (IOException e2) {
            throw new d(e2.getMessage());
        }
    }

    public MessageType k(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        CodedInputStream codedInputStreamNewInstance = CodedInputStream.newInstance(inputStream);
        MessageType messagetypeC = c(codedInputStreamNewInstance, extensionRegistryLite);
        try {
            codedInputStreamNewInstance.a(0);
            return messagetypeC;
        } catch (d e2) {
            throw e2.k(messagetypeC);
        }
    }

    public MessageType l(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws d {
        try {
            CodedInputStream codedInputStreamJ = byteString.j();
            MessageType messagetypeC = c(codedInputStreamJ, extensionRegistryLite);
            try {
                codedInputStreamJ.a(0);
                return messagetypeC;
            } catch (d e2) {
                throw e2.k(messagetypeC);
            }
        } catch (d e3) {
            throw e3;
        }
    }
}
