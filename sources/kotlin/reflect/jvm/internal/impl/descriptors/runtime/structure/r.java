package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReflectJavaType.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class r implements kotlin.reflect.jvm.internal.impl.load.java.structure.t {
    public static final a a = new a(null);

    /* JADX INFO: compiled from: ReflectJavaType.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final r a(Type type) {
            Intrinsics.checkParameterIsNotNull(type, "type");
            boolean z = type instanceof Class;
            if (z) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    return new q(cls);
                }
            }
            return ((type instanceof GenericArrayType) || (z && ((Class) type).isArray())) ? new f(type) : type instanceof WildcardType ? new u((WildcardType) type) : new h(type);
        }
    }

    protected abstract Type K();

    public boolean equals(Object obj) {
        return (obj instanceof r) && Intrinsics.areEqual(K(), ((r) obj).K());
    }

    public int hashCode() {
        return K().hashCode();
    }

    public String toString() {
        return getClass().getName() + ": " + K();
    }
}
