package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class r {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[Variance.values().length];
        a = iArr;
        iArr[Variance.IN_VARIANCE.ordinal()] = 1;
        iArr[Variance.INVARIANT.ordinal()] = 2;
    }
}
