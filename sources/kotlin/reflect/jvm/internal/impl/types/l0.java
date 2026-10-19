package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: ErrorType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class l0 extends o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f9863g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(String presentableName, f0 constructor, MemberScope memberScope, List<? extends g0> arguments, boolean z) {
        super(constructor, memberScope, arguments, z, null, 16, null);
        Intrinsics.checkParameterIsNotNull(presentableName, "presentableName");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(memberScope, "memberScope");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        this.f9863g = presentableName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.o, kotlin.reflect.jvm.internal.impl.types.m0
    /* JADX INFO: renamed from: O0 */
    public y L0(boolean z) {
        return new l0(Q0(), H0(), m(), G0(), z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.o
    public String Q0() {
        return this.f9863g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.o
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public l0 R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }
}
