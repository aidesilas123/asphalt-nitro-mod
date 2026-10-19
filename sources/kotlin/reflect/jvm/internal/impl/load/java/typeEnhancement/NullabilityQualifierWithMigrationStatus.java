package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: signatureEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NullabilityQualifierWithMigrationStatus {
    private final NullabilityQualifier a;
    private final boolean b;

    public NullabilityQualifierWithMigrationStatus(NullabilityQualifier qualifier, boolean z) {
        Intrinsics.checkParameterIsNotNull(qualifier, "qualifier");
        this.a = qualifier;
        this.b = z;
    }

    public /* synthetic */ NullabilityQualifierWithMigrationStatus(NullabilityQualifier nullabilityQualifier, boolean z, int i, n nVar) {
        this(nullabilityQualifier, (i & 2) != 0 ? false : z);
    }

    public static /* synthetic */ NullabilityQualifierWithMigrationStatus copy$default(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, NullabilityQualifier nullabilityQualifier, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            nullabilityQualifier = nullabilityQualifierWithMigrationStatus.a;
        }
        if ((i & 2) != 0) {
            z = nullabilityQualifierWithMigrationStatus.b;
        }
        return nullabilityQualifierWithMigrationStatus.a(nullabilityQualifier, z);
    }

    public final NullabilityQualifierWithMigrationStatus a(NullabilityQualifier qualifier, boolean z) {
        Intrinsics.checkParameterIsNotNull(qualifier, "qualifier");
        return new NullabilityQualifierWithMigrationStatus(qualifier, z);
    }

    public final NullabilityQualifier b() {
        return this.a;
    }

    public final boolean c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NullabilityQualifierWithMigrationStatus)) {
            return false;
        }
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = (NullabilityQualifierWithMigrationStatus) obj;
        return Intrinsics.areEqual(this.a, nullabilityQualifierWithMigrationStatus.a) && this.b == nullabilityQualifierWithMigrationStatus.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        NullabilityQualifier nullabilityQualifier = this.a;
        int iHashCode = (nullabilityQualifier != null ? nullabilityQualifier.hashCode() : 0) * 31;
        boolean z = this.b;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "NullabilityQualifierWithMigrationStatus(qualifier=" + this.a + ", isForWarningOnly=" + this.b + ")";
    }
}
