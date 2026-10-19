package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.kotlin.j;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: compiled from: KotlinClassFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KotlinClassFinderKt {
    public static final k findKotlinClass(j findKotlinClass, kotlin.reflect.jvm.internal.impl.load.java.structure.f javaClass) {
        Intrinsics.checkParameterIsNotNull(findKotlinClass, "$this$findKotlinClass");
        Intrinsics.checkParameterIsNotNull(javaClass, "javaClass");
        j.a aVarA = findKotlinClass.a(javaClass);
        if (aVarA != null) {
            return aVarA.a();
        }
        return null;
    }

    public static final k findKotlinClass(j findKotlinClass, ClassId classId) {
        Intrinsics.checkParameterIsNotNull(findKotlinClass, "$this$findKotlinClass");
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        j.a aVarC = findKotlinClass.c(classId);
        if (aVarC != null) {
            return aVarC.a();
        }
        return null;
    }
}
