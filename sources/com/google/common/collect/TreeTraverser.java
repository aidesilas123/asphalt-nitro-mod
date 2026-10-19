package com.google.common.collect;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public abstract class TreeTraverser<T> {

    class a extends TreeTraverser<T> {
        final /* synthetic */ com.google.common.base.f a;

        a(com.google.common.base.f fVar) {
            this.a = fVar;
        }
    }

    @Deprecated
    public static <T> TreeTraverser<T> using(com.google.common.base.f<T, ? extends Iterable<T>> fVar) {
        Preconditions.checkNotNull(fVar);
        return new a(fVar);
    }
}
