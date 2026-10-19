package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;

/* JADX INFO: compiled from: KotlinJvmBinaryPackageSourceElement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class l implements d0 {
    private final LazyJavaPackageFragment b;

    public l(LazyJavaPackageFragment packageFragment) {
        Intrinsics.checkParameterIsNotNull(packageFragment, "packageFragment");
        this.b = packageFragment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d0
    public e0 b() {
        e0 e0Var = e0.a;
        Intrinsics.checkExpressionValueIsNotNull(e0Var, "SourceFile.NO_SOURCE_FILE");
        return e0Var;
    }

    public String toString() {
        return this.b + ": " + this.b.e0().keySet();
    }
}
