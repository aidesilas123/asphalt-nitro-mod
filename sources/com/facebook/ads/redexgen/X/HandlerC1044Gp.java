package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.facebook.ads.redexgen.X.InterfaceC1045Gq;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class HandlerC1044Gp<T extends InterfaceC1045Gq> extends Handler implements Runnable {
    public static byte[] A0A;
    public int A00;
    public InterfaceC1043Go<T> A01;
    public IOException A02;
    public final int A03;
    public final long A04;
    public final T A05;
    public volatile Thread A06;
    public volatile boolean A07;
    public volatile boolean A08;
    public final /* synthetic */ V6 A09;

    static {
        A04();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC1044Gp(V6 v6, Looper looper, T t, InterfaceC1043Go<T> interfaceC1043Go, int i, long j) {
        super(looper);
        this.A09 = v6;
        this.A05 = t;
        this.A01 = interfaceC1043Go;
        this.A03 = i;
        this.A04 = j;
    }

    private long A00() {
        return Math.min((this.A00 - 1) * 1000, 5000);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 25);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        this.A02 = null;
        this.A09.A02.execute(this.A09.A00);
    }

    private void A03() {
        this.A09.A00 = null;
    }

    public static void A04() {
        A0A = new byte[]{-124, 119, -85, -76, -69, -122, -70, -35, -49, -46, -62, -49, -31, -39, -80, -42, -43, -80, -57, -82, -58, -50, -48, -45, -38, -127, -58, -45, -45, -48, -45, -127, -51, -48, -62, -59, -54, -49, -56, -127, -44, -43, -45, -58, -62, -50, -29, -4, -13, 6, -2, -13, -15, 2, -13, -14, -82, -13, 0, 0, -3, 0, -82, -6, -3, -17, -14, -9, -4, -11, -82, 1, 2, 0, -13, -17, -5, 118, -113, -122, -103, -111, -122, -124, -107, -122, -123, 65, -122, -103, -124, -122, -111, -107, -118, -112, -113, 65, -119, -126, -113, -123, -115, -118, -113, -120, 65, -115, -112, -126, -123, 65, -124, -112, -114, -111, -115, -122, -107, -122, -123, 120, -111, -120, -101, -109, -120, -122, -105, -120, -121, 67, -120, -101, -122, -120, -109, -105, -116, -110, -111, 67, -113, -110, -124, -121, -116, -111, -118, 67, -106, -105, -107, -120, -124, -112, -4, -1, -15, -12, -54, -52, -13, -4, 3, -50};
    }

    public final void A05(int i) throws IOException {
        IOException iOException = this.A02;
        if (iOException != null && this.A00 > i) {
            throw iOException;
        }
    }

    public final void A06(long j) {
        HI.A04(this.A09.A00 == null);
        this.A09.A00 = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            A02();
        }
    }

    public final void A07(boolean z) {
        this.A08 = z;
        this.A02 = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.A07 = true;
            this.A05.A47();
            if (this.A06 != null) {
                this.A06.interrupt();
            }
        }
        if (z) {
            A03();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.A01.ABp(this.A05, jElapsedRealtime, jElapsedRealtime - this.A04, true);
            this.A01 = null;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
        } catch (Throwable th) {
            K0.A00(th, this);
        }
        if (this.A08) {
            return;
        }
        if (message.what == 0) {
            A02();
            return;
        }
        if (message.what == 4) {
            throw ((Error) message.obj);
        }
        A03();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.A04;
        if (this.A07) {
            this.A01.ABp(this.A05, jElapsedRealtime, j, false);
            return;
        }
        switch (message.what) {
            case 1:
                this.A01.ABp(this.A05, jElapsedRealtime, j, false);
                return;
            case 2:
                try {
                    this.A01.ABr(this.A05, jElapsedRealtime, j);
                    return;
                } catch (RuntimeException e2) {
                    Log.e(A01(6, 8, 85), A01(77, 44, 8), e2);
                    this.A09.A01 = new C1049Gu(e2);
                    return;
                }
            case 3:
                IOException iOException = (IOException) message.obj;
                this.A02 = iOException;
                int iABs = this.A01.ABs(this.A05, jElapsedRealtime, j, iOException);
                if (iABs == 3) {
                    this.A09.A01 = this.A02;
                    return;
                } else {
                    if (iABs != 2) {
                        int i = 1;
                        if (iABs != 1) {
                            i = 1 + this.A00;
                        }
                        this.A00 = i;
                        A06(A00());
                        return;
                    }
                    return;
                }
            default:
                return;
        }
        K0.A00(th, this);
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String strA01 = A01(6, 8, 85);
        if (K0.A02(this)) {
            return;
        }
        try {
            try {
                try {
                    try {
                        try {
                            this.A06 = Thread.currentThread();
                            if (!this.A07) {
                                C1075Hu.A02(A01(156, 10, 119) + this.A05.getClass().getSimpleName() + A01(0, 6, 47));
                                try {
                                    this.A05.A9B();
                                } finally {
                                    C1075Hu.A00();
                                }
                            }
                            if (this.A08) {
                                return;
                            }
                            sendEmptyMessage(2);
                        } catch (IOException e2) {
                            if (this.A08) {
                                return;
                            }
                            obtainMessage(3, e2).sendToTarget();
                        }
                    } catch (OutOfMemoryError e3) {
                        Log.e(strA01, A01(14, 32, 72), e3);
                        if (this.A08) {
                            return;
                        }
                        obtainMessage(3, new C1049Gu(e3)).sendToTarget();
                    }
                } catch (Exception e4) {
                    Log.e(strA01, A01(121, 35, 10), e4);
                    if (this.A08) {
                        return;
                    }
                    obtainMessage(3, new C1049Gu(e4)).sendToTarget();
                }
            } catch (Error e5) {
                Log.e(strA01, A01(46, 31, 117), e5);
                if (!this.A08) {
                    obtainMessage(4, e5).sendToTarget();
                }
                throw e5;
            } catch (InterruptedException unused) {
                HI.A04(this.A07);
                if (this.A08) {
                    return;
                }
                sendEmptyMessage(2);
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
