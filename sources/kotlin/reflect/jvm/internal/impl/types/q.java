package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: compiled from: flexibleTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class q extends p implements i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f9871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f9872e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9873f;

    /* JADX INFO: compiled from: flexibleTypes.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(y lowerBound, y upperBound) {
        super(lowerBound, upperBound);
        Intrinsics.checkParameterIsNotNull(lowerBound, "lowerBound");
        Intrinsics.checkParameterIsNotNull(upperBound, "upperBound");
    }

    private final void T0() {
        if (!f9871d || this.f9873f) {
            return;
        }
        this.f9873f = true;
        FlexibleTypesKt.isFlexible(P0());
        FlexibleTypesKt.isFlexible(Q0());
        Intrinsics.areEqual(P0(), Q0());
        kotlin.reflect.jvm.internal.impl.types.checker.c.a.d(P0(), Q0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    public m0 L0(boolean z) {
        return KotlinTypeFactory.flexibleType(P0().L0(z), Q0().L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    public m0 N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return KotlinTypeFactory.flexibleType(P0().N0(newAnnotations), Q0().N0(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public y O0() {
        T0();
        return P0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public String R0(DescriptorRenderer renderer, DescriptorRendererOptions options) {
        Intrinsics.checkParameterIsNotNull(renderer, "renderer");
        Intrinsics.checkParameterIsNotNull(options, "options");
        if (!options.getDebugMode()) {
            return renderer.r(renderer.u(P0()), renderer.u(Q0()), TypeUtilsKt.getBuiltIns(this));
        }
        return '(' + renderer.u(P0()) + ".." + renderer.u(Q0()) + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public p R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        u uVarG = kotlinTypeRefiner.g(P0());
        if (uVarG == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        }
        y yVar = (y) uVarG;
        u uVarG2 = kotlinTypeRefiner.g(Q0());
        if (uVarG2 != null) {
            return new q(yVar, (y) uVarG2);
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i
    public u b0(u replacement) {
        m0 m0VarFlexibleType;
        Intrinsics.checkParameterIsNotNull(replacement, "replacement");
        m0 m0VarK0 = replacement.K0();
        if (m0VarK0 instanceof p) {
            m0VarFlexibleType = m0VarK0;
        } else {
            if (!(m0VarK0 instanceof y)) {
                throw new NoWhenBranchMatchedException();
            }
            y yVar = (y) m0VarK0;
            m0VarFlexibleType = KotlinTypeFactory.flexibleType(yVar, yVar.L0(true));
        }
        return TypeWithEnhancementKt.inheritEnhancement(m0VarFlexibleType, m0VarK0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.i
    public boolean u() {
        return (P0().H0().q() instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0) && Intrinsics.areEqual(P0().H0(), Q0().H0());
    }
}
