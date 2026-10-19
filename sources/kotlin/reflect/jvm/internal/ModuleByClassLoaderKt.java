package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: compiled from: moduleByClassLoader.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ModuleByClassLoaderKt {
    private static final ConcurrentMap<s, WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h>> a = new ConcurrentHashMap();

    public static final void clearModuleByClassLoaderCache() {
        a.clear();
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h getOrCreateModule(Class<?> getOrCreateModule) {
        Intrinsics.checkParameterIsNotNull(getOrCreateModule, "$this$getOrCreateModule");
        ClassLoader safeClassLoader = ReflectClassUtilKt.getSafeClassLoader(getOrCreateModule);
        s sVar = new s(safeClassLoader);
        ConcurrentMap<s, WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h>> concurrentMap = a;
        WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h> weakReference = concurrentMap.get(sVar);
        if (weakReference != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h it = weakReference.get();
            if (it != null) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                return it;
            }
            concurrentMap.remove(sVar, weakReference);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h hVarA = kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h.a.a(safeClassLoader);
        while (true) {
            try {
                ConcurrentMap<s, WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h>> concurrentMap2 = a;
                WeakReference<kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h> weakReferencePutIfAbsent = concurrentMap2.putIfAbsent(sVar, new WeakReference<>(hVarA));
                if (weakReferencePutIfAbsent == null) {
                    return hVarA;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h hVar = weakReferencePutIfAbsent.get();
                if (hVar != null) {
                    return hVar;
                }
                concurrentMap2.remove(sVar, weakReferencePutIfAbsent);
            } finally {
                sVar.a(null);
            }
        }
    }
}
