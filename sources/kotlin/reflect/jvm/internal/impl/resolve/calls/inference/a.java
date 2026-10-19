package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.c0;
import kotlin.reflect.jvm.internal.impl.types.checker.d;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: CapturedTypeConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends y implements c0, kotlin.reflect.jvm.internal.impl.types.model.b {
    private final g0 b;
    private final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Annotations f9755e;

    public a(g0 typeProjection, b constructor, boolean z, Annotations annotations) {
        Intrinsics.checkParameterIsNotNull(typeProjection, "typeProjection");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        this.b = typeProjection;
        this.c = constructor;
        this.f9754d = z;
        this.f9755e = annotations;
    }

    public /* synthetic */ a(g0 g0Var, b bVar, boolean z, Annotations annotations, int i, n nVar) {
        this(g0Var, (i & 2) != 0 ? new c(g0Var) : bVar, (i & 4) != 0 ? false : z, (i & 8) != 0 ? Annotations.e0.b() : annotations);
    }

    private final u U0(Variance variance, u uVar) {
        if (this.b.c() == variance) {
            uVar = this.b.getType();
        }
        Intrinsics.checkExpressionValueIsNotNull(uVar, "if (typeProjection.proje…jection.type else default");
        return uVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c0
    public u B0() {
        Variance variance = Variance.OUT_VARIANCE;
        y yVarI = TypeUtilsKt.getBuiltIns(this).I();
        Intrinsics.checkExpressionValueIsNotNull(yVarI, "builtIns.nullableAnyType");
        return U0(variance, yVarI);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public List<g0> G0() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return this.f9754d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    /* JADX INFO: renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public b H0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: R0, reason: merged with bridge method [inline-methods] */
    public a L0(boolean z) {
        return z == I0() ? this : new a(this.b, H0(), z, getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public a R0(d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        g0 g0VarA = this.b.a(kotlinTypeRefiner);
        Intrinsics.checkExpressionValueIsNotNull(g0VarA, "typeProjection.refine(kotlinTypeRefiner)");
        return new a(g0VarA, H0(), I0(), getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public a N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return new a(this.b, H0(), I0(), newAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c0
    public u e0() {
        Variance variance = Variance.IN_VARIANCE;
        y yVarH = TypeUtilsKt.getBuiltIns(this).H();
        Intrinsics.checkExpressionValueIsNotNull(yVarH, "builtIns.nothingType");
        return U0(variance, yVarH);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.f9755e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c0
    public boolean k0(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return H0() == type.H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        MemberScope memberScopeCreateErrorScope = ErrorUtils.createErrorScope("No member resolution should be done on captured type, it used only during constraint system resolution", true);
        Intrinsics.checkExpressionValueIsNotNull(memberScopeCreateErrorScope, "ErrorUtils.createErrorSc…solution\", true\n        )");
        return memberScopeCreateErrorScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Captured(");
        sb.append(this.b);
        sb.append(')');
        sb.append(I0() ? "?" : "");
        return sb.toString();
    }
}
