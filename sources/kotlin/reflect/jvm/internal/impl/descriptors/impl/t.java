package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: PackageFragmentDescriptorImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class t extends i implements kotlin.reflect.jvm.internal.impl.descriptors.s {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FqName f9157e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(ModuleDescriptor module, FqName fqName) {
        super(module, Annotations.e0.b(), fqName.h(), d0.a);
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        this.f9157e = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.i
    public ModuleDescriptor b() {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = super.b();
        if (iVarB != null) {
            return (ModuleDescriptor) iVarB;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public final FqName e() {
        return this.f9157e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        d0 d0Var = d0.a;
        Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
        return d0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public String toString() {
        return "package " + this.f9157e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> visitor, D d2) {
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        return visitor.h(this, d2);
    }
}
