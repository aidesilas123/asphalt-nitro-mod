package kotlin.reflect.jvm;

import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.o;

/* JADX INFO: compiled from: KTypesJvm.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KTypesJvm {
    public static final KClass<?> getJvmErasure(KType jvmErasure) {
        KClass<?> jvmErasure2;
        Intrinsics.checkParameterIsNotNull(jvmErasure, "$this$jvmErasure");
        KClassifier kClassifierD = jvmErasure.d();
        if (kClassifierD != null && (jvmErasure2 = getJvmErasure(kClassifierD)) != null) {
            return jvmErasure2;
        }
        throw new o("Cannot calculate JVM erasure for type: " + jvmErasure);
    }

    public static final KClass<?> getJvmErasure(KClassifier jvmErasure) {
        Object obj;
        KClass<?> jvmErasure2;
        Intrinsics.checkParameterIsNotNull(jvmErasure, "$this$jvmErasure");
        if (jvmErasure instanceof KClass) {
            return (KClass) jvmErasure;
        }
        if (!(jvmErasure instanceof KTypeParameter)) {
            throw new o("Cannot calculate JVM erasure for type: " + jvmErasure);
        }
        List<KType> upperBounds = ((KTypeParameter) jvmErasure).getUpperBounds();
        Iterator<T> it = upperBounds.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            KType kType = (KType) next;
            if (kType == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
            }
            f fVarQ = ((KTypeImpl) kType).j().H0().q();
            d dVar = (d) (fVarQ instanceof d ? fVarQ : null);
            if ((dVar == null || dVar.getKind() == ClassKind.INTERFACE || dVar.getKind() == ClassKind.ANNOTATION_CLASS) ? false : true) {
                obj = next;
                break;
            }
        }
        KType kType2 = (KType) obj;
        if (kType2 == null) {
            kType2 = (KType) p.firstOrNull((List) upperBounds);
        }
        return (kType2 == null || (jvmErasure2 = getJvmErasure(kType2)) == null) ? Reflection.getOrCreateKotlinClass(Object.class) : jvmErasure2;
    }

    public static /* synthetic */ void jvmErasure$annotations(KType kType) {
    }
}
