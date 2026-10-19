package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: DeserializedClassDataFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class k implements h {
    private final kotlin.reflect.jvm.internal.impl.descriptors.t a;

    public k(kotlin.reflect.jvm.internal.impl.descriptors.t packageFragmentProvider) {
        Intrinsics.checkParameterIsNotNull(packageFragmentProvider, "packageFragmentProvider");
        this.a = packageFragmentProvider;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
    public g a(ClassId classId) {
        g gVarA;
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        kotlin.reflect.jvm.internal.impl.descriptors.t tVar = this.a;
        FqName fqNameF = classId.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF, "classId.packageFqName");
        for (kotlin.reflect.jvm.internal.impl.descriptors.s sVar : tVar.a(fqNameF)) {
            if ((sVar instanceof l) && (gVarA = ((l) sVar).b0().a(classId)) != null) {
                return gVarA;
            }
        }
        return null;
    }
}
