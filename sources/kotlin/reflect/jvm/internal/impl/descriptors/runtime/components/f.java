package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.load.kotlin.j;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: ReflectKotlinClassFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f implements kotlin.reflect.jvm.internal.impl.load.kotlin.j {
    private final ClassLoader a;

    public f(ClassLoader classLoader) {
        Intrinsics.checkParameterIsNotNull(classLoader, "classLoader");
        this.a = classLoader;
    }

    private final j.a d(String str) {
        e eVarA;
        Class<?> clsTryLoadClass = ReflectJavaClassFinderKt.tryLoadClass(this.a, str);
        if (clsTryLoadClass == null || (eVarA = e.a.a(clsTryLoadClass)) == null) {
            return null;
        }
        return new j.a.b(eVarA);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.j
    public j.a a(kotlin.reflect.jvm.internal.impl.load.java.structure.f javaClass) {
        String strB;
        Intrinsics.checkParameterIsNotNull(javaClass, "javaClass");
        FqName fqNameE = javaClass.e();
        if (fqNameE == null || (strB = fqNameE.b()) == null) {
            return null;
        }
        return d(strB);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.p
    public InputStream b(FqName packageFqName) {
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        if (packageFqName.i(KotlinBuiltIns.a)) {
            return this.a.getResourceAsStream(kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.n.n(packageFqName));
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.j
    public j.a c(ClassId classId) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        return d(ReflectKotlinClassFinderKt.a(classId));
    }
}
