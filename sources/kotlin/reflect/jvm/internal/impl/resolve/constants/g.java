package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class g<T> {
    private final T a;

    public g(T t) {
        this.a = t;
    }

    public abstract kotlin.reflect.jvm.internal.impl.types.u a(ModuleDescriptor moduleDescriptor);

    public T b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            T tB = b();
            if (!(obj instanceof g)) {
                obj = null;
            }
            g gVar = (g) obj;
            if (!Intrinsics.areEqual(tB, gVar != null ? gVar.b() : null)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        T tB = b();
        if (tB != null) {
            return tB.hashCode();
        }
        return 0;
    }

    public String toString() {
        return String.valueOf(b());
    }
}
