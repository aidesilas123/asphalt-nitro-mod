package kotlin.reflect.jvm.internal;

import kotlin.reflect.KParameter;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class p {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[KParameter.Kind.values().length];
        a = iArr;
        iArr[KParameter.Kind.b.ordinal()] = 1;
        iArr[KParameter.Kind.a.ordinal()] = 2;
        iArr[KParameter.Kind.c.ordinal()] = 3;
        int[] iArr2 = new int[Variance.values().length];
        b = iArr2;
        iArr2[Variance.INVARIANT.ordinal()] = 1;
        iArr2[Variance.IN_VARIANCE.ordinal()] = 2;
        iArr2[Variance.OUT_VARIANCE.ordinal()] = 3;
    }
}
