package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: descriptorUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DescriptorUtilKt {
    public static final d resolveClassByFqName(ModuleDescriptor resolveClassByFqName, FqName fqName, kotlin.reflect.jvm.internal.impl.incremental.components.b lookupLocation) {
        f fVarC;
        MemberScope memberScopeO;
        Intrinsics.checkParameterIsNotNull(resolveClassByFqName, "$this$resolveClassByFqName");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(lookupLocation, "lookupLocation");
        if (fqName.d()) {
            return null;
        }
        FqName fqNameE = fqName.e();
        Intrinsics.checkExpressionValueIsNotNull(fqNameE, "fqName.parent()");
        MemberScope memberScopeM = resolveClassByFqName.d0(fqNameE).m();
        Name nameG = fqName.g();
        Intrinsics.checkExpressionValueIsNotNull(nameG, "fqName.shortName()");
        f fVarC2 = memberScopeM.c(nameG, lookupLocation);
        if (!(fVarC2 instanceof d)) {
            fVarC2 = null;
        }
        d dVar = (d) fVarC2;
        if (dVar != null) {
            return dVar;
        }
        FqName fqNameE2 = fqName.e();
        Intrinsics.checkExpressionValueIsNotNull(fqNameE2, "fqName.parent()");
        d dVarResolveClassByFqName = resolveClassByFqName(resolveClassByFqName, fqNameE2, lookupLocation);
        if (dVarResolveClassByFqName == null || (memberScopeO = dVarResolveClassByFqName.O()) == null) {
            fVarC = null;
        } else {
            Name nameG2 = fqName.g();
            Intrinsics.checkExpressionValueIsNotNull(nameG2, "fqName.shortName()");
            fVarC = memberScopeO.c(nameG2, lookupLocation);
        }
        return (d) (fVarC instanceof d ? fVarC : null);
    }
}
