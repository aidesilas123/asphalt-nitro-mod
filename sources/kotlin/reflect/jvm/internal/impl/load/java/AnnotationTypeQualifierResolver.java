package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.q;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.ReportLevel;

/* JADX INFO: compiled from: AnnotationTypeQualifierResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class AnnotationTypeQualifierResolver {
    private final kotlin.reflect.jvm.internal.impl.storage.c<kotlin.reflect.jvm.internal.impl.descriptors.d, AnnotationDescriptor> a;
    private final boolean b;
    private final kotlin.reflect.jvm.internal.impl.utils.a c;

    /* JADX INFO: compiled from: AnnotationTypeQualifierResolver.kt */
    public enum QualifierApplicabilityType {
        METHOD_RETURN_TYPE,
        VALUE_PARAMETER,
        FIELD,
        TYPE_USE
    }

    /* JADX INFO: compiled from: AnnotationTypeQualifierResolver.kt */
    public static final class a {
        private final AnnotationDescriptor a;
        private final int b;

        public a(AnnotationDescriptor typeQualifier, int i) {
            Intrinsics.checkParameterIsNotNull(typeQualifier, "typeQualifier");
            this.a = typeQualifier;
            this.b = i;
        }

        private final boolean c(QualifierApplicabilityType qualifierApplicabilityType) {
            return ((1 << qualifierApplicabilityType.ordinal()) & this.b) != 0;
        }

        private final boolean d(QualifierApplicabilityType qualifierApplicabilityType) {
            return c(QualifierApplicabilityType.TYPE_USE) || c(qualifierApplicabilityType);
        }

        public final AnnotationDescriptor a() {
            return this.a;
        }

        public final List<QualifierApplicabilityType> b() {
            QualifierApplicabilityType[] qualifierApplicabilityTypeArrValues = QualifierApplicabilityType.values();
            ArrayList arrayList = new ArrayList();
            for (QualifierApplicabilityType qualifierApplicabilityType : qualifierApplicabilityTypeArrValues) {
                if (d(qualifierApplicabilityType)) {
                    arrayList.add(qualifierApplicabilityType);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: AnnotationTypeQualifierResolver.kt */
    static final /* synthetic */ class b extends q implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.d, AnnotationDescriptor> {
        b(AnnotationTypeQualifierResolver annotationTypeQualifierResolver) {
            super(1, annotationTypeQualifierResolver);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AnnotationDescriptor invoke(kotlin.reflect.jvm.internal.impl.descriptors.d p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return ((AnnotationTypeQualifierResolver) this.receiver).a(p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "computeTypeQualifierNickname";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(AnnotationTypeQualifierResolver.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "computeTypeQualifierNickname(Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;)Lorg/jetbrains/kotlin/descriptors/annotations/AnnotationDescriptor;";
        }
    }

    public AnnotationTypeQualifierResolver(kotlin.reflect.jvm.internal.impl.storage.h storageManager, kotlin.reflect.jvm.internal.impl.utils.a jsr305State) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(jsr305State, "jsr305State");
        this.c = jsr305State;
        this.a = storageManager.g(new b(this));
        this.b = jsr305State.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationDescriptor a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (!dVar.getAnnotations().N(AnnotationTypeQualifierResolverKt.getTYPE_QUALIFIER_NICKNAME_FQNAME())) {
            return null;
        }
        Iterator<AnnotationDescriptor> it = dVar.getAnnotations().iterator();
        while (it.hasNext()) {
            AnnotationDescriptor annotationDescriptorH = h(it.next());
            if (annotationDescriptorH != null) {
                return annotationDescriptorH;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.QualifierApplicabilityType> c(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> r3) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b
            if (r0 == 0) goto L29
            kotlin.reflect.jvm.internal.impl.resolve.constants.b r3 = (kotlin.reflect.jvm.internal.impl.resolve.constants.b) r3
            java.lang.Object r3 = r3.b()
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r3 = r3.iterator()
        L15:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L75
            java.lang.Object r1 = r3.next()
            kotlin.reflect.jvm.internal.impl.resolve.constants.g r1 = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) r1
            java.util.List r1 = r2.c(r1)
            kotlin.collections.p.addAll(r0, r1)
            goto L15
        L29:
            boolean r0 = r3 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.j
            if (r0 == 0) goto L71
            kotlin.reflect.jvm.internal.impl.resolve.constants.j r3 = (kotlin.reflect.jvm.internal.impl.resolve.constants.j) r3
            kotlin.reflect.jvm.internal.impl.name.Name r3 = r3.c()
            java.lang.String r3 = r3.g()
            int r0 = r3.hashCode()
            switch(r0) {
                case -2024225567: goto L60;
                case 66889946: goto L55;
                case 107598562: goto L4a;
                case 446088073: goto L3f;
                default: goto L3e;
            }
        L3e:
            goto L6b
        L3f:
            java.lang.String r0 = "PARAMETER"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L6b
            kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver$QualifierApplicabilityType r3 = kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.QualifierApplicabilityType.VALUE_PARAMETER
            goto L6c
        L4a:
            java.lang.String r0 = "TYPE_USE"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L6b
            kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver$QualifierApplicabilityType r3 = kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.QualifierApplicabilityType.TYPE_USE
            goto L6c
        L55:
            java.lang.String r0 = "FIELD"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L6b
            kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver$QualifierApplicabilityType r3 = kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.QualifierApplicabilityType.FIELD
            goto L6c
        L60:
            java.lang.String r0 = "METHOD"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L6b
            kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver$QualifierApplicabilityType r3 = kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.QualifierApplicabilityType.METHOD_RETURN_TYPE
            goto L6c
        L6b:
            r3 = 0
        L6c:
            java.util.List r0 = kotlin.collections.p.listOfNotNull(r3)
            goto L75
        L71:
            java.util.List r0 = kotlin.collections.p.emptyList()
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.c(kotlin.reflect.jvm.internal.impl.resolve.constants.g):java.util.List");
    }

    private final ReportLevel d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        AnnotationDescriptor annotationDescriptorB = dVar.getAnnotations().b(AnnotationTypeQualifierResolverKt.getMIGRATION_ANNOTATION_FQNAME());
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarFirstArgument = annotationDescriptorB != null ? DescriptorUtilsKt.firstArgument(annotationDescriptorB) : null;
        if (!(gVarFirstArgument instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.j)) {
            gVarFirstArgument = null;
        }
        kotlin.reflect.jvm.internal.impl.resolve.constants.j jVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.j) gVarFirstArgument;
        if (jVar == null) {
            return null;
        }
        ReportLevel reportLevelD = this.c.d();
        if (reportLevelD != null) {
            return reportLevelD;
        }
        String strE = jVar.c().e();
        int iHashCode = strE.hashCode();
        if (iHashCode == -2137067054) {
            if (strE.equals("IGNORE")) {
                return ReportLevel.IGNORE;
            }
            return null;
        }
        if (iHashCode == -1838656823) {
            if (strE.equals("STRICT")) {
                return ReportLevel.STRICT;
            }
            return null;
        }
        if (iHashCode == 2656902 && strE.equals("WARN")) {
            return ReportLevel.WARN;
        }
        return null;
    }

    private final AnnotationDescriptor j(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar.getKind() != ClassKind.ANNOTATION_CLASS) {
            return null;
        }
        return this.a.invoke(dVar);
    }

    public final boolean b() {
        return this.b;
    }

    public final ReportLevel e(AnnotationDescriptor annotationDescriptor) {
        Intrinsics.checkParameterIsNotNull(annotationDescriptor, "annotationDescriptor");
        ReportLevel reportLevelF = f(annotationDescriptor);
        return reportLevelF != null ? reportLevelF : this.c.c();
    }

    public final ReportLevel f(AnnotationDescriptor annotationDescriptor) {
        Intrinsics.checkParameterIsNotNull(annotationDescriptor, "annotationDescriptor");
        Map<String, ReportLevel> mapE = this.c.e();
        FqName fqNameE = annotationDescriptor.e();
        ReportLevel reportLevel = mapE.get(fqNameE != null ? fqNameE.b() : null);
        if (reportLevel != null) {
            return reportLevel;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
        if (annotationClass != null) {
            return d(annotationClass);
        }
        return null;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.lazy.f g(AnnotationDescriptor annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.load.java.lazy.f fVar;
        Intrinsics.checkParameterIsNotNull(annotationDescriptor, "annotationDescriptor");
        if (!this.c.a() && (fVar = AnnotationTypeQualifierResolverKt.getBUILT_IN_TYPE_QUALIFIER_DEFAULT_ANNOTATIONS().get(annotationDescriptor.e())) != null) {
            NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatusA = fVar.a();
            Collection<QualifierApplicabilityType> collectionB = fVar.b();
            ReportLevel reportLevelE = e(annotationDescriptor);
            if (!(reportLevelE != ReportLevel.IGNORE)) {
                reportLevelE = null;
            }
            if (reportLevelE != null) {
                return new kotlin.reflect.jvm.internal.impl.load.java.lazy.f(NullabilityQualifierWithMigrationStatus.copy$default(nullabilityQualifierWithMigrationStatusA, null, reportLevelE.g(), 1, null), collectionB);
            }
        }
        return null;
    }

    public final AnnotationDescriptor h(AnnotationDescriptor annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.d annotationClass;
        Intrinsics.checkParameterIsNotNull(annotationDescriptor, "annotationDescriptor");
        if (this.c.a() || (annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor)) == null) {
            return null;
        }
        return AnnotationTypeQualifierResolverKt.a(annotationClass) ? annotationDescriptor : j(annotationClass);
    }

    public final a i(AnnotationDescriptor annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.d annotationClass;
        AnnotationDescriptor next;
        Intrinsics.checkParameterIsNotNull(annotationDescriptor, "annotationDescriptor");
        if (!this.c.a() && (annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor)) != null) {
            if (!annotationClass.getAnnotations().N(AnnotationTypeQualifierResolverKt.getTYPE_QUALIFIER_DEFAULT_FQNAME())) {
                annotationClass = null;
            }
            if (annotationClass != null) {
                kotlin.reflect.jvm.internal.impl.descriptors.d annotationClass2 = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
                if (annotationClass2 == null) {
                    Intrinsics.throwNpe();
                }
                AnnotationDescriptor annotationDescriptorB = annotationClass2.getAnnotations().b(AnnotationTypeQualifierResolverKt.getTYPE_QUALIFIER_DEFAULT_FQNAME());
                if (annotationDescriptorB == null) {
                    Intrinsics.throwNpe();
                }
                Map<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> mapA = annotationDescriptorB.a();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> entry : mapA.entrySet()) {
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList, Intrinsics.areEqual(entry.getKey(), n.c) ? c(entry.getValue()) : CollectionsKt__CollectionsKt.emptyList());
                }
                Iterator it = arrayList.iterator();
                int iOrdinal = 0;
                while (it.hasNext()) {
                    iOrdinal |= 1 << ((QualifierApplicabilityType) it.next()).ordinal();
                }
                Iterator<AnnotationDescriptor> it2 = annotationClass.getAnnotations().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    if (h(next) != null) {
                        break;
                    }
                }
                AnnotationDescriptor annotationDescriptor2 = next;
                if (annotationDescriptor2 != null) {
                    return new a(annotationDescriptor2, iOrdinal);
                }
            }
        }
        return null;
    }
}
