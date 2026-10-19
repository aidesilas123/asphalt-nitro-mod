package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.y;

/* JADX INFO: compiled from: JavaDescriptorUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JavaDescriptorUtilKt {
    public static final boolean isJavaField(y isJavaField) {
        Intrinsics.checkParameterIsNotNull(isJavaField, "$this$isJavaField");
        return isJavaField.getGetter() == null;
    }
}
