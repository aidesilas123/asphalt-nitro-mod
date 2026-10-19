package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: ErasedOverridabilityCondition.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f implements ExternalOverridabilityCondition {

    /* JADX INFO: compiled from: ErasedOverridabilityCondition.kt */
    static final class a extends Lambda implements Function1<ValueParameterDescriptor, u> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u invoke(ValueParameterDescriptor it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            return it.getType();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Contract a() {
        return ExternalOverridabilityCondition.Contract.SUCCESS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public ExternalOverridabilityCondition.Result b(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        boolean z;
        kotlin.reflect.jvm.internal.impl.descriptors.a aVarC;
        Intrinsics.checkParameterIsNotNull(superDescriptor, "superDescriptor");
        Intrinsics.checkParameterIsNotNull(subDescriptor, "subDescriptor");
        if (subDescriptor instanceof JavaMethodDescriptor) {
            JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) subDescriptor;
            Intrinsics.checkExpressionValueIsNotNull(javaMethodDescriptor.getTypeParameters(), "subDescriptor.typeParameters");
            if (!(!r0.isEmpty())) {
                OverridingUtil.OverrideCompatibilityInfo basicOverridabilityProblem = OverridingUtil.getBasicOverridabilityProblem(superDescriptor, subDescriptor);
                if ((basicOverridabilityProblem != null ? basicOverridabilityProblem.b() : null) != null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                List<ValueParameterDescriptor> listG = javaMethodDescriptor.g();
                Intrinsics.checkExpressionValueIsNotNull(listG, "subDescriptor.valueParameters");
                Sequence map = SequencesKt___SequencesKt.map(CollectionsKt___CollectionsKt.asSequence(listG), a.a);
                u returnType = javaMethodDescriptor.getReturnType();
                if (returnType == null) {
                    Intrinsics.throwNpe();
                }
                Sequence sequencePlus = SequencesKt___SequencesKt.plus((Sequence<? extends u>) map, returnType);
                b0 b0VarK = javaMethodDescriptor.K();
                Iterator it = SequencesKt___SequencesKt.plus(sequencePlus, (Iterable) CollectionsKt__CollectionsKt.listOfNotNull(b0VarK != null ? b0VarK.getType() : null)).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    u uVar = (u) it.next();
                    if ((uVar.G0().isEmpty() ^ true) && !(uVar.K0() instanceof kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b)) {
                        z = true;
                        break;
                    }
                }
                if (!z && (aVarC = superDescriptor.c(RawSubstitution.f9244e.c())) != null) {
                    if (aVarC instanceof c0) {
                        c0 c0Var = (c0) aVarC;
                        Intrinsics.checkExpressionValueIsNotNull(c0Var.getTypeParameters(), "erasedSuper.typeParameters");
                        if ((!r0.isEmpty()) && (aVarC = c0Var.r().o(CollectionsKt__CollectionsKt.emptyList()).build()) == null) {
                            Intrinsics.throwNpe();
                        }
                    }
                    OverridingUtil.OverrideCompatibilityInfo overrideCompatibilityInfoW = OverridingUtil.b.w(aVarC, subDescriptor, false);
                    Intrinsics.checkExpressionValueIsNotNull(overrideCompatibilityInfoW, "OverridingUtil.DEFAULT.i…er, subDescriptor, false)");
                    OverridingUtil.OverrideCompatibilityInfo.Result resultB = overrideCompatibilityInfoW.b();
                    Intrinsics.checkExpressionValueIsNotNull(resultB, "OverridingUtil.DEFAULT.i…Descriptor, false).result");
                    return e.a[resultB.ordinal()] != 1 ? ExternalOverridabilityCondition.Result.UNKNOWN : ExternalOverridabilityCondition.Result.OVERRIDABLE;
                }
                return ExternalOverridabilityCondition.Result.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
