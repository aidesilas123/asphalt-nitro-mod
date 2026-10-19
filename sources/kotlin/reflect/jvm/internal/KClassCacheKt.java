package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.pcollections.HashPMap;

/* JADX INFO: compiled from: kClassCache.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KClassCacheKt {
    private static HashPMap<String, Object> a;

    static {
        HashPMap<String, Object> hashPMapEmpty = HashPMap.empty();
        Intrinsics.checkExpressionValueIsNotNull(hashPMapEmpty, "HashPMap.empty<String, Any>()");
        a = hashPMapEmpty;
    }

    public static final void clearKClassCache() {
        HashPMap<String, Object> hashPMapEmpty = HashPMap.empty();
        Intrinsics.checkExpressionValueIsNotNull(hashPMapEmpty, "HashPMap.empty()");
        a = hashPMapEmpty;
    }

    public static final <T> KClassImpl<T> getOrCreateKotlinClass(Class<T> jClass) {
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        String name = jClass.getName();
        Object objB = a.b(name);
        if (objB instanceof WeakReference) {
            KClassImpl<T> kClassImpl = (KClassImpl) ((WeakReference) objB).get();
            if (Intrinsics.areEqual(kClassImpl != null ? kClassImpl.a() : null, jClass)) {
                return kClassImpl;
            }
        } else if (objB != null) {
            for (WeakReference weakReference : (WeakReference[]) objB) {
                KClassImpl<T> kClassImpl2 = (KClassImpl) weakReference.get();
                if (Intrinsics.areEqual(kClassImpl2 != null ? kClassImpl2.a() : null, jClass)) {
                    return kClassImpl2;
                }
            }
            int length = ((Object[]) objB).length;
            WeakReference[] weakReferenceArr = new WeakReference[length + 1];
            System.arraycopy(objB, 0, weakReferenceArr, 0, length);
            KClassImpl<T> kClassImpl3 = new KClassImpl<>(jClass);
            weakReferenceArr[length] = new WeakReference(kClassImpl3);
            HashPMap<String, Object> hashPMapE = a.e(name, weakReferenceArr);
            Intrinsics.checkExpressionValueIsNotNull(hashPMapE, "K_CLASS_CACHE.plus(name, newArray)");
            a = hashPMapE;
            return kClassImpl3;
        }
        KClassImpl<T> kClassImpl4 = new KClassImpl<>(jClass);
        HashPMap<String, Object> hashPMapE2 = a.e(name, new WeakReference(kClassImpl4));
        Intrinsics.checkExpressionValueIsNotNull(hashPMapE2, "K_CLASS_CACHE.plus(name, WeakReference(newKClass))");
        a = hashPMapE2;
        return kClassImpl4;
    }
}
