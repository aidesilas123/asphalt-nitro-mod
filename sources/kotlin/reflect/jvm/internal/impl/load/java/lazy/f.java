package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;

/* JADX INFO: compiled from: context.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f {
    private final NullabilityQualifierWithMigrationStatus a;
    private final Collection<AnnotationTypeQualifierResolver.QualifierApplicabilityType> b;

    /* JADX WARN: Multi-variable type inference failed */
    public f(NullabilityQualifierWithMigrationStatus nullabilityQualifier, Collection<? extends AnnotationTypeQualifierResolver.QualifierApplicabilityType> qualifierApplicabilityTypes) {
        Intrinsics.checkParameterIsNotNull(nullabilityQualifier, "nullabilityQualifier");
        Intrinsics.checkParameterIsNotNull(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        this.a = nullabilityQualifier;
        this.b = qualifierApplicabilityTypes;
    }

    public final NullabilityQualifierWithMigrationStatus a() {
        return this.a;
    }

    public final Collection<AnnotationTypeQualifierResolver.QualifierApplicabilityType> b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.areEqual(this.a, fVar.a) && Intrinsics.areEqual(this.b, fVar.b);
    }

    public int hashCode() {
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = this.a;
        int iHashCode = (nullabilityQualifierWithMigrationStatus != null ? nullabilityQualifierWithMigrationStatus.hashCode() : 0) * 31;
        Collection<AnnotationTypeQualifierResolver.QualifierApplicabilityType> collection = this.b;
        return iHashCode + (collection != null ? collection.hashCode() : 0);
    }

    public String toString() {
        return "NullabilityQualifierWithApplicability(nullabilityQualifier=" + this.a + ", qualifierApplicabilityTypes=" + this.b + ")";
    }
}
