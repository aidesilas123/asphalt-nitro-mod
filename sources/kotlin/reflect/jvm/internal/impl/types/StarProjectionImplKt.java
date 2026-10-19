package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: compiled from: StarProjectionImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StarProjectionImplKt {

    /* JADX INFO: compiled from: StarProjectionImpl.kt */
    public static final class a extends TypeConstructorSubstitution {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f9836d;

        a(List list) {
            this.f9836d = list;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
        public g0 h(f0 key) {
            Intrinsics.checkParameterIsNotNull(key, "key");
            if (!this.f9836d.contains(key)) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = key.q();
            if (fVarQ != null) {
                return TypeUtils.makeStarProjection((kotlin.reflect.jvm.internal.impl.descriptors.i0) fVarQ);
            }
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        }
    }

    public static final u starProjectionType(kotlin.reflect.jvm.internal.impl.descriptors.i0 starProjectionType) {
        Intrinsics.checkParameterIsNotNull(starProjectionType, "$this$starProjectionType");
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = starProjectionType.b();
        if (iVarB == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassifierDescriptorWithTypeParameters");
        }
        f0 f0VarI = ((kotlin.reflect.jvm.internal.impl.descriptors.g) iVarB).i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "classDescriptor.typeConstructor");
        List<kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters = f0VarI.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "classDescriptor.typeConstructor.parameters");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10));
        for (kotlin.reflect.jvm.internal.impl.descriptors.i0 it : parameters) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(it.i());
        }
        TypeSubstitutor typeSubstitutorCreate = TypeSubstitutor.create(new a(arrayList));
        List<u> upperBounds = starProjectionType.getUpperBounds();
        Intrinsics.checkExpressionValueIsNotNull(upperBounds, "this.upperBounds");
        u uVarI = typeSubstitutorCreate.i((u) kotlin.collections.p.first((List) upperBounds), Variance.OUT_VARIANCE);
        if (uVarI != null) {
            return uVarI;
        }
        y yVarY = DescriptorUtilsKt.getBuiltIns(starProjectionType).y();
        Intrinsics.checkExpressionValueIsNotNull(yVarY, "builtIns.defaultBound");
        return yVarY;
    }
}
