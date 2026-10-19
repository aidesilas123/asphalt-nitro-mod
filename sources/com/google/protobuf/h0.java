package com.google.protobuf;

import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: LazyStringList.java */
/* JADX INFO: loaded from: classes3.dex */
public interface h0 extends List {
    void add(ByteString byteString);

    void add(byte[] bArr);

    boolean addAllByteArray(Collection<byte[]> collection);

    boolean addAllByteString(Collection<? extends ByteString> collection);

    List<byte[]> asByteArrayList();

    /* synthetic */ List<ByteString> asByteStringList();

    byte[] getByteArray(int i);

    ByteString getByteString(int i);

    Object getRaw(int i);

    List<?> getUnderlyingElements();

    h0 getUnmodifiableView();

    void mergeFrom(h0 h0Var);

    void set(int i, ByteString byteString);

    void set(int i, byte[] bArr);
}
