package com.koushikdutta.quack;

import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class Memoize<T> {
    MemoizeMap<T> store;

    public interface MemoizeMap<V> {
        void clear();

        boolean containsKey(Object obj);

        V get(Object obj);

        V put(Integer num, V v);
    }

    public static class MemoizeMapImpl<V> extends HashMap<Integer, V> implements MemoizeMap<V> {
        private static final long serialVersionUID = -4020434697394716201L;

        private MemoizeMapImpl() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.koushikdutta.quack.Memoize.MemoizeMap
        public /* bridge */ /* synthetic */ Object put(Integer num, Object obj) {
            return super.put(num, obj);
        }
    }

    public Memoize() {
        this(new MemoizeMapImpl());
    }

    public Memoize(MemoizeMap<T> memoizeMap) {
        this.store = memoizeMap;
    }

    public static int hashCode(Object... objArr) {
        int iRotateLeft = 0;
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            iRotateLeft ^= Integer.rotateLeft(obj == null ? 0 : obj.hashCode(), i);
        }
        return objArr.length ^ iRotateLeft;
    }

    private T memoize(MemoizeFunc<T> memoizeFunc, int i) {
        if (this.store.containsKey(Integer.valueOf(i))) {
            return this.store.get(Integer.valueOf(i));
        }
        T tProcess = memoizeFunc.process();
        this.store.put(Integer.valueOf(i), tProcess);
        return tProcess;
    }

    public void clear() {
        this.store.clear();
    }

    public T memoize(MemoizeFunc<T> memoizeFunc, Object obj, Object[] objArr) {
        return memoize(memoizeFunc, (obj == null ? 0 : obj.hashCode()) ^ hashCode(objArr));
    }

    public T memoize(MemoizeFunc<T> memoizeFunc, Object obj, Object[] objArr, Object[] objArr2) {
        return memoize(memoizeFunc, (obj == null ? 0 : obj.hashCode()) ^ (hashCode(objArr) ^ hashCode(objArr2)));
    }

    public T memoize(MemoizeFunc<T> memoizeFunc, Object... objArr) {
        return memoize(memoizeFunc, hashCode(objArr));
    }
}
