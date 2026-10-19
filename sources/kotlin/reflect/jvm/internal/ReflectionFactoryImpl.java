package kotlin.reflect.jvm.internal;

import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.b0;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.f0;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.u;
import kotlin.jvm.internal.w;
import kotlin.jvm.internal.y;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.full.KClassifiers;
import kotlin.reflect.jvm.ReflectLambdaKt;

/* JADX INFO: loaded from: classes5.dex */
public class ReflectionFactoryImpl extends m0 {
    public static void clearCaches() {
        KClassCacheKt.clearKClassCache();
        ModuleByClassLoaderKt.clearModuleByClassLoaderCache();
    }

    private static KDeclarationContainerImpl u(kotlin.jvm.internal.l lVar) {
        KDeclarationContainer owner = lVar.getOwner();
        return owner instanceof KDeclarationContainerImpl ? (KDeclarationContainerImpl) owner : a.f9014d;
    }

    @Override // kotlin.jvm.internal.m0
    public KClass a(Class cls) {
        return new KClassImpl(cls);
    }

    @Override // kotlin.jvm.internal.m0
    public KClass b(Class cls, String str) {
        return new KClassImpl(cls);
    }

    @Override // kotlin.jvm.internal.m0
    public KFunction c(kotlin.jvm.internal.q qVar) {
        return new KFunctionImpl(u(qVar), qVar.getName(), qVar.getSignature(), qVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.m0
    public KClass d(Class cls) {
        return KClassCacheKt.getOrCreateKotlinClass(cls);
    }

    @Override // kotlin.jvm.internal.m0
    public KClass e(Class cls, String str) {
        return KClassCacheKt.getOrCreateKotlinClass(cls);
    }

    @Override // kotlin.jvm.internal.m0
    public KDeclarationContainer f(Class cls, String str) {
        return new KPackageImpl(cls, str);
    }

    @Override // kotlin.jvm.internal.m0
    public KMutableProperty0 h(u uVar) {
        return new f(u(uVar), uVar.getName(), uVar.getSignature(), uVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.m0
    public KMutableProperty1 i(w wVar) {
        return new g(u(wVar), wVar.getName(), wVar.getSignature(), wVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.m0
    public KMutableProperty2 j(y yVar) {
        u(yVar);
        throw null;
    }

    @Override // kotlin.jvm.internal.m0
    public KProperty0 m(b0 b0Var) {
        return new i(u(b0Var), b0Var.getName(), b0Var.getSignature(), b0Var.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.m0
    public KProperty1 n(d0 d0Var) {
        return new j(u(d0Var), d0Var.getName(), d0Var.getSignature(), d0Var.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.m0
    public KProperty2 o(f0 f0Var) {
        u(f0Var);
        throw null;
    }

    @Override // kotlin.jvm.internal.m0
    public String p(FunctionBase functionBase) {
        KFunctionImpl kFunctionImplAsKFunctionImpl;
        KFunction kFunctionReflect = ReflectLambdaKt.reflect(functionBase);
        return (kFunctionReflect == null || (kFunctionImplAsKFunctionImpl = UtilKt.asKFunctionImpl(kFunctionReflect)) == null) ? super.p(functionBase) : q.b.e(kFunctionImplAsKFunctionImpl.z());
    }

    @Override // kotlin.jvm.internal.m0
    public String q(Lambda lambda) {
        return p(lambda);
    }

    @Override // kotlin.jvm.internal.m0
    public KType s(KClassifier kClassifier, List<KTypeProjection> list, boolean z) {
        return KClassifiers.createType(kClassifier, list, z, Collections.emptyList());
    }
}
