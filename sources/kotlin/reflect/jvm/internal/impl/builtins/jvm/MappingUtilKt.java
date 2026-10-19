package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: mappingUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MappingUtilKt {
    public static final TypeConstructorSubstitution createMappedTypeParametersSubstitution(d from, d to) {
        Intrinsics.checkParameterIsNotNull(from, "from");
        Intrinsics.checkParameterIsNotNull(to, "to");
        from.o().size();
        to.o().size();
        TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.c;
        List<i0> listO = from.o();
        Intrinsics.checkExpressionValueIsNotNull(listO, "from.declaredTypeParameters");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listO, 10));
        Iterator<T> it = listO.iterator();
        while (it.hasNext()) {
            arrayList.add(((i0) it.next()).i());
        }
        List<i0> listO2 = to.o();
        Intrinsics.checkExpressionValueIsNotNull(listO2, "to.declaredTypeParameters");
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listO2, 10));
        for (i0 it2 : listO2) {
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            y yVarN = it2.n();
            Intrinsics.checkExpressionValueIsNotNull(yVarN, "it.defaultType");
            arrayList2.add(TypeUtilsKt.asTypeProjection(yVarN));
        }
        return TypeConstructorSubstitution.Companion.createByConstructorsMap$default(companion, MapsKt__MapsKt.toMap(CollectionsKt___CollectionsKt.zip(arrayList, arrayList2)), false, 2, null);
    }
}
