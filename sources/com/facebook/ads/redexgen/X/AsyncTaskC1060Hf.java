package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class AsyncTaskC1060Hf extends AsyncTask<AbstractC1303Qt, Void, InterfaceC1290Qg> implements InterfaceC1300Qq {
    public static byte[] A04;
    public InterfaceC1292Qi A00;
    public HR A01;
    public Exception A02;
    public Executor A03;

    static {
        A02();
    }

    public AsyncTaskC1060Hf(HR hr, InterfaceC1292Qi interfaceC1292Qi, Executor executor) {
        this.A01 = hr;
        this.A00 = interfaceC1292Qi;
        this.A03 = executor;
    }

    private final InterfaceC1290Qg A00(AbstractC1303Qt... abstractC1303QtArr) throws Throwable {
        if (K0.A02(this)) {
            return null;
        }
        try {
            if (abstractC1303QtArr != null) {
                try {
                    if (abstractC1303QtArr.length > 0) {
                        InterfaceC1290Qg interfaceC1290QgA0J = this.A01.A0J(abstractC1303QtArr[0]);
                        if (this.A01.A0K().A04() && interfaceC1290QgA0J != null) {
                            String.format(Locale.US, A01(108, 21, 6), Integer.valueOf(interfaceC1290QgA0J.A7v()), interfaceC1290QgA0J.getUrl(), interfaceC1290QgA0J.A64());
                        }
                        if (interfaceC1290QgA0J != null) {
                            return interfaceC1290QgA0J;
                        }
                        throw new IllegalStateException(A01(87, 21, 119));
                    }
                } catch (Exception e2) {
                    this.A02 = e2;
                    if (this.A01.A0K().A04()) {
                        String.format(Locale.US, A01(64, 23, 98), e2.getMessage());
                    }
                    cancel(true);
                    return null;
                }
            }
            throw new IllegalArgumentException(A01(0, 64, 69));
        } catch (Throwable th) {
            K0.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-18, Ascii.EM, -14, Ascii.RS, Ascii.RS, Ascii.SUB, -4, Ascii.SI, Ascii.ESC, Ascii.US, Ascii.SI, Ascii.GS, Ascii.RS, -2, Ascii.VT, Ascii.GS, Ascii.NAK, -54, Ascii.RS, Ascii.VT, Ascii.NAK, Ascii.SI, Ascii.GS, -54, Ascii.SI, 34, Ascii.VT, Ascii.CR, Ascii.RS, Ascii.SYN, 35, -54, Ascii.EM, Ascii.CAN, Ascii.SI, -54, Ascii.VT, Ascii.FS, 17, Ascii.US, Ascii.ETB, Ascii.SI, Ascii.CAN, Ascii.RS, -54, Ascii.EM, Ascii.DLE, -54, Ascii.RS, 35, Ascii.SUB, Ascii.SI, -54, -14, Ascii.RS, Ascii.RS, Ascii.SUB, -4, Ascii.SI, Ascii.ESC, Ascii.US, Ascii.SI, Ascii.GS, Ascii.RS, Ascii.SI, Ascii.ESC, Ascii.ESC, Ascii.ETB, -25, 57, 44, 56, 60, 44, 58, 59, -25, 45, 40, 48, 51, 44, 43, 1, -25, -20, 58, 36, 80, 80, 76, -4, 78, 65, 79, 76, 75, 74, 79, 65, -4, 69, 79, -4, 74, 81, 72, 72, -67, -48, -34, -37, -38, -39, -34, -48, -91, -117, -112, -49, -117, -109, -112, -34, -108, -91, 117, -112, -34};
    }

    private final void A03(InterfaceC1290Qg interfaceC1290Qg) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.AAu(interfaceC1290Qg);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }

    public final void A04(AbstractC1303Qt abstractC1303Qt) {
        super.executeOnExecutor(this.A03, abstractC1303Qt);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ InterfaceC1290Qg doInBackground(AbstractC1303Qt[] abstractC1303QtArr) throws Throwable {
        if (K0.A02(this)) {
            return null;
        }
        try {
            return A00(abstractC1303QtArr);
        } catch (Throwable th) {
            K0.A00(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.A00.ABI(this.A02);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(InterfaceC1290Qg interfaceC1290Qg) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            A03(interfaceC1290Qg);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
