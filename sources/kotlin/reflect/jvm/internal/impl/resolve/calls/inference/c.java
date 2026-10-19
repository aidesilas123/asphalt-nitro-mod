package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.d;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: CapturedTypeConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c implements b {
    private NewCapturedTypeConstructor a;
    private final g0 b;

    public c(g0 projection) {
        Intrinsics.checkParameterIsNotNull(projection, "projection");
        this.b = projection;
        b().c();
        Variance variance = Variance.INVARIANT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b
    public g0 b() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ f q() {
        return (f) e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public boolean d() {
        return false;
    }

    public Void e() {
        return null;
    }

    public final NewCapturedTypeConstructor f() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public c a(d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        g0 g0VarA = b().a(kotlinTypeRefiner);
        Intrinsics.checkExpressionValueIsNotNull(g0VarA, "projection.refine(kotlinTypeRefiner)");
        return new c(g0VarA);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public List<i0> getParameters() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public Collection<u> h() {
        u type = b().c() == Variance.OUT_VARIANCE ? b().getType() : k().I();
        Intrinsics.checkExpressionValueIsNotNull(type, "if (projection.projectio… builtIns.nullableAnyType");
        return CollectionsKt__CollectionsJVMKt.listOf(type);
    }

    public final void i(NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this.a = newCapturedTypeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public KotlinBuiltIns k() {
        KotlinBuiltIns kotlinBuiltInsK = b().getType().H0().k();
        Intrinsics.checkExpressionValueIsNotNull(kotlinBuiltInsK, "projection.type.constructor.builtIns");
        return kotlinBuiltInsK;
    }

    public String toString() {
        return "CapturedTypeConstructor(" + b() + ')';
    }
}
