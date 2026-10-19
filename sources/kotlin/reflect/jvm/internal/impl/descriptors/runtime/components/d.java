package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.p;
import kotlin.reflect.jvm.internal.impl.load.java.i;
import kotlin.reflect.jvm.internal.impl.load.java.structure.r;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: ReflectJavaClassFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d implements kotlin.reflect.jvm.internal.impl.load.java.i {
    private final ClassLoader a;

    public d(ClassLoader classLoader) {
        Intrinsics.checkParameterIsNotNull(classLoader, "classLoader");
        this.a = classLoader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.i
    public kotlin.reflect.jvm.internal.impl.load.java.structure.f a(i.a request) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        ClassId classIdA = request.a();
        FqName fqNameF = classIdA.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF, "classId.packageFqName");
        String strB = classIdA.g().b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "classId.relativeClassName.asString()");
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(strB, '.', '$', false, 4, (Object) null);
        if (!fqNameF.d()) {
            strReplace$default = fqNameF.b() + "." + strReplace$default;
        }
        Class<?> clsTryLoadClass = ReflectJavaClassFinderKt.tryLoadClass(this.a, strReplace$default);
        if (clsTryLoadClass != null) {
            return new ReflectJavaClass(clsTryLoadClass);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.i
    public r b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return new p(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.i
    public Set<String> c(FqName packageFqName) {
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        return null;
    }
}
