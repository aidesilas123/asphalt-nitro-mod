package com.google.protobuf;

import com.google.protobuf.h;
import java.io.IOException;

/* JADX INFO: compiled from: Schema.java */
/* JADX INFO: loaded from: classes3.dex */
interface l1<T> {
    boolean equals(T t, T t2);

    int getSerializedSize(T t);

    int hashCode(T t);

    boolean isInitialized(T t);

    void makeImmutable(T t);

    void mergeFrom(T t, j1 j1Var, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    void mergeFrom(T t, T t2);

    void mergeFrom(T t, byte[] bArr, int i, int i2, h.b bVar) throws IOException;

    T newInstance();

    void writeTo(T t, Writer writer) throws IOException;
}
