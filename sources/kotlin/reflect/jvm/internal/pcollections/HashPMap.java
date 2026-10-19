package kotlin.reflect.jvm.internal.pcollections;

/* JADX INFO: loaded from: classes5.dex */
public final class HashPMap<K, V> {
    private static final HashPMap<Object, Object> a = new HashPMap<>(IntTreePMap.empty(), 0);
    private final IntTreePMap<ConsPStack<b<K, V>>> b;
    private final int c;

    private HashPMap(IntTreePMap<ConsPStack<b<K, V>>> intTreePMap, int i) {
        this.b = intTreePMap;
        this.c = i;
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[2];
        objArr[0] = "kotlin/reflect/jvm/internal/pcollections/HashPMap";
        if (i != 1) {
            objArr[1] = "empty";
        } else {
            objArr[1] = "minus";
        }
        throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", objArr));
    }

    private ConsPStack<b<K, V>> c(int i) {
        ConsPStack<b<K, V>> consPStackA = this.b.a(i);
        return consPStackA == null ? ConsPStack.empty() : consPStackA;
    }

    private static <K, V> int d(ConsPStack<b<K, V>> consPStack, Object obj) {
        int i = 0;
        while (consPStack != null && consPStack.size() > 0) {
            if (consPStack.b.a.equals(obj)) {
                return i;
            }
            consPStack = consPStack.c;
            i++;
        }
        return -1;
    }

    public static <K, V> HashPMap<K, V> empty() {
        HashPMap<K, V> hashPMap = (HashPMap<K, V>) a;
        if (hashPMap == null) {
            a(0);
        }
        return hashPMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public V b(Object obj) {
        for (ConsPStack consPStackC = c(obj.hashCode()); consPStackC != null && consPStackC.size() > 0; consPStackC = consPStackC.c) {
            b bVar = (b) consPStackC.b;
            if (bVar.a.equals(obj)) {
                return bVar.b;
            }
        }
        return null;
    }

    public HashPMap<K, V> e(K k, V v) {
        ConsPStack<b<K, V>> consPStackC = c(k.hashCode());
        int size = consPStackC.size();
        int iD = d(consPStackC, k);
        if (iD != -1) {
            consPStackC = consPStackC.d(iD);
        }
        ConsPStack<b<K, V>> consPStackF = consPStackC.f(new b<>(k, v));
        return new HashPMap<>(this.b.b(k.hashCode(), consPStackF), (this.c - size) + consPStackF.size());
    }
}
