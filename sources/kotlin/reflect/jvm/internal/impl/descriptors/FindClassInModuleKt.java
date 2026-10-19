package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: findClassInModule.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FindClassInModuleKt {

    /* JADX INFO: compiled from: findClassInModule.kt */
    static final /* synthetic */ class a extends kotlin.jvm.internal.q implements Function1<ClassId, ClassId> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ClassId invoke(ClassId p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return p1.e();
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "getOuterClassId";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(ClassId.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
        }
    }

    /* JADX INFO: compiled from: findClassInModule.kt */
    static final class b extends Lambda implements Function1<ClassId, Integer> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final int a(ClassId it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return 0;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Integer invoke(ClassId classId) {
            return Integer.valueOf(a(classId));
        }
    }

    public static final d findClassAcrossModuleDependencies(ModuleDescriptor findClassAcrossModuleDependencies, ClassId classId) {
        Intrinsics.checkParameterIsNotNull(findClassAcrossModuleDependencies, "$this$findClassAcrossModuleDependencies");
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        f fVarFindClassifierAcrossModuleDependencies = findClassifierAcrossModuleDependencies(findClassAcrossModuleDependencies, classId);
        if (!(fVarFindClassifierAcrossModuleDependencies instanceof d)) {
            fVarFindClassifierAcrossModuleDependencies = null;
        }
        return (d) fVarFindClassifierAcrossModuleDependencies;
    }

    public static final f findClassifierAcrossModuleDependencies(ModuleDescriptor findClassifierAcrossModuleDependencies, ClassId classId) {
        Intrinsics.checkParameterIsNotNull(findClassifierAcrossModuleDependencies, "$this$findClassifierAcrossModuleDependencies");
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        FqName fqNameF = classId.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF, "classId.packageFqName");
        PackageViewDescriptor packageViewDescriptorD0 = findClassifierAcrossModuleDependencies.d0(fqNameF);
        List<Name> listF = classId.g().f();
        Intrinsics.checkExpressionValueIsNotNull(listF, "classId.relativeClassName.pathSegments()");
        MemberScope memberScopeM = packageViewDescriptorD0.m();
        Object objFirst = kotlin.collections.p.first((List<? extends Object>) listF);
        Intrinsics.checkExpressionValueIsNotNull(objFirst, "segments.first()");
        f fVarC = memberScopeM.c((Name) objFirst, NoLookupLocation.FROM_DESERIALIZATION);
        if (fVarC == null) {
            return null;
        }
        for (Name name : listF.subList(1, listF.size())) {
            if (!(fVarC instanceof d)) {
                return null;
            }
            MemberScope memberScopeO = ((d) fVarC).O();
            Intrinsics.checkExpressionValueIsNotNull(name, "name");
            f fVarC2 = memberScopeO.c(name, NoLookupLocation.FROM_DESERIALIZATION);
            if (!(fVarC2 instanceof d)) {
                fVarC2 = null;
            }
            fVarC = (d) fVarC2;
            if (fVarC == null) {
                return null;
            }
        }
        return fVarC;
    }

    public static final d findNonGenericClassAcrossDependencies(ModuleDescriptor findNonGenericClassAcrossDependencies, ClassId classId, NotFoundClasses notFoundClasses) {
        Intrinsics.checkParameterIsNotNull(findNonGenericClassAcrossDependencies, "$this$findNonGenericClassAcrossDependencies");
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        d dVarFindClassAcrossModuleDependencies = findClassAcrossModuleDependencies(findNonGenericClassAcrossDependencies, classId);
        return dVarFindClassAcrossModuleDependencies != null ? dVarFindClassAcrossModuleDependencies : notFoundClasses.a(classId, SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.map(SequencesKt__SequencesKt.generateSequence(classId, a.a), b.a)));
    }

    public static final h0 findTypeAliasAcrossModuleDependencies(ModuleDescriptor findTypeAliasAcrossModuleDependencies, ClassId classId) {
        Intrinsics.checkParameterIsNotNull(findTypeAliasAcrossModuleDependencies, "$this$findTypeAliasAcrossModuleDependencies");
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        f fVarFindClassifierAcrossModuleDependencies = findClassifierAcrossModuleDependencies(findTypeAliasAcrossModuleDependencies, classId);
        if (!(fVarFindClassifierAcrossModuleDependencies instanceof h0)) {
            fVarFindClassifierAcrossModuleDependencies = null;
        }
        return (h0) fVarFindClassifierAcrossModuleDependencies;
    }
}
