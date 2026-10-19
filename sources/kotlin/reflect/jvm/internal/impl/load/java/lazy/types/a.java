package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[JavaTypeFlexibility.values().length];
        a = iArr;
        iArr[JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND.ordinal()] = 1;
        iArr[JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND.ordinal()] = 2;
        iArr[JavaTypeFlexibility.INFLEXIBLE.ordinal()] = 3;
    }
}
