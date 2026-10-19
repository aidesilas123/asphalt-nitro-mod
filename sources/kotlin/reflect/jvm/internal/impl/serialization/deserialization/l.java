package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;

/* JADX INFO: compiled from: DeserializedPackageFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class l extends kotlin.reflect.jvm.internal.impl.descriptors.impl.t {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h f9804f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(FqName fqName, kotlin.reflect.jvm.internal.impl.storage.h storageManager, ModuleDescriptor module) {
        super(module, fqName);
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.f9804f = storageManager;
    }

    public abstract h b0();

    public boolean e0(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        MemberScope memberScopeM = m();
        return (memberScopeM instanceof DeserializedMemberScope) && ((DeserializedMemberScope) memberScopeM).r().contains(name);
    }

    public abstract void k0(j jVar);
}
