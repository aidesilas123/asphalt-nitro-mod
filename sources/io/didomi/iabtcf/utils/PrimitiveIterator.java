package io.didomi.iabtcf.utils;

import io.didomi.iabtcf.utils.function.DoubleConsumer;
import io.didomi.iabtcf.utils.function.IntConsumer;
import io.didomi.iabtcf.utils.function.LongConsumer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public interface PrimitiveIterator<T, T_CONS> extends Iterator<T> {

    public interface OfDouble extends PrimitiveIterator<Double, DoubleConsumer> {
        double nextDouble();
    }

    public interface OfInt extends PrimitiveIterator<Integer, IntConsumer> {
        int nextInt();
    }

    public interface OfLong extends PrimitiveIterator<Long, LongConsumer> {
        long nextLong();
    }

    void forEachRemaining(T_CONS t_cons);
}
