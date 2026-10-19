package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.a;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: compiled from: IncompatibleVersionErrorData.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class o<T extends kotlin.reflect.jvm.internal.impl.metadata.deserialization.a> {
    private final T a;
    private final T b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ClassId f9805d;

    public o(T actualVersion, T expectedVersion, String filePath, ClassId classId) {
        Intrinsics.checkParameterIsNotNull(actualVersion, "actualVersion");
        Intrinsics.checkParameterIsNotNull(expectedVersion, "expectedVersion");
        Intrinsics.checkParameterIsNotNull(filePath, "filePath");
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        this.a = actualVersion;
        this.b = expectedVersion;
        this.c = filePath;
        this.f9805d = classId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return Intrinsics.areEqual(this.a, oVar.a) && Intrinsics.areEqual(this.b, oVar.b) && Intrinsics.areEqual(this.c, oVar.c) && Intrinsics.areEqual(this.f9805d, oVar.f9805d);
    }

    public int hashCode() {
        T t = this.a;
        int iHashCode = (t != null ? t.hashCode() : 0) * 31;
        T t2 = this.b;
        int iHashCode2 = (iHashCode + (t2 != null ? t2.hashCode() : 0)) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        ClassId classId = this.f9805d;
        return iHashCode3 + (classId != null ? classId.hashCode() : 0);
    }

    public String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.a + ", expectedVersion=" + this.b + ", filePath=" + this.c + ", classId=" + this.f9805d + ")";
    }
}
