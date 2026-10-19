package kotlin.reflect.jvm.internal.impl.builtins;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.k;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.s;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: suspendFunctionTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SuspendFunctionTypesKt {
    private static final s a;
    private static final s b;

    static {
        ModuleDescriptor errorModule = ErrorUtils.getErrorModule();
        Intrinsics.checkExpressionValueIsNotNull(errorModule, "ErrorUtils.getErrorModule()");
        FqName fqName = DescriptorUtils.f9742d;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "DescriptorUtils.COROUTIN…KAGE_FQ_NAME_EXPERIMENTAL");
        k kVar = new k(errorModule, fqName);
        ClassKind classKind = ClassKind.INTERFACE;
        Name nameG = DescriptorUtils.f9744f.g();
        d0 d0Var = d0.a;
        h hVar = LockBasedStorageManager.b;
        s sVar = new s(kVar, classKind, false, false, nameG, d0Var, hVar);
        Modality modality = Modality.ABSTRACT;
        sVar.B0(modality);
        m0 m0Var = Visibilities.f9100e;
        sVar.G0(m0Var);
        Annotations.a aVar = Annotations.e0;
        Annotations annotationsB = aVar.b();
        Variance variance = Variance.IN_VARIANCE;
        sVar.F0(CollectionsKt__CollectionsJVMKt.listOf(TypeParameterDescriptorImpl.createWithDefaultBound(sVar, annotationsB, false, variance, Name.identifier(RequestConfiguration.MAX_AD_CONTENT_RATING_T), 0, hVar)));
        sVar.k0();
        a = sVar;
        ModuleDescriptor errorModule2 = ErrorUtils.getErrorModule();
        Intrinsics.checkExpressionValueIsNotNull(errorModule2, "ErrorUtils.getErrorModule()");
        FqName fqName2 = DescriptorUtils.c;
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "DescriptorUtils.COROUTINES_PACKAGE_FQ_NAME_RELEASE");
        s sVar2 = new s(new k(errorModule2, fqName2), classKind, false, false, DescriptorUtils.f9745g.g(), d0Var, hVar);
        sVar2.B0(modality);
        sVar2.G0(m0Var);
        sVar2.F0(CollectionsKt__CollectionsJVMKt.listOf(TypeParameterDescriptorImpl.createWithDefaultBound(sVar2, aVar.b(), false, variance, Name.identifier(RequestConfiguration.MAX_AD_CONTENT_RATING_T), 0, hVar)));
        sVar2.k0();
        b = sVar2;
    }

    public static final boolean isContinuation(FqName fqName, boolean z) {
        return z ? Intrinsics.areEqual(fqName, DescriptorUtils.f9745g) : Intrinsics.areEqual(fqName, DescriptorUtils.f9744f);
    }

    public static final y transformSuspendFunctionToRuntimeFunctionType(u suspendFunType, boolean z) {
        Intrinsics.checkParameterIsNotNull(suspendFunType, "suspendFunType");
        FunctionTypesKt.isSuspendFunctionType(suspendFunType);
        KotlinBuiltIns builtIns = TypeUtilsKt.getBuiltIns(suspendFunType);
        Annotations annotations = suspendFunType.getAnnotations();
        u receiverTypeFromFunctionType = FunctionTypesKt.getReceiverTypeFromFunctionType(suspendFunType);
        List<g0> valueParameterTypesFromFunctionType = FunctionTypesKt.getValueParameterTypesFromFunctionType(suspendFunType);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(valueParameterTypesFromFunctionType, 10));
        Iterator<T> it = valueParameterTypesFromFunctionType.iterator();
        while (it.hasNext()) {
            arrayList.add(((g0) it.next()).getType());
        }
        Annotations annotationsB = Annotations.e0.b();
        f0 f0VarI = z ? b.i() : a.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "if (isReleaseCoroutines)…ERIMENTAL.typeConstructor");
        List listPlus = CollectionsKt___CollectionsKt.plus((Collection<? extends y>) arrayList, KotlinTypeFactory.simpleType$default(annotationsB, f0VarI, CollectionsKt__CollectionsJVMKt.listOf(TypeUtilsKt.asTypeProjection(FunctionTypesKt.getReturnTypeFromFunctionType(suspendFunType))), false, null, 16, null));
        y yVarI = TypeUtilsKt.getBuiltIns(suspendFunType).I();
        Intrinsics.checkExpressionValueIsNotNull(yVarI, "suspendFunType.builtIns.nullableAnyType");
        return FunctionTypesKt.createFunctionType(builtIns, annotations, receiverTypeFromFunctionType, listPlus, null, yVarI, (64 & 64) != 0 ? false : false).L0(suspendFunType.I0());
    }
}
