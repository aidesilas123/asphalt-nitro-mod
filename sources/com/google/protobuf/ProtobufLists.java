package com.google.protobuf;

import com.google.protobuf.Internal;

/* JADX INFO: loaded from: classes3.dex */
final class ProtobufLists {
    private ProtobufLists() {
    }

    public static Internal.a emptyBooleanList() {
        return BooleanArrayList.emptyList();
    }

    public static Internal.b emptyDoubleList() {
        return DoubleArrayList.emptyList();
    }

    public static Internal.f emptyFloatList() {
        return FloatArrayList.emptyList();
    }

    public static Internal.g emptyIntList() {
        return IntArrayList.emptyList();
    }

    public static Internal.i emptyLongList() {
        return LongArrayList.emptyList();
    }

    public static <E> Internal.j<E> emptyProtobufList() {
        return ProtobufArrayList.emptyList();
    }

    public static <E> Internal.j<E> mutableCopy(Internal.j<E> jVar) {
        int size = jVar.size();
        return jVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    public static Internal.a newBooleanList() {
        return new BooleanArrayList();
    }

    public static Internal.b newDoubleList() {
        return new DoubleArrayList();
    }

    public static Internal.f newFloatList() {
        return new FloatArrayList();
    }

    public static Internal.g newIntList() {
        return new IntArrayList();
    }

    public static Internal.i newLongList() {
        return new LongArrayList();
    }
}
