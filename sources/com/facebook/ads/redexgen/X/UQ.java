package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class UQ implements C6I {
    public static byte[] A03;
    public static String[] A04 = {"WE91vPqiHLcyJwrbQHRJcIvZwn5D9l", "3LK2x46Pp3Ld9onr8DyN9Ggm", "60IU9PqapOW3gkaytJRkZEg3", "UqNMzTGRyBNLAx", "QjYmXRpW4", "DeQ01HErfJf7NLfnuVX6corDAbYDzPur", "bhlqPTI7mETXQlgoFXHPJBBhjQPpzoup", "oYTMQ3SHL"};
    public final /* synthetic */ C1581ah A00;
    public final /* synthetic */ UJ A01;
    public final /* synthetic */ boolean A02;

    static {
        A01();
    }

    public UQ(UJ uj, C1581ah c1581ah, boolean z) {
        this.A01 = uj;
        this.A00 = c1581ah;
        this.A02 = z;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-16, Ascii.VT, 19, Ascii.SYN, Ascii.SI, Ascii.SO, -54, Ascii.RS, Ascii.EM, -54, Ascii.SO, Ascii.EM, 33, Ascii.CAN, Ascii.SYN, Ascii.EM, Ascii.VT, Ascii.SO, -54, Ascii.VT, -54, Ascii.ETB, Ascii.SI, Ascii.SO, 19, Ascii.VT, -40};
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAn() {
        if (this.A01.A0a != null) {
            this.A01.A0a.A0J();
            this.A01.A0a = null;
        }
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String strA00 = A00(0, 27, 110);
        this.A01.A0c.A0E().A2i(LM.A01(this.A01.A00), adErrorType.getErrorCode(), strA00);
        if (this.A01.A0G != null) {
            UJ uj = this.A01;
            String[] strArr = A04;
            if (strArr[4].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A04[6] = "7cQ3648pyLFx7h83cxUuTBVDS0jRS450";
            uj.A0G.ABH(JG.A01(adErrorType, strA00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAw() {
        this.A01.A0a = this.A00;
        if (this.A02 && this.A01.A0A != null) {
            C0993Eo c0993Eo = this.A01.A0A;
            String[] strArr = A04;
            if (strArr[4].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[4] = "vb7V14ygc";
            strArr2[7] = "eJXYUqUMt";
            c0993Eo.A0H();
        }
        if (this.A01.A0G != null) {
            if (this.A01.A0E.equals(EnumC1105Iy.A04) && !this.A01.A0q()) {
                this.A01.A0G.AC3();
            }
            if (this.A02) {
                if (!IP.A1R(this.A01.A0c) || this.A01.A0z() == null || !this.A01.A0z().A0k()) {
                    this.A01.A0G.AAR();
                } else {
                    UJ uj = this.A01;
                    uj.A0M = C1240Oi.A01(uj.A0c, this.A01.A0z(), 4, new UR(this));
                }
            }
        }
    }
}
