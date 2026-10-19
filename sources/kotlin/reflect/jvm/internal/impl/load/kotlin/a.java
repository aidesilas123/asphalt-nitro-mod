package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[AnnotatedCallableKind.values().length];
        a = iArr;
        iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 1;
        iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 2;
        iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 3;
    }
}
