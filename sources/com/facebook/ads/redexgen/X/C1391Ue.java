package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ue, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1391Ue implements InterfaceC1292Qi {
    public static byte[] A01;
    public static String[] A02 = {"XEdsDf1ZbmPdObC9OTEW2z8", "P58GYLlTlw8ULSmid4", "Mge4MDnEmweXwYPX4YofvB", "Ml9Qgu3DLJEhAVMYvCD1k2vZQtwOfhBB", "E1ltw8QxIeAvk6pflmFLXm8YnaEq6i", "JKuYCHjaj2TXENBLxEiyXLq9QhlooG47", "FRLGU9mx00WiiljPewQioxO6UtPhxOrA", "0cr7cMD0TGsotYn7hqiGPP2awzQMRhBn"};
    public final /* synthetic */ C7S A00;

    static {
        A01();
    }

    public C1391Ue(C7S c7s) {
        this.A00 = c7s;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] - i3) - 117;
            String[] strArr = A02;
            if (strArr[3].charAt(0) == strArr[6].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "sKECfnlovjgTE3hUnC6hiyxfwSx6iZYU";
            strArr2[6] = "FWGh7KUlNSgjRKrBTTVWdRGVuB2lw617";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-12, Ascii.DC2, Ascii.US, -40, 37, -47, Ascii.NAK, Ascii.SUB, 36, 33, Ascii.DC2, 37, Ascii.DC4, Ascii.EM, -47, Ascii.DC4, 32, 38, Ascii.US, 37, Ascii.SYN, 35, 36, -33, 1, 38, 48, 45, Ascii.RS, 49, 32, 37, 34, 33, -35, 32, 44, 50, 43, 49, 34, 47, 48, -21, -35, Ascii.SI, 34, 48, 45, 44, 43, 48, 34, -9, -35};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1292Qi
    public final void AAu(InterfaceC1290Qg interfaceC1290Qg) {
        if (!this.A00.A04().A8o() || interfaceC1290Qg == null) {
            return;
        }
        String str = A00(24, 31, 72) + interfaceC1290Qg.A64();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1292Qi
    public final void ABI(Exception exc) {
        if (this.A00.A04().A8o()) {
            Log.e(C1097Iq.A00(), A00(0, 24, 60), exc);
        }
    }
}
