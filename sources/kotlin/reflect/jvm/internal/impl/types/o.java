package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: ErrorType.kt */
/* JADX INFO: loaded from: classes5.dex */
public class o extends y {
    private final f0 b;
    private final MemberScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<g0> f9868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f9869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f9870f;

    public o(f0 f0Var, MemberScope memberScope) {
        this(f0Var, memberScope, null, false, null, 28, null);
    }

    public o(f0 f0Var, MemberScope memberScope, List<? extends g0> list, boolean z) {
        this(f0Var, memberScope, list, z, null, 16, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public o(f0 constructor, MemberScope memberScope, List<? extends g0> arguments, boolean z, String presentableName) {
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(memberScope, "memberScope");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        Intrinsics.checkParameterIsNotNull(presentableName, "presentableName");
        this.b = constructor;
        this.c = memberScope;
        this.f9868d = arguments;
        this.f9869e = z;
        this.f9870f = presentableName;
    }

    public /* synthetic */ o(f0 f0Var, MemberScope memberScope, List list, boolean z, String str, int i, kotlin.jvm.internal.n nVar) {
        this(f0Var, memberScope, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 8) != 0 ? false : z, (i & 16) != 0 ? "???" : str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public List<g0> G0() {
        return this.f9868d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public f0 H0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public boolean I0() {
        return this.f9869e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: O0 */
    public y L0(boolean z) {
        return new o(H0(), m(), G0(), z, null, 16, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: P0 */
    public y N0(Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return this;
    }

    public String Q0() {
        return this.f9870f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m0
    public o R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return Annotations.e0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    public MemberScope m() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.y
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(H0().toString());
        sb.append(G0().isEmpty() ? "" : CollectionsKt___CollectionsKt.joinToString(G0(), ", ", "<", ">", -1, "...", null));
        return sb.toString();
    }
}
