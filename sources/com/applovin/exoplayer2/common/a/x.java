package com.applovin.exoplayer2.common.a;

import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class x {
    @NullableDecl
    public static <T> T a(Iterable<? extends T> iterable, @NullableDecl T t) {
        return (T) y.a(iterable.iterator(), t);
    }

    public static String c(Iterable<?> iterable) {
        return y.b(iterable.iterator());
    }

    static Object[] d(Iterable<?> iterable) {
        return e(iterable).toArray();
    }

    private static <E> Collection<E> e(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : aa.f(iterable.iterator());
    }

    public static <T> T f(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) y.c(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) f(list);
    }

    private static <T> T f(List<T> list) {
        return list.get(list.size() - 1);
    }
}
