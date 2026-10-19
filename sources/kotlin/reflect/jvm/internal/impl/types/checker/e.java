package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: NewCapturedType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e extends y implements kotlin.reflect.jvm.internal.impl.types.model.b {
    private final CaptureStatus b;
    private final NewCapturedTypeConstructor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m0 f9855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Annotations f9856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9857f;

    public e(CaptureStatus captureStatus, NewCapturedTypeConstructor constructor, m0 m0Var, Annotations annotations, boolean z) {
        Intrinsics.checkParameterIsNotNull(captureStatus, "captureStatus");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        this.b = captureStatus;
        this.c = constructor;
        this.f9855d = m0Var;
        this.f9856e = annotations;
        this.f9857f = z;
    }

    public /* synthetic */ e(CaptureStatus captureStatus, NewCapturedTypeConstructor newCapturedTypeConstructor, m0 m0Var, Annotations annotations, boolean z, int i, kotlin.jvm.internal.n nVar) {
        this(captureStatus, newCapturedTypeConstructor, m0Var, (i & 8) != 0 ? Annotations.e0.b() : annotations, (i & 16) != 0 ? false : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(CaptureStatus captureStatus, m0 m0Var, g0 projection, i0 typeParameter) {
        this(captureStatus, new NewCapturedTypeConstructor(projection, null, null, typeParameter, 6, null), m0Var, null, false, 24, null);
        Intrinsics.checkParameterIsNotNull(captureStatus, "captureStatus");
        Intrinsics.checkParameterIsNotNull(projection, "projection");
        Intrinsics.checkParameterIsNotNull(typeParameter, "typeParameter");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public List<g0> G0() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return this.f9857f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    /* JADX INFO: renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public NewCapturedTypeConstructor H0() {
        return this.c;
    }

    public final m0 R0() {
        return this.f9855d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public e L0(boolean z) {
        return new e(this.b, H0(), this.f9855d, getAnnotations(), z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public e R0(d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        CaptureStatus captureStatus = this.b;
        NewCapturedTypeConstructor newCapturedTypeConstructorA = H0().a(kotlinTypeRefiner);
        m0 m0Var = this.f9855d;
        return new e(captureStatus, newCapturedTypeConstructorA, m0Var != null ? kotlinTypeRefiner.g(m0Var).K0() : null, getAnnotations(), I0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public e N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return new e(this.b, H0(), this.f9855d, newAnnotations, I0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.f9856e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        MemberScope memberScopeCreateErrorScope = ErrorUtils.createErrorScope("No member resolution should be done on captured type!", true);
        Intrinsics.checkExpressionValueIsNotNull(memberScopeCreateErrorScope, "ErrorUtils.createErrorSc…on captured type!\", true)");
        return memberScopeCreateErrorScope;
    }
}
