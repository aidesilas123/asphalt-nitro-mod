package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.FieldSet.b;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: ExtensionSchema.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class u<T extends FieldSet.b<T>> {
    u() {
    }

    abstract int extensionNumber(Map.Entry<?, ?> entry);

    abstract Object findExtensionByNumber(ExtensionRegistryLite extensionRegistryLite, q0 q0Var, int i);

    abstract FieldSet<T> getExtensions(Object obj);

    abstract FieldSet<T> getMutableExtensions(Object obj);

    abstract boolean hasExtensions(q0 q0Var);

    abstract void makeImmutable(Object obj);

    abstract <UT, UB> UB parseExtension(Object obj, j1 j1Var, Object obj2, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet, UB ub, y1<UT, UB> y1Var) throws IOException;

    abstract void parseLengthPrefixedMessageSetItem(j1 j1Var, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    abstract void parseMessageSetItem(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    abstract void serializeExtension(Writer writer, Map.Entry<?, ?> entry) throws IOException;

    abstract void setExtensions(Object obj, FieldSet<T> fieldSet);
}
