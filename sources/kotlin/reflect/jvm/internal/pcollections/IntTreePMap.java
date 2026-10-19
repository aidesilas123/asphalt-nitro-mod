package kotlin.reflect.jvm.internal.pcollections;

/* JADX INFO: loaded from: classes5.dex */
final class IntTreePMap<V> {
    private static final IntTreePMap<Object> a = new IntTreePMap<>(a.a);
    private final a<V> b;

    private IntTreePMap(a<V> aVar) {
        this.b = aVar;
    }

    private IntTreePMap<V> c(a<V> aVar) {
        return aVar == this.b ? this : new IntTreePMap<>(aVar);
    }

    public static <V> IntTreePMap<V> empty() {
        return (IntTreePMap<V>) a;
    }

    public V a(int i) {
        return this.b.a(i);
    }

    public IntTreePMap<V> b(int i, V v) {
        return c(this.b.b(i, v));
    }
}
