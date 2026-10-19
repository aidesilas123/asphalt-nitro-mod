package kotlin.reflect.full;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.h0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.o;

/* JADX INFO: compiled from: KClassifiers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KClassifiers {

    /* JADX INFO: compiled from: KClassifiers.kt */
    static final class a extends Lambda implements Function0 {
        final /* synthetic */ KClassifier a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(KClassifier kClassifier) {
            super(0);
            this.a = kClassifier;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Void invoke() {
            throw new NotImplementedError("An operation is not implemented: " + ("Java type is not yet supported for types created with createType (classifier = " + this.a + ')'));
        }
    }

    private static final y a(Annotations annotations, f0 f0Var, List<KTypeProjection> list, boolean z) {
        h0 i0Var;
        List<i0> parameters = f0Var.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "typeConstructor.parameters");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            KTypeProjection kTypeProjection = (KTypeProjection) obj;
            KTypeImpl kTypeImpl = (KTypeImpl) kTypeProjection.d();
            u uVarJ = kTypeImpl != null ? kTypeImpl.j() : null;
            KVariance kVarianceE = kTypeProjection.e();
            if (kVarianceE == null) {
                i0 i0Var2 = parameters.get(i);
                Intrinsics.checkExpressionValueIsNotNull(i0Var2, "parameters[index]");
                i0Var = new StarProjectionImpl(i0Var2);
            } else {
                int i3 = e.a[kVarianceE.ordinal()];
                if (i3 == 1) {
                    Variance variance = Variance.INVARIANT;
                    if (uVarJ == null) {
                        Intrinsics.throwNpe();
                    }
                    i0Var = new kotlin.reflect.jvm.internal.impl.types.i0(variance, uVarJ);
                } else if (i3 == 2) {
                    Variance variance2 = Variance.IN_VARIANCE;
                    if (uVarJ == null) {
                        Intrinsics.throwNpe();
                    }
                    i0Var = new kotlin.reflect.jvm.internal.impl.types.i0(variance2, uVarJ);
                } else {
                    if (i3 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Variance variance3 = Variance.OUT_VARIANCE;
                    if (uVarJ == null) {
                        Intrinsics.throwNpe();
                    }
                    i0Var = new kotlin.reflect.jvm.internal.impl.types.i0(variance3, uVarJ);
                }
            }
            arrayList.add(i0Var);
            i = i2;
        }
        return KotlinTypeFactory.simpleType$default(annotations, f0Var, arrayList, z, null, 16, null);
    }

    public static final KType createType(KClassifier createType, List<KTypeProjection> arguments, boolean z, List<? extends Annotation> annotations) {
        f descriptor;
        Intrinsics.checkParameterIsNotNull(createType, "$this$createType");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        kotlin.reflect.jvm.internal.e eVar = (kotlin.reflect.jvm.internal.e) (!(createType instanceof kotlin.reflect.jvm.internal.e) ? null : createType);
        if (eVar == null || (descriptor = eVar.getDescriptor()) == null) {
            throw new o("Cannot create type for an unsupported classifier: " + createType + " (" + createType.getClass() + ')');
        }
        f0 f0VarI = descriptor.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "descriptor.typeConstructor");
        List<i0> parameters = f0VarI.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "typeConstructor.parameters");
        if (parameters.size() == arguments.size()) {
            return new KTypeImpl(a(annotations.isEmpty() ? Annotations.e0.b() : Annotations.e0.b(), f0VarI, arguments, z), new a(createType));
        }
        throw new IllegalArgumentException("Class declares " + parameters.size() + " type parameters, but " + arguments.size() + " were provided.");
    }

    public static /* synthetic */ KType createType$default(KClassifier kClassifier, List list, boolean z, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            list2 = CollectionsKt__CollectionsKt.emptyList();
        }
        return createType(kClassifier, list, z, list2);
    }

    public static final KType getStarProjectedType(KClassifier starProjectedType) {
        f descriptor;
        Intrinsics.checkParameterIsNotNull(starProjectedType, "$this$starProjectedType");
        kotlin.reflect.jvm.internal.e eVar = (kotlin.reflect.jvm.internal.e) (!(starProjectedType instanceof kotlin.reflect.jvm.internal.e) ? null : starProjectedType);
        if (eVar == null || (descriptor = eVar.getDescriptor()) == null) {
            return createType$default(starProjectedType, null, false, null, 7, null);
        }
        f0 f0VarI = descriptor.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "descriptor.typeConstructor");
        List<i0> parameters = f0VarI.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "descriptor.typeConstructor.parameters");
        if (parameters.isEmpty()) {
            return createType$default(starProjectedType, null, false, null, 7, null);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10));
        for (i0 i0Var : parameters) {
            arrayList.add(KTypeProjection.a.c());
        }
        return createType$default(starProjectedType, arrayList, false, null, 6, null);
    }

    public static /* synthetic */ void starProjectedType$annotations(KClassifier kClassifier) {
    }
}
