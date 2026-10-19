package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class RunnableC0974Dv implements Runnable {
    public static byte[] A08;
    public static String[] A09 = {"vVdME5rGh6jSklOQZDzF1wgb5E3MLtgZ", "ZAtMYOp2u1lL6JeMNrwaP", "R18DWjYCOUcwxBcB68CkhMZleZUfd", "BgSMbGv4hkjr6jVDXXRQz", "8IjXA2dWofepF8Qtj8uDFWU0DRTFdV8D", "LaDUpssn4K5d6zhWjZjBpYiMi3dPH9K8", "ss5K9h", "rXtGh46sDhfXdpwUsizJp86LtKfpJH2Z"};
    public Thread A00;
    public Throwable A01;
    public final int A02;
    public final int A03;
    public final DownloadAction A04;
    public final C0977Dy A05;
    public volatile int A06;
    public volatile E2 A07;

    static {
        A0B();
    }

    public RunnableC0974Dv(int i, C0977Dy c0977Dy, DownloadAction downloadAction, int i2) {
        this.A02 = i;
        this.A05 = c0977Dy;
        this.A04 = downloadAction;
        this.A06 = 0;
        this.A03 = i2;
    }

    public /* synthetic */ RunnableC0974Dv(int i, C0977Dy c0977Dy, DownloadAction downloadAction, int i2, RunnableC0966Dn runnableC0966Dn) {
        this(i, c0977Dy, downloadAction, i2);
    }

    private final float A00() {
        if (this.A07 != null) {
            return this.A07.A6h();
        }
        return -1.0f;
    }

    private int A01() {
        switch (this.A06) {
            case 5:
                return 0;
            case 6:
            case 7:
                return 1;
            default:
                return this.A06;
        }
    }

    private int A02(int i) {
        return Math.min((i - 1) * 1000, 5000);
    }

    private final long A05() {
        if (this.A07 != null) {
            return this.A07.A6i();
        }
        return 0L;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 106;
            if (A09[2].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A09;
            strArr[1] = "SxpsrgoFQf8yDU92Sremp";
            strArr[3] = "hhSclg15fgRacyt55sjc8";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08() {
        if (A0F(0, 5)) {
            this.A05.A07.post(new RunnableC0971Ds(this));
        } else if (A0F(1, 6)) {
            A09();
        }
    }

    private void A09() {
        if (this.A07 != null) {
            this.A07.cancel();
        }
        this.A00.interrupt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        if (A0F(0, 1)) {
            Thread thread = new Thread(this);
            this.A00 = thread;
            thread.start();
        }
    }

    public static void A0B() {
        A08 = new byte[]{-49, -6, 2, -7, -9, -6, -20, -17, -85, -16, -3, -3, -6, -3, -71, -85, -35, -16, -1, -3, 4, -85, -41, -22, -8, -22, -7, -91, -22, -9, -9, -12, -9, -91, -24, -12, -6, -13, -7, -77, -91, -23, -12, -4, -13, -15, -12, -26, -23, -22, -23, -57, -2, -7, -22, -8, -91, -62, -91, -16, -3, Ascii.SI, 7, -68, 5, Ascii.SI, -68, Ascii.SI, Ascii.DLE, -3, Ascii.SO, Ascii.DLE, 1, 0};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0E() {
        return this.A06 == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0F(int i, int i2) {
        return A0G(i, i2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0G(int i, int i2, Throwable th) {
        if (this.A06 != i) {
            return false;
        }
        this.A06 = i2;
        this.A01 = th;
        if (!(this.A06 != A01())) {
            this.A05.A0E(this);
        }
        return true;
    }

    public final C0976Dx A0K() {
        return new C0976Dx(this.A02, this.A04, A01(), A00(), A05(), this.A01, null);
    }

    public final boolean A0L() {
        return this.A06 == 5 || this.A06 == 1 || this.A06 == 7 || this.A06 == 6;
    }

    public final boolean A0M() {
        return this.A06 == 4 || this.A06 == 2 || this.A06 == 3;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            C0977Dy.A0J(A07(59, 15, 50), this);
            Throwable th = null;
            try {
                this.A07 = this.A04.A07(this.A05.A0A);
                if (this.A04.A03) {
                    this.A07.remove();
                } else {
                    int i = 0;
                    long j = -1;
                    while (!Thread.interrupted()) {
                        try {
                            this.A07.A58();
                            break;
                        } catch (IOException e2) {
                            long jA6i = this.A07.A6i();
                            if (jA6i != j) {
                                C0977Dy.A0J(A07(22, 37, 27) + jA6i, this);
                                j = jA6i;
                                i = 0;
                            }
                            if (this.A06 != 1 || (i = i + 1) > this.A03) {
                                throw e2;
                            }
                            C0977Dy.A0J(A07(0, 22, 33) + i, this);
                            Thread.sleep(A02(i));
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
            this.A05.A07.post(new RunnableC0972Dt(this, th));
        } catch (Throwable th3) {
            K0.A00(th3, this);
        }
    }

    public final String toString() {
        return super.toString();
    }
}
