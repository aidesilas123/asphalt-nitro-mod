package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: MessageLite.java */
/* JADX INFO: loaded from: classes5.dex */
public interface j extends k {

    /* JADX INFO: compiled from: MessageLite.java */
    public interface a extends Cloneable, k {
        a a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        j build();
    }

    void b(CodedOutputStream codedOutputStream) throws IOException;

    l<? extends j> getParserForType();

    int getSerializedSize();

    a newBuilderForType();

    a toBuilder();
}
