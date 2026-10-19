package kotlin.reflect.jvm.internal.impl.renderer;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class d {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;
    public static final /* synthetic */ int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int[] f9736d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int[] f9737e;

    static {
        int[] iArr = new int[RenderingFormat.values().length];
        a = iArr;
        RenderingFormat renderingFormat = RenderingFormat.PLAIN;
        iArr[renderingFormat.ordinal()] = 1;
        RenderingFormat renderingFormat2 = RenderingFormat.HTML;
        iArr[renderingFormat2.ordinal()] = 2;
        int[] iArr2 = new int[RenderingFormat.values().length];
        b = iArr2;
        iArr2[renderingFormat.ordinal()] = 1;
        iArr2[renderingFormat2.ordinal()] = 2;
        int[] iArr3 = new int[RenderingFormat.values().length];
        c = iArr3;
        iArr3[renderingFormat.ordinal()] = 1;
        iArr3[renderingFormat2.ordinal()] = 2;
        int[] iArr4 = new int[RenderingFormat.values().length];
        f9736d = iArr4;
        iArr4[renderingFormat.ordinal()] = 1;
        iArr4[renderingFormat2.ordinal()] = 2;
        int[] iArr5 = new int[ParameterNameRenderingPolicy.values().length];
        f9737e = iArr5;
        iArr5[ParameterNameRenderingPolicy.ALL.ordinal()] = 1;
        iArr5[ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED.ordinal()] = 2;
        iArr5[ParameterNameRenderingPolicy.NONE.ordinal()] = 3;
    }
}
