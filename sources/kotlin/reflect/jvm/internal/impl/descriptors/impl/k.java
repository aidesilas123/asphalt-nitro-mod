package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: EmptyPackageFragmentDesciptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class k extends t {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(ModuleDescriptor module, FqName fqName) {
        super(module, fqName);
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public MemberScope.b m() {
        return MemberScope.b.b;
    }
}
