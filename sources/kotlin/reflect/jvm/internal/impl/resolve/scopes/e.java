package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LazyScopeAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e extends a {
    private final kotlin.reflect.jvm.internal.impl.storage.e<MemberScope> b;

    /* JADX WARN: Multi-variable type inference failed */
    public e(kotlin.reflect.jvm.internal.impl.storage.e<? extends MemberScope> scope) {
        Intrinsics.checkParameterIsNotNull(scope, "scope");
        this.b = scope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a
    protected MemberScope g() {
        return this.b.invoke();
    }
}
