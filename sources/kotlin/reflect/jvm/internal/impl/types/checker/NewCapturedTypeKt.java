package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: NewCapturedType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NewCapturedTypeKt {
    public static final y captureFromArguments(y type, CaptureStatus status) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(status, "status");
        if (type.G0().size() != type.H0().getParameters().size()) {
            return null;
        }
        List<g0> listG0 = type.G0();
        boolean z = true;
        if (!(listG0 instanceof Collection) || !listG0.isEmpty()) {
            Iterator<T> it = listG0.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (!(((g0) it.next()).c() == Variance.INVARIANT)) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            return null;
        }
        List<i0> parameters = type.H0().getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "type.constructor.parameters");
        List<Pair> listZip = CollectionsKt___CollectionsKt.zip(listG0, parameters);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listZip, 10));
        for (Pair pair : listZip) {
            g0 g0VarAsTypeProjection = (g0) pair.c();
            i0 parameter = (i0) pair.d();
            if (g0VarAsTypeProjection.c() != Variance.INVARIANT) {
                m0 m0VarK0 = (g0VarAsTypeProjection.b() || g0VarAsTypeProjection.c() != Variance.IN_VARIANCE) ? null : g0VarAsTypeProjection.getType().K0();
                Intrinsics.checkExpressionValueIsNotNull(parameter, "parameter");
                g0VarAsTypeProjection = TypeUtilsKt.asTypeProjection(new e(status, m0VarK0, g0VarAsTypeProjection, parameter));
            }
            arrayList.add(g0VarAsTypeProjection);
        }
        TypeSubstitutor typeSubstitutorC = TypeConstructorSubstitution.c.b(type.H0(), arrayList).c();
        int size = listG0.size();
        for (int i = 0; i < size; i++) {
            g0 g0Var = listG0.get(i);
            g0 g0Var2 = (g0) arrayList.get(i);
            if (g0Var.c() != Variance.INVARIANT) {
                i0 i0Var = type.H0().getParameters().get(i);
                Intrinsics.checkExpressionValueIsNotNull(i0Var, "type.constructor.parameters[index]");
                List<u> upperBounds = i0Var.getUpperBounds();
                Intrinsics.checkExpressionValueIsNotNull(upperBounds, "type.constructor.parameters[index].upperBounds");
                ArrayList arrayList2 = new ArrayList();
                Iterator<T> it2 = upperBounds.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(f.b.a().h(typeSubstitutorC.g((u) it2.next(), Variance.INVARIANT).K0()));
                }
                if (!g0Var.b() && g0Var.c() == Variance.OUT_VARIANCE) {
                    arrayList2.add(f.b.a().h(g0Var.getType().K0()));
                }
                u type2 = g0Var2.getType();
                if (type2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedType");
                }
                ((e) type2).H0().g(arrayList2);
            }
        }
        return KotlinTypeFactory.simpleType$default(type.getAnnotations(), type.H0(), arrayList, type.I0(), null, 16, null);
    }
}
