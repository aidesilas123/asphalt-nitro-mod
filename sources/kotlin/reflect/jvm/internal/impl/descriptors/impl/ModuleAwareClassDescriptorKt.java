package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.j0;

/* JADX INFO: compiled from: ModuleAwareClassDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ModuleAwareClassDescriptorKt {
    public static final MemberScope getRefinedMemberScopeIfPossible(kotlin.reflect.jvm.internal.impl.descriptors.d getRefinedMemberScopeIfPossible, j0 typeSubstitution, kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(getRefinedMemberScopeIfPossible, "$this$getRefinedMemberScopeIfPossible");
        Intrinsics.checkParameterIsNotNull(typeSubstitution, "typeSubstitution");
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return p.a.a(getRefinedMemberScopeIfPossible, typeSubstitution, kotlinTypeRefiner);
    }

    public static final MemberScope getRefinedUnsubstitutedMemberScopeIfPossible(kotlin.reflect.jvm.internal.impl.descriptors.d getRefinedUnsubstitutedMemberScopeIfPossible, kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(getRefinedUnsubstitutedMemberScopeIfPossible, "$this$getRefinedUnsubstitutedMemberScopeIfPossible");
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return p.a.b(getRefinedUnsubstitutedMemberScopeIfPossible, kotlinTypeRefiner);
    }
}
