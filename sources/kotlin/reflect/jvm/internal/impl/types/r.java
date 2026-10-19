package kotlin.reflect.jvm.internal.impl.types;

import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;

/* JADX INFO: compiled from: TypeWithEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class r extends p implements k0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f9874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f9875e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(p origin, u enhancement) {
        super(origin.P0(), origin.Q0());
        Intrinsics.checkParameterIsNotNull(origin, "origin");
        Intrinsics.checkParameterIsNotNull(enhancement, "enhancement");
        this.f9874d = origin;
        this.f9875e = enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    public m0 L0(boolean z) {
        return TypeWithEnhancementKt.wrapEnhancement(z0().L0(z), Z().K0().L0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    public m0 N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return TypeWithEnhancementKt.wrapEnhancement(z0().N0(newAnnotations), Z());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public y O0() {
        return z0().O0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public String R0(DescriptorRenderer renderer, DescriptorRendererOptions options) {
        Intrinsics.checkParameterIsNotNull(renderer, "renderer");
        Intrinsics.checkParameterIsNotNull(options, "options");
        return options.d() ? renderer.u(Z()) : z0().R0(renderer, options);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.k0
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public p z0() {
        return this.f9874d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public r R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        u uVarG = kotlinTypeRefiner.g(z0());
        if (uVarG != null) {
            return new r((p) uVarG, kotlinTypeRefiner.g(Z()));
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.k0
    public u Z() {
        return this.f9875e;
    }
}
