package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ej, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0988Ej {
    public static String[] A04 = {"XHo", "ubtbrXFiKU0aMD9WZdFFXMvL5SNCKhBD", "k9cdhOGQS1oEdCdR21VeueSE4nGT", "BZNadIlHUT8LbNbZ8qdMYncW4fXCJJFh", "22DNreJXUwzG5I9t9ymbmjKefjfUTWMr", "OkM0GcBH5aVjMNZagw1JqhxPR8ijdnHI", "ik3Hzc9el9B7KCBCFVHKN4tCPL2D2JGF", "0FgMGgJ2UsG2ZcXwt2m5OtQLezKmVI44"};
    public final int A00;
    public final EW A01;
    public final long A02;
    public final CopyOnWriteArrayList<C0987Ei> A03;

    public C0988Ej() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public C0988Ej(CopyOnWriteArrayList<C0987Ei> copyOnWriteArrayList, int i, EW ew, long j) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = ew;
        this.A02 = j;
    }

    private long A00(long j) {
        long jA01 = C9E.A01(j);
        return jA01 == C.TIME_UNSET ? C.TIME_UNSET : this.A02 + jA01;
    }

    private void A01(Handler handler, Runnable runnable) {
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public final C0988Ej A02(int i, EW ew, long j) {
        return new C0988Ej(this.A03, i, ew, j);
    }

    public final void A03() {
        HI.A04(this.A01 != null);
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new EZ(this, c0987Ei.A01));
        }
    }

    public final void A04() {
        HI.A04(this.A01 != null);
        String[] strArr = A04;
        if (strArr[4].charAt(4) != strArr[1].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[4] = "rYA4ryMG3XFm73cnSWA4HWNW3HUxv7KC";
        strArr2[1] = "1YJ2rSWw51hvYcz1kikUBhJeKIWd76IZ";
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new RunnableC0979Ea(this, c0987Ei.A01));
        }
    }

    public final void A05() {
        HI.A04(this.A01 != null);
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new RunnableC0984Ef(this, c0987Ei.A01));
        }
    }

    public final void A06(int i, Format format, int i2, Object obj, long j) {
        A0C(new C0990El(1, i, format, i2, obj, A00(j), C.TIME_UNSET));
    }

    public final void A07(Handler handler, InterfaceC0991Em interfaceC0991Em) {
        HI.A03((handler == null || interfaceC0991Em == null) ? false : true);
        this.A03.add(new C0987Ei(handler, interfaceC0991Em));
    }

    public final void A08(C0989Ek c0989Ek, C0990El c0990El) {
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new RunnableC0982Ed(this, c0987Ei.A01, c0989Ek, c0990El));
        }
    }

    public final void A09(C0989Ek c0989Ek, C0990El c0990El) {
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new RunnableC0981Ec(this, c0987Ei.A01, c0989Ek, c0990El));
        }
    }

    public final void A0A(C0989Ek c0989Ek, C0990El c0990El) {
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new RunnableC0980Eb(this, c0987Ei.A01, c0989Ek, c0990El));
        }
    }

    public final void A0B(C0989Ek c0989Ek, C0990El c0990El, IOException iOException, boolean z) {
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new RunnableC0983Ee(this, c0987Ei.A01, c0989Ek, c0990El, iOException, z));
        }
    }

    public final void A0C(C0990El c0990El) {
        for (C0987Ei c0987Ei : this.A03) {
            A01(c0987Ei.A00, new RunnableC0986Eh(this, c0987Ei.A01, c0990El));
        }
    }

    public final void A0D(InterfaceC0991Em interfaceC0991Em) {
        for (C0987Ei c0987Ei : this.A03) {
            if (c0987Ei.A01 == interfaceC0991Em) {
                this.A03.remove(c0987Ei);
            }
        }
    }

    public final void A0E(C1037Gg c1037Gg, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
        A0A(new C0989Ek(c1037Gg, j3, 0L, 0L), new C0990El(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0F(C1037Gg c1037Gg, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
        A08(new C0989Ek(c1037Gg, j3, j4, j5), new C0990El(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0G(C1037Gg c1037Gg, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
        A09(new C0989Ek(c1037Gg, j3, j4, j5), new C0990El(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0H(C1037Gg c1037Gg, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
        A0B(new C0989Ek(c1037Gg, j3, j4, j5), new C0990El(i, i2, format, i3, obj, A00(j), A00(j2)), iOException, z);
    }
}
