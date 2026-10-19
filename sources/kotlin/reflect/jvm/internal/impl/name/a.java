package kotlin.reflect.jvm.internal.impl.name;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[State.values().length];
        a = iArr;
        iArr[State.BEGINNING.ordinal()] = 1;
        iArr[State.AFTER_DOT.ordinal()] = 2;
        iArr[State.MIDDLE.ordinal()] = 3;
    }
}
