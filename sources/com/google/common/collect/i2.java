package com.google.common.collect;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes3.dex */
final class i2 {
    static <T> T[] a(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }

    static <T> T[] b(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    static <K, V> Map<K, V> c(int i) {
        return CompactHashMap.createWithExpectedSize(i);
    }

    static <E> Set<E> d(int i) {
        return CompactHashSet.createWithExpectedSize(i);
    }

    static <K, V> Map<K, V> e(int i) {
        return CompactLinkedHashMap.createWithExpectedSize(i);
    }

    static <E> Set<E> f(int i) {
        return CompactLinkedHashSet.createWithExpectedSize(i);
    }

    static <E> Set<E> g() {
        return CompactHashSet.create();
    }

    static <K, V> Map<K, V> h() {
        return CompactHashMap.create();
    }

    static MapMaker i(MapMaker mapMaker) {
        return mapMaker.l();
    }
}
