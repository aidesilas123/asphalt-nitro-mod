package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
final class TopKSelector<T> {
    private final int a;
    private final Comparator<? super T> b;
    private final T[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private T f3711e;

    private TopKSelector(Comparator<? super T> comparator, int i) {
        this.b = (Comparator) Preconditions.checkNotNull(comparator, "comparator");
        this.a = i;
        Preconditions.checkArgument(i >= 0, "k (%s) must be >= 0", i);
        Preconditions.checkArgument(i <= 1073741823, "k (%s) must be <= Integer.MAX_VALUE / 2", i);
        this.c = (T[]) new Object[IntMath.checkedMultiply(i, 2)];
        this.f3710d = 0;
        this.f3711e = null;
    }

    public static <T extends Comparable<? super T>> TopKSelector<T> greatest(int i) {
        return greatest(i, Ordering.natural());
    }

    public static <T> TopKSelector<T> greatest(int i, Comparator<? super T> comparator) {
        return new TopKSelector<>(Ordering.from(comparator).f(), i);
    }

    public static <T extends Comparable<? super T>> TopKSelector<T> least(int i) {
        return least(i, Ordering.natural());
    }

    public static <T> TopKSelector<T> least(int i, Comparator<? super T> comparator) {
        return new TopKSelector<>(comparator, i);
    }
}
