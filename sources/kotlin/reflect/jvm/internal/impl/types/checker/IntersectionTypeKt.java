package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: IntersectionType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class IntersectionTypeKt {
    public static final m0 intersectTypes(List<? extends m0> types) {
        y yVarP0;
        Intrinsics.checkParameterIsNotNull(types, "types");
        int size = types.size();
        if (size == 0) {
            throw new IllegalStateException("Expected some types".toString());
        }
        if (size == 1) {
            return (m0) p.single((List) types);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10));
        boolean z = false;
        boolean z2 = false;
        for (m0 m0Var : types) {
            z = z || KotlinTypeKt.isError(m0Var);
            if (m0Var instanceof y) {
                yVarP0 = (y) m0Var;
            } else {
                if (!(m0Var instanceof kotlin.reflect.jvm.internal.impl.types.p)) {
                    throw new NoWhenBranchMatchedException();
                }
                if (DynamicTypesKt.isDynamic(m0Var)) {
                    return m0Var;
                }
                yVarP0 = ((kotlin.reflect.jvm.internal.impl.types.p) m0Var).P0();
                z2 = true;
            }
            arrayList.add(yVarP0);
        }
        if (z) {
            y yVarCreateErrorType = ErrorUtils.createErrorType("Intersection of error types: " + types);
            Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy… of error types: $types\")");
            return yVarCreateErrorType;
        }
        if (!z2) {
            return TypeIntersector.a.b(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10));
        Iterator<T> it = types.iterator();
        while (it.hasNext()) {
            arrayList2.add(FlexibleTypesKt.upperIfFlexible((m0) it.next()));
        }
        TypeIntersector typeIntersector = TypeIntersector.a;
        return KotlinTypeFactory.flexibleType(typeIntersector.b(arrayList), typeIntersector.b(arrayList2));
    }
}
