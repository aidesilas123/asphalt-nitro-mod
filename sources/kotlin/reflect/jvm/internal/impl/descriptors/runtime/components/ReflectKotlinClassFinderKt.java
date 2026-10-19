package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: ReflectKotlinClassFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectKotlinClassFinderKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String a(ClassId classId) {
        String strB = classId.g().b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "relativeClassName.asString()");
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(strB, '.', '$', false, 4, (Object) null);
        FqName packageFqName = classId.f();
        Intrinsics.checkExpressionValueIsNotNull(packageFqName, "packageFqName");
        if (packageFqName.d()) {
            return strReplace$default;
        }
        return classId.f() + '.' + strReplace$default;
    }
}
