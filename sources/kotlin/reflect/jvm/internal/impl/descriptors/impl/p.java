package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.j0;

/* JADX INFO: compiled from: ModuleAwareClassDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class p implements kotlin.reflect.jvm.internal.impl.descriptors.d {
    public static final a a = new a(null);

    /* JADX INFO: compiled from: ModuleAwareClassDescriptor.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final MemberScope a(kotlin.reflect.jvm.internal.impl.descriptors.d getRefinedMemberScopeIfPossible, j0 typeSubstitution, kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            MemberScope memberScopeU;
            Intrinsics.checkParameterIsNotNull(getRefinedMemberScopeIfPossible, "$this$getRefinedMemberScopeIfPossible");
            Intrinsics.checkParameterIsNotNull(typeSubstitution, "typeSubstitution");
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            p pVar = (p) (!(getRefinedMemberScopeIfPossible instanceof p) ? null : getRefinedMemberScopeIfPossible);
            if (pVar != null && (memberScopeU = pVar.u(typeSubstitution, kotlinTypeRefiner)) != null) {
                return memberScopeU;
            }
            MemberScope memberScopeL0 = getRefinedMemberScopeIfPossible.l0(typeSubstitution);
            Intrinsics.checkExpressionValueIsNotNull(memberScopeL0, "this.getMemberScope(\n   …ubstitution\n            )");
            return memberScopeL0;
        }

        public final MemberScope b(kotlin.reflect.jvm.internal.impl.descriptors.d getRefinedUnsubstitutedMemberScopeIfPossible, kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            MemberScope memberScopeZ;
            Intrinsics.checkParameterIsNotNull(getRefinedUnsubstitutedMemberScopeIfPossible, "$this$getRefinedUnsubstitutedMemberScopeIfPossible");
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            p pVar = (p) (!(getRefinedUnsubstitutedMemberScopeIfPossible instanceof p) ? null : getRefinedUnsubstitutedMemberScopeIfPossible);
            if (pVar != null && (memberScopeZ = pVar.Z(kotlinTypeRefiner)) != null) {
                return memberScopeZ;
            }
            MemberScope memberScopeQ = getRefinedUnsubstitutedMemberScopeIfPossible.Q();
            Intrinsics.checkExpressionValueIsNotNull(memberScopeQ, "this.unsubstitutedMemberScope");
            return memberScopeQ;
        }
    }

    protected abstract MemberScope Z(kotlin.reflect.jvm.internal.impl.types.checker.d dVar);

    protected abstract MemberScope u(j0 j0Var, kotlin.reflect.jvm.internal.impl.types.checker.d dVar);
}
