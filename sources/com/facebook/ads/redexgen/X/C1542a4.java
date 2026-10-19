package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.a4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1542a4 implements AnonymousClass13 {
    public static byte[] A07;
    public static String[] A08 = {"NdU3dTBV9vpPy6YybD2Qky8Xp9oiymUK", "iGXlqhzjj4re98AW13mRmUxQt0ip7heY", "i4JUsV98mtHDxTx4GI", "uX4rqc35PVKyGMlab4Ievks4AeXTKuCR", "rLO13ppjW7wMy", "YX8F9O1K3gbo5OniWABn3Un2bmHHQded", "vQnjhTu4uDmsPPd6tCmWM2PRV3nZ7tVA", "6doRqStA7fW6oocsKlayDSgQ6jqa5ScM"};
    public final /* synthetic */ long A03;
    public final /* synthetic */ C0993Eo A04;
    public final /* synthetic */ C8D A05;
    public final /* synthetic */ Runnable A06;
    public boolean A02 = false;
    public boolean A01 = false;
    public boolean A00 = false;

    static {
        A01();
    }

    public C1542a4(C0993Eo c0993Eo, Runnable runnable, long j, C8D c8d) {
        this.A04 = c0993Eo;
        this.A06 = runnable;
        this.A03 = j;
        this.A05 = c8d;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{57, 46, 46, 51, 46, 67, 93, 73};
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass13
    public final void ACA(C1581ah c1581ah) {
        if (!this.A00) {
            this.A00 = true;
            this.A04.A05(this.A05.A03(C8H.A03), null);
        }
        if (this.A04.A06 != null) {
            this.A04.A06.A0C();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass13
    public final void ACB(C1581ah c1581ah) {
        if (c1581ah != this.A04.A00) {
            return;
        }
        this.A04.A0E().removeCallbacks(this.A06);
        this.A04.A01 = c1581ah;
        this.A04.A06.A0F(c1581ah);
        if (this.A02) {
            return;
        }
        this.A02 = true;
        this.A04.A05(this.A05.A03(C8H.A05), this.A04.A01(this.A03));
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass13
    public final void ACC(C1581ah c1581ah) {
        if (!this.A01) {
            this.A01 = true;
            C0993Eo c0993Eo = this.A04;
            C8D c8d = this.A05;
            C8H c8h = C8H.A04;
            String[] strArr = A08;
            if (strArr[3].charAt(16) != strArr[0].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "w5hMaJohNUScvyTMb6YchiksjKW7iU2S";
            strArr2[0] = "lwejxTPFHVjkcDrib15s3w6szJ9sWeR6";
            c0993Eo.A05(c8d.A03(c8h), null);
        }
        this.A04.A0K();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass13
    public final void ACE(C1581ah c1581ah, JG jg) {
        if (c1581ah != this.A04.A00) {
            return;
        }
        this.A04.A0E().removeCallbacks(this.A06);
        this.A04.A0M(c1581ah);
        if (!this.A02) {
            this.A02 = true;
            Map mapA01 = this.A04.A01(this.A03);
            mapA01.put(A00(0, 5, 58), String.valueOf(jg.A03().getErrorCode()));
            mapA01.put(A00(5, 3, 72), String.valueOf(jg.A04()));
            this.A04.A05(this.A05.A03(C8H.A05), mapA01);
        }
        this.A04.ABH(jg);
    }
}
