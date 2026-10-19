package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class b {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[ClassKind.values().length];
        a = iArr;
        iArr[ClassKind.CLASS.ordinal()] = 1;
        iArr[ClassKind.INTERFACE.ordinal()] = 2;
        iArr[ClassKind.ENUM_CLASS.ordinal()] = 3;
        iArr[ClassKind.OBJECT.ordinal()] = 4;
        iArr[ClassKind.ANNOTATION_CLASS.ordinal()] = 5;
        iArr[ClassKind.ENUM_ENTRY.ordinal()] = 6;
    }
}
