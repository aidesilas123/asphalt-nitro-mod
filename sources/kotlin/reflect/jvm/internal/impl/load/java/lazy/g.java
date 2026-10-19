package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleClassResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g implements e {
    public kotlin.reflect.jvm.internal.impl.resolve.jvm.a a;

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.e
    public kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.load.java.structure.f javaClass) {
        Intrinsics.checkParameterIsNotNull(javaClass, "javaClass");
        kotlin.reflect.jvm.internal.impl.resolve.jvm.a aVar = this.a;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("resolver");
        }
        return aVar.b(javaClass);
    }

    public final void b(kotlin.reflect.jvm.internal.impl.resolve.jvm.a aVar) {
        Intrinsics.checkParameterIsNotNull(aVar, "<set-?>");
        this.a = aVar;
    }
}
