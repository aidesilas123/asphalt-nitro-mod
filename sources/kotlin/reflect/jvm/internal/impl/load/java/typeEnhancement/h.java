package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: signatureEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
final class h {
    private final u a;
    private final JavaTypeQualifiers b;

    public h(u type, JavaTypeQualifiers javaTypeQualifiers) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.a = type;
        this.b = javaTypeQualifiers;
    }

    public final u a() {
        return this.a;
    }

    public final JavaTypeQualifiers b() {
        return this.b;
    }

    public final u c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.areEqual(this.a, hVar.a) && Intrinsics.areEqual(this.b, hVar.b);
    }

    public int hashCode() {
        u uVar = this.a;
        int iHashCode = (uVar != null ? uVar.hashCode() : 0) * 31;
        JavaTypeQualifiers javaTypeQualifiers = this.b;
        return iHashCode + (javaTypeQualifiers != null ? javaTypeQualifiers.hashCode() : 0);
    }

    public String toString() {
        return "TypeAndDefaultQualifiers(type=" + this.a + ", defaultQualifiers=" + this.b + ")";
    }
}
