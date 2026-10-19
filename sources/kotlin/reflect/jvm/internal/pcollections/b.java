package kotlin.reflect.jvm.internal.pcollections;

import com.json.o2;
import java.io.Serializable;

/* JADX INFO: compiled from: MapEntry.java */
/* JADX INFO: loaded from: classes5.dex */
final class b<K, V> implements Serializable {
    public final K a;
    public final V b;

    public b(K k, V v) {
        this.a = k;
        this.b = v;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        K k = this.a;
        if (k == null) {
            if (bVar.a != null) {
                return false;
            }
        } else if (!k.equals(bVar.a)) {
            return false;
        }
        V v = this.b;
        V v2 = bVar.b;
        if (v == null) {
            if (v2 != null) {
                return false;
            }
        } else if (!v.equals(v2)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        K k = this.a;
        int iHashCode = k == null ? 0 : k.hashCode();
        V v = this.b;
        return iHashCode ^ (v != null ? v.hashCode() : 0);
    }

    public String toString() {
        return this.a + o2.i.b + this.b;
    }
}
