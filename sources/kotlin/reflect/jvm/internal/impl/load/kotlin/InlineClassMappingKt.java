package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;

/* JADX INFO: compiled from: inlineClassMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class InlineClassMappingKt {
    private static final kotlin.reflect.jvm.internal.impl.types.model.f a(TypeSystemCommonBackendContext typeSystemCommonBackendContext, kotlin.reflect.jvm.internal.impl.types.model.f fVar, HashSet<kotlin.reflect.jvm.internal.impl.types.model.j> hashSet) {
        kotlin.reflect.jvm.internal.impl.types.model.f fVarA;
        kotlin.reflect.jvm.internal.impl.types.model.j jVarH = typeSystemCommonBackendContext.H(fVar);
        if (!hashSet.add(jVarH)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.types.model.k kVarH = typeSystemCommonBackendContext.h(jVarH);
        if (kVarH != null) {
            fVarA = a(typeSystemCommonBackendContext, typeSystemCommonBackendContext.D(kVarH), hashSet);
            if (fVarA == null) {
                return null;
            }
            if (!typeSystemCommonBackendContext.v(fVarA) && typeSystemCommonBackendContext.W(fVar)) {
                return typeSystemCommonBackendContext.c0(fVarA);
            }
        } else {
            if (!typeSystemCommonBackendContext.p(jVarH)) {
                return fVar;
            }
            kotlin.reflect.jvm.internal.impl.types.model.f fVarQ = typeSystemCommonBackendContext.Q(fVar);
            if (fVarQ == null || (fVarA = a(typeSystemCommonBackendContext, fVarQ, hashSet)) == null) {
                return null;
            }
            if (typeSystemCommonBackendContext.v(fVar)) {
                return typeSystemCommonBackendContext.v(fVarA) ? fVar : ((fVarA instanceof kotlin.reflect.jvm.internal.impl.types.model.g) && typeSystemCommonBackendContext.z((kotlin.reflect.jvm.internal.impl.types.model.g) fVarA)) ? fVar : typeSystemCommonBackendContext.c0(fVarA);
            }
        }
        return fVarA;
    }

    public static final kotlin.reflect.jvm.internal.impl.types.model.f computeExpandedTypeForInlineClass(TypeSystemCommonBackendContext computeExpandedTypeForInlineClass, kotlin.reflect.jvm.internal.impl.types.model.f inlineClassType) {
        Intrinsics.checkParameterIsNotNull(computeExpandedTypeForInlineClass, "$this$computeExpandedTypeForInlineClass");
        Intrinsics.checkParameterIsNotNull(inlineClassType, "inlineClassType");
        return a(computeExpandedTypeForInlineClass, inlineClassType, new HashSet());
    }
}
