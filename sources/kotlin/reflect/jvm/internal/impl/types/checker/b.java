package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class b {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[TypeVariance.values().length];
        a = iArr;
        iArr[TypeVariance.INV.ordinal()] = 1;
        iArr[TypeVariance.IN.ordinal()] = 2;
        iArr[TypeVariance.OUT.ordinal()] = 3;
        int[] iArr2 = new int[Variance.values().length];
        b = iArr2;
        iArr2[Variance.INVARIANT.ordinal()] = 1;
        iArr2[Variance.IN_VARIANCE.ordinal()] = 2;
        iArr2[Variance.OUT_VARIANCE.ordinal()] = 3;
    }
}
