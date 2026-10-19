package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.structure.v;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import kotlin.reflect.jvm.internal.impl.utils.ReportLevel;

/* JADX INFO: compiled from: context.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ContextKt {

    /* JADX INFO: compiled from: context.kt */
    static final class a extends Lambda implements Function0<c> {
        final /* synthetic */ d a;
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.e b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(d dVar, kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
            super(0);
            this.a = dVar;
            this.b = eVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final c invoke() {
            return ContextKt.computeNewDefaultTypeQualifiers(this.a, this.b.getAnnotations());
        }
    }

    /* JADX INFO: compiled from: context.kt */
    static final class b extends Lambda implements Function0<c> {
        final /* synthetic */ d a;
        final /* synthetic */ Annotations b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(d dVar, Annotations annotations) {
            super(0);
            this.a = dVar;
            this.b = annotations;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final c invoke() {
            return ContextKt.computeNewDefaultTypeQualifiers(this.a, this.b);
        }
    }

    private static final d a(d dVar, i iVar, v vVar, int i, Lazy<c> lazy) {
        return new d(dVar.a(), vVar != null ? new LazyJavaTypeParameterResolver(dVar, iVar, vVar, i) : dVar.f(), lazy);
    }

    private static final f b(d dVar, AnnotationDescriptor annotationDescriptor) {
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusC;
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusCopy$default;
        AnnotationTypeQualifierResolver annotationTypeQualifierResolverA = dVar.a().a();
        f fVarG = annotationTypeQualifierResolverA.g(annotationDescriptor);
        if (fVarG != null) {
            return fVarG;
        }
        AnnotationTypeQualifierResolver.a aVarI = annotationTypeQualifierResolverA.i(annotationDescriptor);
        if (aVarI != null) {
            AnnotationDescriptor annotationDescriptorA = aVarI.a();
            List<AnnotationTypeQualifierResolver.QualifierApplicabilityType> listB = aVarI.b();
            ReportLevel reportLevelF = annotationTypeQualifierResolverA.f(annotationDescriptor);
            if (reportLevelF == null) {
                reportLevelF = annotationTypeQualifierResolverA.e(annotationDescriptorA);
            }
            if (!reportLevelF.f() && (nullabilityQualifierWithMigrationStatusC = dVar.a().p().c(annotationDescriptorA)) != null && (nullabilityQualifierWithMigrationStatusCopy$default = NullabilityQualifierWithMigrationStatus.copy$default(nullabilityQualifierWithMigrationStatusC, null, reportLevelF.g(), 1, null)) != null) {
                return new f(nullabilityQualifierWithMigrationStatusCopy$default, listB);
            }
        }
        return null;
    }

    public static final d child(d child, h typeParameterResolver) {
        Intrinsics.checkParameterIsNotNull(child, "$this$child");
        Intrinsics.checkParameterIsNotNull(typeParameterResolver, "typeParameterResolver");
        return new d(child.a(), typeParameterResolver, child.c());
    }

    public static final d childForClassOrPackage(d childForClassOrPackage, kotlin.reflect.jvm.internal.impl.descriptors.e containingDeclaration, v vVar, int i) {
        Intrinsics.checkParameterIsNotNull(childForClassOrPackage, "$this$childForClassOrPackage");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        return a(childForClassOrPackage, containingDeclaration, vVar, i, LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.c, (Function0) new a(childForClassOrPackage, containingDeclaration)));
    }

    public static /* synthetic */ d childForClassOrPackage$default(d dVar, kotlin.reflect.jvm.internal.impl.descriptors.e eVar, v vVar, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            vVar = null;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return childForClassOrPackage(dVar, eVar, vVar, i);
    }

    public static final d childForMethod(d childForMethod, i containingDeclaration, v typeParameterOwner, int i) {
        Intrinsics.checkParameterIsNotNull(childForMethod, "$this$childForMethod");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(typeParameterOwner, "typeParameterOwner");
        return a(childForMethod, containingDeclaration, typeParameterOwner, i, childForMethod.c());
    }

    public static /* synthetic */ d childForMethod$default(d dVar, i iVar, v vVar, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return childForMethod(dVar, iVar, vVar, i);
    }

    public static final c computeNewDefaultTypeQualifiers(d computeNewDefaultTypeQualifiers, Annotations additionalAnnotations) {
        EnumMap<AnnotationTypeQualifierResolver.QualifierApplicabilityType, NullabilityQualifierWithMigrationStatus> enumMapB;
        Intrinsics.checkParameterIsNotNull(computeNewDefaultTypeQualifiers, "$this$computeNewDefaultTypeQualifiers");
        Intrinsics.checkParameterIsNotNull(additionalAnnotations, "additionalAnnotations");
        if (computeNewDefaultTypeQualifiers.a().a().b()) {
            return computeNewDefaultTypeQualifiers.b();
        }
        ArrayList<f> arrayList = new ArrayList();
        Iterator<AnnotationDescriptor> it = additionalAnnotations.iterator();
        while (it.hasNext()) {
            f fVarB = b(computeNewDefaultTypeQualifiers, it.next());
            if (fVarB != null) {
                arrayList.add(fVarB);
            }
        }
        if (arrayList.isEmpty()) {
            return computeNewDefaultTypeQualifiers.b();
        }
        c cVarB = computeNewDefaultTypeQualifiers.b();
        EnumMap enumMap = (cVarB == null || (enumMapB = cVarB.b()) == null) ? new EnumMap(AnnotationTypeQualifierResolver.QualifierApplicabilityType.class) : new EnumMap((EnumMap) enumMapB);
        boolean z = false;
        for (f fVar : arrayList) {
            NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusA = fVar.a();
            Iterator<AnnotationTypeQualifierResolver.QualifierApplicabilityType> it2 = fVar.b().iterator();
            while (it2.hasNext()) {
                enumMap.put(it2.next(), nullabilityQualifierWithMigrationStatusA);
                z = true;
            }
        }
        return !z ? computeNewDefaultTypeQualifiers.b() : new c(enumMap);
    }

    public static final d copyWithNewDefaultTypeQualifiers(d copyWithNewDefaultTypeQualifiers, Annotations additionalAnnotations) {
        Intrinsics.checkParameterIsNotNull(copyWithNewDefaultTypeQualifiers, "$this$copyWithNewDefaultTypeQualifiers");
        Intrinsics.checkParameterIsNotNull(additionalAnnotations, "additionalAnnotations");
        return additionalAnnotations.isEmpty() ? copyWithNewDefaultTypeQualifiers : new d(copyWithNewDefaultTypeQualifiers.a(), copyWithNewDefaultTypeQualifiers.f(), LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.c, (Function0) new b(copyWithNewDefaultTypeQualifiers, additionalAnnotations)));
    }

    public static final d replaceComponents(d replaceComponents, kotlin.reflect.jvm.internal.impl.load.java.lazy.a components) {
        Intrinsics.checkParameterIsNotNull(replaceComponents, "$this$replaceComponents");
        Intrinsics.checkParameterIsNotNull(components, "components");
        return new d(components, replaceComponents.f(), replaceComponents.c());
    }
}
