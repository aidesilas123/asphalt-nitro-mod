package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class n {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[IntegerLiteralTypeConstructor.Companion.Mode.values().length];
        a = iArr;
        iArr[IntegerLiteralTypeConstructor.Companion.Mode.COMMON_SUPER_TYPE.ordinal()] = 1;
        iArr[IntegerLiteralTypeConstructor.Companion.Mode.INTERSECTION_TYPE.ordinal()] = 2;
    }
}
