package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: typeParameterUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeParameterUtilsKt {

    /* JADX INFO: compiled from: typeParameterUtils.kt */
    static final class a extends Lambda implements Function1<i, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(i it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it instanceof kotlin.reflect.jvm.internal.impl.descriptors.a;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(i iVar) {
            return Boolean.valueOf(a(iVar));
        }
    }

    /* JADX INFO: compiled from: typeParameterUtils.kt */
    static final class b extends Lambda implements Function1<i, Boolean> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final boolean a(i it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return !(it instanceof h);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(i iVar) {
            return Boolean.valueOf(a(iVar));
        }
    }

    /* JADX INFO: compiled from: typeParameterUtils.kt */
    static final class c extends Lambda implements Function1<i, Sequence<? extends i0>> {
        public static final c a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Sequence<i0> invoke(i it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            List<i0> typeParameters = ((kotlin.reflect.jvm.internal.impl.descriptors.a) it).getTypeParameters();
            Intrinsics.checkExpressionValueIsNotNull(typeParameters, "(it as CallableDescriptor).typeParameters");
            return CollectionsKt___CollectionsKt.asSequence(typeParameters);
        }
    }

    private static final w a(kotlin.reflect.jvm.internal.impl.types.u uVar, g gVar, int i) {
        if (gVar == null || ErrorUtils.isError(gVar)) {
            return null;
        }
        int size = gVar.o().size() + i;
        if (gVar.x()) {
            List<kotlin.reflect.jvm.internal.impl.types.g0> listSubList = uVar.G0().subList(i, size);
            i iVarB = gVar.b();
            return new w(gVar, listSubList, a(uVar, (g) (iVarB instanceof g ? iVarB : null), size));
        }
        if (size != uVar.G0().size()) {
            DescriptorUtils.isLocal(gVar);
        }
        return new w(gVar, uVar.G0().subList(i, uVar.G0().size()), null);
    }

    private static final kotlin.reflect.jvm.internal.impl.descriptors.b b(i0 i0Var, i iVar, int i) {
        return new kotlin.reflect.jvm.internal.impl.descriptors.b(i0Var, iVar, i);
    }

    public static final w buildPossiblyInnerType(kotlin.reflect.jvm.internal.impl.types.u buildPossiblyInnerType) {
        Intrinsics.checkParameterIsNotNull(buildPossiblyInnerType, "$this$buildPossiblyInnerType");
        f fVarQ = buildPossiblyInnerType.H0().q();
        if (!(fVarQ instanceof g)) {
            fVarQ = null;
        }
        return a(buildPossiblyInnerType, (g) fVarQ, 0);
    }

    public static final List<i0> computeConstructorTypeParameters(g computeConstructorTypeParameters) {
        List<i0> listEmptyList;
        i next;
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarI;
        Intrinsics.checkParameterIsNotNull(computeConstructorTypeParameters, "$this$computeConstructorTypeParameters");
        List<i0> declaredTypeParameters = computeConstructorTypeParameters.o();
        Intrinsics.checkExpressionValueIsNotNull(declaredTypeParameters, "declaredTypeParameters");
        if (!computeConstructorTypeParameters.x() && !(computeConstructorTypeParameters.b() instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
            return declaredTypeParameters;
        }
        List list = SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.flatMap(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.takeWhile(DescriptorUtilsKt.getParents(computeConstructorTypeParameters), a.a), b.a), c.a));
        Iterator<i> it = DescriptorUtilsKt.getParents(computeConstructorTypeParameters).iterator();
        while (true) {
            listEmptyList = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next instanceof d) {
                break;
            }
        }
        d dVar = (d) next;
        if (dVar != null && (f0VarI = dVar.i()) != null) {
            listEmptyList = f0VarI.getParameters();
        }
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        if (list.isEmpty() && listEmptyList.isEmpty()) {
            List<i0> declaredTypeParameters2 = computeConstructorTypeParameters.o();
            Intrinsics.checkExpressionValueIsNotNull(declaredTypeParameters2, "declaredTypeParameters");
            return declaredTypeParameters2;
        }
        List<i0> listPlus = CollectionsKt___CollectionsKt.plus((Collection) list, (Iterable) listEmptyList);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listPlus, 10));
        for (i0 it2 : listPlus) {
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            arrayList.add(b(it2, computeConstructorTypeParameters, declaredTypeParameters.size()));
        }
        return CollectionsKt___CollectionsKt.plus((Collection) declaredTypeParameters, (Iterable) arrayList);
    }
}
