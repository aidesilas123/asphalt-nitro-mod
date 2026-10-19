package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;

/* JADX INFO: compiled from: KotlinTypeFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
final class z extends y {
    private final f0 b;
    private final List<g0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MemberScope f9879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, y> f9880f;

    /* JADX WARN: Multi-variable type inference failed */
    public z(f0 constructor, List<? extends g0> arguments, boolean z, MemberScope memberScope, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.d, ? extends y> refinedTypeFactory) {
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        Intrinsics.checkParameterIsNotNull(memberScope, "memberScope");
        Intrinsics.checkParameterIsNotNull(refinedTypeFactory, "refinedTypeFactory");
        this.b = constructor;
        this.c = arguments;
        this.f9878d = z;
        this.f9879e = memberScope;
        this.f9880f = refinedTypeFactory;
        if (m() instanceof ErrorUtils.d) {
            throw new IllegalStateException("SimpleTypeImpl should not be created for error type: " + m() + '\n' + H0());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public List<g0> G0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public f0 H0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return this.f9878d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: O0 */
    public y L0(boolean z) {
        return z == I0() ? this : z ? new w(this) : new v(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: P0 */
    public y N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return newAnnotations.isEmpty() ? this : new g(this, newAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public y R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        y yVarInvoke = this.f9880f.invoke(kotlinTypeRefiner);
        return yVarInvoke != null ? yVarInvoke : this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return Annotations.e0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        return this.f9879e;
    }
}
