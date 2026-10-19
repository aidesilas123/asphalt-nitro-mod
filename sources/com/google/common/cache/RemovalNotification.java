package com.google.common.cache;

import com.google.common.base.Preconditions;
import java.util.AbstractMap;

/* JADX INFO: loaded from: classes3.dex */
public final class RemovalNotification<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {
    private static final long serialVersionUID = 0;
    private final RemovalCause a;

    private RemovalNotification(K k, V v, RemovalCause removalCause) {
        super(k, v);
        this.a = (RemovalCause) Preconditions.checkNotNull(removalCause);
    }

    public static <K, V> RemovalNotification<K, V> create(K k, V v, RemovalCause removalCause) {
        return new RemovalNotification<>(k, v, removalCause);
    }
}
