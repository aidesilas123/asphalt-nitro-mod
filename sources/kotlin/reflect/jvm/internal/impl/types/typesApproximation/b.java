package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class b {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[Variance.values().length];
        a = iArr;
        iArr[Variance.INVARIANT.ordinal()] = 1;
        Variance variance = Variance.IN_VARIANCE;
        iArr[variance.ordinal()] = 2;
        Variance variance2 = Variance.OUT_VARIANCE;
        iArr[variance2.ordinal()] = 3;
        int[] iArr2 = new int[Variance.values().length];
        b = iArr2;
        iArr2[variance.ordinal()] = 1;
        iArr2[variance2.ordinal()] = 2;
    }
}
