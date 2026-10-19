package kotlin.math;

import kotlin.Metadata;

/* JADX INFO: renamed from: kotlin.math.a, reason: from Kotlin metadata */
/* JADX INFO: compiled from: MathJVM.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lkotlin/math/Constants;", "", "()V", "LN2", "", "epsilon", "taylor_2_bound", "taylor_n_bound", "upper_taylor_2_bound", "upper_taylor_n_bound", "kotlin-stdlib"}, mv = {1, 9, 0}, xi = 48)
final class Constants {
    public static final Constants a = new Constants();
    public static final double b = Math.log(2.0d);
    public static final double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final double f8938d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final double f8939e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final double f8940f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final double f8941g;

    static {
        double dUlp = Math.ulp(1.0d);
        c = dUlp;
        double dSqrt = Math.sqrt(dUlp);
        f8938d = dSqrt;
        double dSqrt2 = Math.sqrt(dSqrt);
        f8939e = dSqrt2;
        double d2 = 1;
        f8940f = d2 / dSqrt;
        f8941g = d2 / dSqrt2;
    }

    private Constants() {
    }
}
