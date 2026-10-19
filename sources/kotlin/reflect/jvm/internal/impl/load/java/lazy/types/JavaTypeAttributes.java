package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;

/* JADX INFO: compiled from: JavaTypeResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JavaTypeAttributes {
    private final TypeUsage a;
    private final JavaTypeFlexibility b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i0 f9239d;

    public JavaTypeAttributes(TypeUsage howThisTypeIsUsed, JavaTypeFlexibility flexibility, boolean z, i0 i0Var) {
        Intrinsics.checkParameterIsNotNull(howThisTypeIsUsed, "howThisTypeIsUsed");
        Intrinsics.checkParameterIsNotNull(flexibility, "flexibility");
        this.a = howThisTypeIsUsed;
        this.b = flexibility;
        this.c = z;
        this.f9239d = i0Var;
    }

    public /* synthetic */ JavaTypeAttributes(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, i0 i0Var, int i, n nVar) {
        this(typeUsage, (i & 2) != 0 ? JavaTypeFlexibility.INFLEXIBLE : javaTypeFlexibility, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : i0Var);
    }

    public static /* synthetic */ JavaTypeAttributes copy$default(JavaTypeAttributes javaTypeAttributes, TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, i0 i0Var, int i, Object obj) {
        if ((i & 1) != 0) {
            typeUsage = javaTypeAttributes.a;
        }
        if ((i & 2) != 0) {
            javaTypeFlexibility = javaTypeAttributes.b;
        }
        if ((i & 4) != 0) {
            z = javaTypeAttributes.c;
        }
        if ((i & 8) != 0) {
            i0Var = javaTypeAttributes.f9239d;
        }
        return javaTypeAttributes.a(typeUsage, javaTypeFlexibility, z, i0Var);
    }

    public final JavaTypeAttributes a(TypeUsage howThisTypeIsUsed, JavaTypeFlexibility flexibility, boolean z, i0 i0Var) {
        Intrinsics.checkParameterIsNotNull(howThisTypeIsUsed, "howThisTypeIsUsed");
        Intrinsics.checkParameterIsNotNull(flexibility, "flexibility");
        return new JavaTypeAttributes(howThisTypeIsUsed, flexibility, z, i0Var);
    }

    public final JavaTypeFlexibility b() {
        return this.b;
    }

    public final TypeUsage c() {
        return this.a;
    }

    public final i0 d() {
        return this.f9239d;
    }

    public final boolean e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JavaTypeAttributes)) {
            return false;
        }
        JavaTypeAttributes javaTypeAttributes = (JavaTypeAttributes) obj;
        return Intrinsics.areEqual(this.a, javaTypeAttributes.a) && Intrinsics.areEqual(this.b, javaTypeAttributes.b) && this.c == javaTypeAttributes.c && Intrinsics.areEqual(this.f9239d, javaTypeAttributes.f9239d);
    }

    public final JavaTypeAttributes f(JavaTypeFlexibility flexibility) {
        Intrinsics.checkParameterIsNotNull(flexibility, "flexibility");
        return copy$default(this, null, flexibility, false, null, 13, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public int hashCode() {
        TypeUsage typeUsage = this.a;
        int iHashCode = (typeUsage != null ? typeUsage.hashCode() : 0) * 31;
        JavaTypeFlexibility javaTypeFlexibility = this.b;
        int iHashCode2 = (iHashCode + (javaTypeFlexibility != null ? javaTypeFlexibility.hashCode() : 0)) * 31;
        boolean z = this.c;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iHashCode2 + r2) * 31;
        i0 i0Var = this.f9239d;
        return i + (i0Var != null ? i0Var.hashCode() : 0);
    }

    public String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + this.a + ", flexibility=" + this.b + ", isForAnnotationParameter=" + this.c + ", upperBoundOfTypeParameter=" + this.f9239d + ")";
    }
}
