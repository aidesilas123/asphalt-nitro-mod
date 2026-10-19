package okhttp3;

import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: CipherSuite.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0006J\b\u0010\u0007\u001a\u00020\u0003H\u0016R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005¨\u0006\t"}, d2 = {"Lokhttp3/CipherSuite;", "", "javaName", "", "(Ljava/lang/String;)V", "()Ljava/lang/String;", "-deprecated_javaName", "toString", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class CipherSuite {
    public static final CipherSuite A;
    public static final CipherSuite A0;
    public static final CipherSuite B;
    public static final CipherSuite B0;
    public static final CipherSuite C;
    public static final CipherSuite C0;
    public static final CipherSuite D;
    public static final CipherSuite D0;
    public static final CipherSuite E;
    public static final CipherSuite E0;
    public static final CipherSuite F;
    public static final CipherSuite F0;
    public static final CipherSuite G;
    public static final CipherSuite G0;
    public static final CipherSuite H;
    public static final CipherSuite H0;
    public static final CipherSuite I;
    public static final CipherSuite I0;
    public static final CipherSuite J;
    public static final CipherSuite J0;
    public static final CipherSuite K;
    public static final CipherSuite K0;
    public static final CipherSuite L;
    public static final CipherSuite L0;
    public static final CipherSuite M;
    public static final CipherSuite M0;
    public static final CipherSuite N;
    public static final CipherSuite N0;
    public static final CipherSuite O;
    public static final CipherSuite O0;
    public static final CipherSuite P;
    public static final CipherSuite P0;
    public static final CipherSuite Q;
    public static final CipherSuite Q0;
    public static final CipherSuite R;
    public static final CipherSuite R0;
    public static final CipherSuite S;
    public static final CipherSuite S0;
    public static final CipherSuite T;
    public static final CipherSuite T0;
    public static final CipherSuite U;
    public static final CipherSuite U0;
    public static final CipherSuite V;
    public static final CipherSuite V0;
    public static final CipherSuite W;
    public static final CipherSuite W0;
    public static final CipherSuite X;
    public static final CipherSuite X0;
    public static final CipherSuite Y;
    public static final CipherSuite Y0;
    public static final CipherSuite Z;
    public static final CipherSuite Z0;
    public static final Companion a;
    public static final CipherSuite a0;
    public static final CipherSuite a1;
    private static final Comparator<String> b;
    public static final CipherSuite b0;
    public static final CipherSuite b1;
    private static final Map<String, CipherSuite> c;
    public static final CipherSuite c0;
    public static final CipherSuite c1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final CipherSuite f10559d;
    public static final CipherSuite d0;
    public static final CipherSuite d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CipherSuite f10560e;
    public static final CipherSuite e0;
    public static final CipherSuite e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final CipherSuite f10561f;
    public static final CipherSuite f0;
    public static final CipherSuite f1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final CipherSuite f10562g;
    public static final CipherSuite g0;
    public static final CipherSuite g1;
    public static final CipherSuite h;
    public static final CipherSuite h0;
    public static final CipherSuite h1;
    public static final CipherSuite i;
    public static final CipherSuite i0;
    public static final CipherSuite i1;
    public static final CipherSuite j;
    public static final CipherSuite j0;
    public static final CipherSuite j1;
    public static final CipherSuite k;
    public static final CipherSuite k0;
    public static final CipherSuite k1;
    public static final CipherSuite l;
    public static final CipherSuite l0;
    public static final CipherSuite l1;
    public static final CipherSuite m;
    public static final CipherSuite m0;
    public static final CipherSuite m1;
    public static final CipherSuite n;
    public static final CipherSuite n0;
    public static final CipherSuite n1;
    public static final CipherSuite o;
    public static final CipherSuite o0;
    public static final CipherSuite o1;
    public static final CipherSuite p;
    public static final CipherSuite p0;
    public static final CipherSuite p1;
    public static final CipherSuite q;
    public static final CipherSuite q0;
    public static final CipherSuite q1;
    public static final CipherSuite r;
    public static final CipherSuite r0;
    public static final CipherSuite r1;
    public static final CipherSuite s;
    public static final CipherSuite s0;
    public static final CipherSuite t;
    public static final CipherSuite t0;
    public static final CipherSuite u;
    public static final CipherSuite u0;
    public static final CipherSuite v;
    public static final CipherSuite v0;
    public static final CipherSuite w;
    public static final CipherSuite w0;
    public static final CipherSuite x;
    public static final CipherSuite x0;
    public static final CipherSuite y;
    public static final CipherSuite y0;
    public static final CipherSuite z;
    public static final CipherSuite z0;
    private final String s1;

    /* JADX INFO: compiled from: CipherSuite.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b}\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0083\u0001\u001a\u00020\u00062\u0007\u0010\u0084\u0001\u001a\u00020\u0005H\u0007J\u001c\u0010\u0085\u0001\u001a\u00020\u00062\u0007\u0010\u0084\u0001\u001a\u00020\u00052\b\u0010\u0086\u0001\u001a\u00030\u0087\u0001H\u0002J\u0012\u0010\u0088\u0001\u001a\u00020\u00052\u0007\u0010\u0084\u0001\u001a\u00020\u0005H\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00050\bj\b\u0012\u0004\u0012\u00020\u0005`\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00100\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00103\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00104\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00105\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00106\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00107\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u00109\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010=\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010B\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010C\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010H\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010J\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010K\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010L\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010R\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010S\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010U\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010V\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010W\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010X\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010Y\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010Z\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\\\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010^\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010`\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010d\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010g\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010h\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010i\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010j\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010k\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010m\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010o\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010p\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010q\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010s\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010u\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010v\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010w\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010x\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010y\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010z\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010{\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010|\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010}\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010~\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u007f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0080\u0001\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0081\u0001\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0082\u0001\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0089\u0001"}, d2 = {"Lokhttp3/CipherSuite$Companion;", "", "()V", "INSTANCES", "", "", "Lokhttp3/CipherSuite;", "ORDER_BY_NAME", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getORDER_BY_NAME$okhttp", "()Ljava/util/Comparator;", "TLS_AES_128_CCM_8_SHA256", "TLS_AES_128_CCM_SHA256", "TLS_AES_128_GCM_SHA256", "TLS_AES_256_GCM_SHA384", "TLS_CHACHA20_POLY1305_SHA256", "TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", "TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA", "TLS_DHE_DSS_WITH_AES_128_CBC_SHA", "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", "TLS_DHE_DSS_WITH_DES_CBC_SHA", "TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", "TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_DHE_RSA_WITH_DES_CBC_SHA", "TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA", "TLS_DH_anon_EXPORT_WITH_RC4_40_MD5", "TLS_DH_anon_WITH_3DES_EDE_CBC_SHA", "TLS_DH_anon_WITH_AES_128_CBC_SHA", "TLS_DH_anon_WITH_AES_128_CBC_SHA256", "TLS_DH_anon_WITH_AES_128_GCM_SHA256", "TLS_DH_anon_WITH_AES_256_CBC_SHA", "TLS_DH_anon_WITH_AES_256_CBC_SHA256", "TLS_DH_anon_WITH_AES_256_GCM_SHA384", "TLS_DH_anon_WITH_DES_CBC_SHA", "TLS_DH_anon_WITH_RC4_128_MD5", "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_ECDSA_WITH_NULL_SHA", "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_RSA_WITH_NULL_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDH_ECDSA_WITH_NULL_SHA", "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDH_RSA_WITH_NULL_SHA", "TLS_ECDH_RSA_WITH_RC4_128_SHA", "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", "TLS_ECDH_anon_WITH_NULL_SHA", "TLS_ECDH_anon_WITH_RC4_128_SHA", "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", "TLS_FALLBACK_SCSV", "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", "TLS_KRB5_WITH_DES_CBC_MD5", "TLS_KRB5_WITH_DES_CBC_SHA", "TLS_KRB5_WITH_RC4_128_MD5", "TLS_KRB5_WITH_RC4_128_SHA", "TLS_PSK_WITH_3DES_EDE_CBC_SHA", "TLS_PSK_WITH_AES_128_CBC_SHA", "TLS_PSK_WITH_AES_256_CBC_SHA", "TLS_PSK_WITH_RC4_128_SHA", "TLS_RSA_EXPORT_WITH_DES40_CBC_SHA", "TLS_RSA_EXPORT_WITH_RC4_40_MD5", "TLS_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", "TLS_RSA_WITH_DES_CBC_SHA", "TLS_RSA_WITH_NULL_MD5", "TLS_RSA_WITH_NULL_SHA", "TLS_RSA_WITH_NULL_SHA256", "TLS_RSA_WITH_RC4_128_MD5", "TLS_RSA_WITH_RC4_128_SHA", "TLS_RSA_WITH_SEED_CBC_SHA", "forJavaName", "javaName", o2.a.f6463e, "value", "", "secondaryName", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CipherSuite c(String str, int i) {
            CipherSuite cipherSuite = new CipherSuite(str, null);
            CipherSuite.c.put(str, cipherSuite);
            return cipherSuite;
        }

        private final String d(String str) {
            if (StringsKt__StringsJVMKt.startsWith$default(str, "TLS_", false, 2, null)) {
                String strSubstring = str.substring(4);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
                return Intrinsics.stringPlus("SSL_", strSubstring);
            }
            if (!StringsKt__StringsJVMKt.startsWith$default(str, "SSL_", false, 2, null)) {
                return str;
            }
            String strSubstring2 = str.substring(4);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
            return Intrinsics.stringPlus("TLS_", strSubstring2);
        }

        public final synchronized CipherSuite a(String javaName) {
            CipherSuite cipherSuite;
            Intrinsics.checkNotNullParameter(javaName, "javaName");
            cipherSuite = (CipherSuite) CipherSuite.c.get(javaName);
            if (cipherSuite == null) {
                cipherSuite = (CipherSuite) CipherSuite.c.get(d(javaName));
                if (cipherSuite == null) {
                    cipherSuite = new CipherSuite(javaName, null);
                }
                CipherSuite.c.put(javaName, cipherSuite);
            }
            return cipherSuite;
        }

        public final Comparator<String> b() {
            return CipherSuite.b;
        }
    }

    /* JADX INFO: compiled from: CipherSuite.kt */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"okhttp3/CipherSuite$Companion$ORDER_BY_NAME$1", "Ljava/util/Comparator;", "", "Lkotlin/Comparator;", "compare", "", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String a, String b) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            int iMin = Math.min(a.length(), b.length());
            for (int i = 4; i < iMin; i++) {
                char cCharAt = a.charAt(i);
                char cCharAt2 = b.charAt(i);
                if (cCharAt != cCharAt2) {
                    return Intrinsics.compare((int) cCharAt, (int) cCharAt2) < 0 ? -1 : 1;
                }
            }
            int length = a.length();
            int length2 = b.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    }

    static {
        Companion companion = new Companion(null);
        a = companion;
        b = new a();
        c = new LinkedHashMap();
        f10559d = companion.c("SSL_RSA_WITH_NULL_MD5", 1);
        f10560e = companion.c("SSL_RSA_WITH_NULL_SHA", 2);
        f10561f = companion.c("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        f10562g = companion.c("SSL_RSA_WITH_RC4_128_MD5", 4);
        h = companion.c("SSL_RSA_WITH_RC4_128_SHA", 5);
        i = companion.c("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        j = companion.c("SSL_RSA_WITH_DES_CBC_SHA", 9);
        k = companion.c("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        l = companion.c("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        m = companion.c("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        n = companion.c("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        o = companion.c("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        p = companion.c("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        q = companion.c("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        r = companion.c("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        s = companion.c("SSL_DH_anon_WITH_RC4_128_MD5", 24);
        t = companion.c("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        u = companion.c("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        v = companion.c("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        w = companion.c("TLS_KRB5_WITH_DES_CBC_SHA", 30);
        x = companion.c("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        y = companion.c("TLS_KRB5_WITH_RC4_128_SHA", 32);
        z = companion.c("TLS_KRB5_WITH_DES_CBC_MD5", 34);
        A = companion.c("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        B = companion.c("TLS_KRB5_WITH_RC4_128_MD5", 36);
        C = companion.c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        D = companion.c("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        E = companion.c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        F = companion.c("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        G = companion.c("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        H = companion.c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        I = companion.c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        J = companion.c("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        K = companion.c("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        L = companion.c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        M = companion.c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        N = companion.c("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        O = companion.c("TLS_RSA_WITH_NULL_SHA256", 59);
        P = companion.c("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        Q = companion.c("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        R = companion.c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        S = companion.c("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        T = companion.c("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        U = companion.c("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        V = companion.c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        W = companion.c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        X = companion.c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        Y = companion.c("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        Companion companion2 = a;
        Z = companion2.c("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        a0 = companion2.c("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        b0 = companion2.c("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        c0 = companion2.c("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        d0 = companion2.c("TLS_PSK_WITH_RC4_128_SHA", 138);
        e0 = companion2.c("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        f0 = companion2.c("TLS_PSK_WITH_AES_128_CBC_SHA", IronSourceConstants.USING_CACHE_FOR_INIT_EVENT);
        g0 = companion2.c("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        h0 = companion2.c("TLS_RSA_WITH_SEED_CBC_SHA", 150);
        i0 = companion2.c("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        j0 = companion2.c("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        k0 = companion2.c("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        l0 = companion2.c("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        m0 = companion2.c("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
        n0 = companion2.c("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
        o0 = companion2.c("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
        p0 = companion2.c("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        q0 = companion2.c("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        r0 = companion2.c("TLS_FALLBACK_SCSV", 22016);
        s0 = companion2.c("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        t0 = companion2.c("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        u0 = companion2.c("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        v0 = companion2.c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        w0 = companion2.c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        x0 = companion2.c("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        y0 = companion2.c("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        z0 = companion2.c("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        A0 = companion2.c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        B0 = companion2.c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        C0 = companion2.c("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        D0 = companion2.c("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        E0 = companion2.c("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        F0 = companion2.c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        G0 = companion2.c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        H0 = companion2.c("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        I0 = companion2.c("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        J0 = companion2.c("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        K0 = companion2.c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        L0 = companion2.c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        M0 = companion2.c("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        N0 = companion2.c("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        O0 = companion2.c("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        P0 = companion2.c("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        Q0 = companion2.c("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        R0 = companion2.c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        S0 = companion2.c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        T0 = companion2.c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        U0 = companion2.c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        V0 = companion2.c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        W0 = companion2.c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        Companion companion3 = a;
        X0 = companion3.c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        Y0 = companion3.c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        Z0 = companion3.c("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        a1 = companion3.c("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        b1 = companion3.c("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        c1 = companion3.c("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        d1 = companion3.c("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        e1 = companion3.c("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        f1 = companion3.c("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        g1 = companion3.c("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        h1 = companion3.c("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        i1 = companion3.c("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        j1 = companion3.c("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        k1 = companion3.c("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
        l1 = companion3.c("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);
        m1 = companion3.c("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);
        n1 = companion3.c("TLS_AES_128_GCM_SHA256", 4865);
        o1 = companion3.c("TLS_AES_256_GCM_SHA384", 4866);
        p1 = companion3.c("TLS_CHACHA20_POLY1305_SHA256", 4867);
        q1 = companion3.c("TLS_AES_128_CCM_SHA256", 4868);
        r1 = companion3.c("TLS_AES_128_CCM_8_SHA256", 4869);
    }

    private CipherSuite(String str) {
        this.s1 = str;
    }

    public /* synthetic */ CipherSuite(String str, n nVar) {
        this(str);
    }

    public static final synchronized CipherSuite forJavaName(String str) {
        return a.a(str);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getS1() {
        return this.s1;
    }

    public String toString() {
        return this.s1;
    }
}
