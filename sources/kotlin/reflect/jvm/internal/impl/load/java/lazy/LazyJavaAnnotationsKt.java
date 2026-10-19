package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: LazyJavaAnnotations.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaAnnotationsKt {
    public static final Annotations resolveAnnotations(d resolveAnnotations, kotlin.reflect.jvm.internal.impl.load.java.structure.c annotationsOwner) {
        Intrinsics.checkParameterIsNotNull(resolveAnnotations, "$this$resolveAnnotations");
        Intrinsics.checkParameterIsNotNull(annotationsOwner, "annotationsOwner");
        return new LazyJavaAnnotations(resolveAnnotations, annotationsOwner);
    }
}
