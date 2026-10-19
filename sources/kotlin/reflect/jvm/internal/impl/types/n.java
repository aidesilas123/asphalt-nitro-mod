package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: compiled from: dynamicTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class n extends p implements kotlin.reflect.jvm.internal.impl.types.model.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Annotations f9867d;

    /* JADX WARN: Illegal instructions before constructor call */
    public n(KotlinBuiltIns builtIns, Annotations annotations) {
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        y yVarH = builtIns.H();
        Intrinsics.checkExpressionValueIsNotNull(yVarH, "builtIns.nothingType");
        y yVarI = builtIns.I();
        Intrinsics.checkExpressionValueIsNotNull(yVarI, "builtIns.nullableAnyType");
        super(yVarH, yVarI);
        this.f9867d = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p, kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public y O0() {
        return Q0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p
    public String R0(DescriptorRenderer renderer, DescriptorRendererOptions options) {
        Intrinsics.checkParameterIsNotNull(renderer, "renderer");
        Intrinsics.checkParameterIsNotNull(options, "options");
        return "dynamic";
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public n L0(boolean z) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public n R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public n N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return new n(TypeUtilsKt.getBuiltIns(O0()), newAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.p, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.f9867d;
    }
}
