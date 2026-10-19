package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.core.app.FrameMetricsAggregator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: compiled from: TypeMappingMode.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class q {
    public static final q a;
    public static final q b;
    public static final q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final q f9405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final q f9406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final q f9407f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final q f9408g;
    public static final a h = new a(null);
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final q n;
    private final boolean o;
    private final q p;
    private final q q;

    /* JADX INFO: compiled from: TypeMappingMode.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    static {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        q qVar = null;
        q qVar2 = null;
        kotlin.jvm.internal.n nVar = null;
        q qVar3 = new q(z, z2, z3, z4, z5, null, z6, qVar, qVar2, FrameMetricsAggregator.EVERY_DURATION, nVar);
        a = qVar3;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        q qVar4 = null;
        q qVar5 = null;
        kotlin.jvm.internal.n nVar2 = null;
        b = new q(z7, true, false, z8, z9, null, z10, qVar4, qVar5, 509, nVar2);
        int i = 476;
        c = new q(z, z2, z3, z4, z5, qVar3, z6, qVar, qVar2, i, nVar);
        f9405d = new q(z, true, z3, z4, z5, qVar3, z6, qVar, qVar2, i, nVar);
        boolean z11 = false;
        boolean z12 = true;
        f9406e = new q(z, z11, z3, z12, z5, qVar3, z6, qVar, qVar2, 471, nVar);
        f9407f = new q(z, z11, z3, z12, z5, qVar3, z6, qVar, qVar2, TTAdConstant.DOWNLOAD_APP_INFO_CODE, nVar);
        f9408g = new q(z7, false, true, z8, z9, new q(z, z11, true, false, z5, qVar3, z6, qVar, qVar2, 475, nVar), z10, qVar4, qVar5, 472, nVar2);
    }

    private q(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, q qVar, boolean z6, q qVar2, q qVar3) {
        this.i = z;
        this.j = z2;
        this.k = z3;
        this.l = z4;
        this.m = z5;
        this.n = qVar;
        this.o = z6;
        this.p = qVar2;
        this.q = qVar3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* synthetic */ q(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, q qVar, boolean z6, q qVar2, q qVar3, int i, kotlin.jvm.internal.n nVar) {
        boolean z7 = (i & 1) != 0 ? true : z;
        boolean z8 = (i & 2) != 0 ? true : z2;
        boolean z9 = (i & 4) != 0 ? false : z3;
        boolean z10 = (i & 8) != 0 ? false : z4;
        boolean z11 = (i & 16) == 0 ? z5 : false;
        q qVar4 = (i & 32) != 0 ? null : qVar;
        this(z7, z8, z9, z10, z11, qVar4, (i & 64) == 0 ? z6 : true, (i & 128) != 0 ? qVar4 : qVar2, (i & 256) != 0 ? qVar4 : qVar3);
    }

    public final boolean a() {
        return this.o;
    }

    public final boolean b() {
        return this.j;
    }

    public final boolean c() {
        return this.i;
    }

    public final boolean d() {
        return this.k;
    }

    public final q e(Variance effectiveVariance) {
        Intrinsics.checkParameterIsNotNull(effectiveVariance, "effectiveVariance");
        int i = r.a[effectiveVariance.ordinal()];
        if (i == 1) {
            q qVar = this.p;
            if (qVar != null) {
                return qVar;
            }
        } else if (i != 2) {
            q qVar2 = this.n;
            if (qVar2 != null) {
                return qVar2;
            }
        } else {
            q qVar3 = this.q;
            if (qVar3 != null) {
                return qVar3;
            }
        }
        return this;
    }

    public final q f() {
        return new q(this.i, true, this.k, this.l, this.m, this.n, this.o, this.p, this.q);
    }
}
