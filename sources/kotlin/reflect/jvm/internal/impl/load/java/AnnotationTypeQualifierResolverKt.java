package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: compiled from: AnnotationTypeQualifierResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class AnnotationTypeQualifierResolverKt {
    private static final FqName a = new FqName("javax.annotation.meta.TypeQualifierNickname");
    private static final FqName b = new FqName("javax.annotation.meta.TypeQualifier");
    private static final FqName c = new FqName("javax.annotation.meta.TypeQualifierDefault");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final FqName f9173d = new FqName("kotlin.annotations.jvm.UnderMigration");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<FqName, kotlin.reflect.jvm.internal.impl.load.java.lazy.f> f9174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<FqName> f9175f;

    static {
        FqName fqName = new FqName("javax.annotation.ParametersAreNullableByDefault");
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, false, 2, null);
        AnnotationTypeQualifierResolver.QualifierApplicabilityType qualifierApplicabilityType = AnnotationTypeQualifierResolver.QualifierApplicabilityType.VALUE_PARAMETER;
        f9174e = MapsKt__MapsKt.mapOf(TuplesKt.to(fqName, new kotlin.reflect.jvm.internal.impl.load.java.lazy.f(nullabilityQualifierWithMigrationStatus, CollectionsKt__CollectionsJVMKt.listOf(qualifierApplicabilityType))), TuplesKt.to(new FqName("javax.annotation.ParametersAreNonnullByDefault"), new kotlin.reflect.jvm.internal.impl.load.java.lazy.f(new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NOT_NULL, false, 2, null), CollectionsKt__CollectionsJVMKt.listOf(qualifierApplicabilityType))));
        f9175f = SetsKt__SetsKt.setOf((Object[]) new FqName[]{JvmAnnotationNamesKt.getJAVAX_NONNULL_ANNOTATION(), JvmAnnotationNamesKt.getJAVAX_CHECKFORNULL_ANNOTATION()});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        return f9175f.contains(DescriptorUtilsKt.getFqNameSafe(dVar)) || dVar.getAnnotations().N(b);
    }

    public static final Map<FqName, kotlin.reflect.jvm.internal.impl.load.java.lazy.f> getBUILT_IN_TYPE_QUALIFIER_DEFAULT_ANNOTATIONS() {
        return f9174e;
    }

    public static final FqName getMIGRATION_ANNOTATION_FQNAME() {
        return f9173d;
    }

    public static final FqName getTYPE_QUALIFIER_DEFAULT_FQNAME() {
        return c;
    }

    public static final FqName getTYPE_QUALIFIER_NICKNAME_FQNAME() {
        return a;
    }
}
