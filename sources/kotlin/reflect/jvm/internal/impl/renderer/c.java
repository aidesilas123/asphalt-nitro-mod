package kotlin.reflect.jvm.internal.impl.renderer;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class c {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[PropertyAccessorRenderingPolicy.values().length];
        a = iArr;
        iArr[PropertyAccessorRenderingPolicy.PRETTY.ordinal()] = 1;
        iArr[PropertyAccessorRenderingPolicy.DEBUG.ordinal()] = 2;
        iArr[PropertyAccessorRenderingPolicy.NONE.ordinal()] = 3;
    }
}
