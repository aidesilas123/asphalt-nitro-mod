package kotlin.reflect.jvm;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.KClassImpl;

/* JADX INFO: compiled from: KClassesJvm.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KClassesJvm {
    public static final String getJvmName(KClass<?> jvmName) {
        Intrinsics.checkParameterIsNotNull(jvmName, "$this$jvmName");
        String name = ((KClassImpl) jvmName).a().getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "(this as KClassImpl).jClass.name");
        return name;
    }
}
