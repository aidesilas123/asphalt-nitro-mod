package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class j {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[MutabilityQualifier.values().length];
        a = iArr;
        iArr[MutabilityQualifier.READ_ONLY.ordinal()] = 1;
        iArr[MutabilityQualifier.MUTABLE.ordinal()] = 2;
        int[] iArr2 = new int[NullabilityQualifier.values().length];
        b = iArr2;
        iArr2[NullabilityQualifier.NULLABLE.ordinal()] = 1;
        iArr2[NullabilityQualifier.NOT_NULL.ordinal()] = 2;
    }
}
