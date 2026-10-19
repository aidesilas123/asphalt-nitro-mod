package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.util.Log;
import android.view.WindowManager;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.android.gms.drive.DriveFile;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1583aj implements InterfaceC06640o, InterfaceC06801e {
    public static byte[] A0B;
    public static String[] A0C = {"PgLDGrk3t3a26fQCrT3IpIrRB5PMNBKm", "uls9HIPpriPjzjIXJVTR7HWmS4IMGzWu", "f2YRmtND2fanruA3kJYGXgN9aGwgjawI", "EZdssni07U2TMPMup9RmA63S0tAhTBNo", "xilKUxawUAlWzUTJOedtCKHAHwNBDRxA", "SxIuirRfQS0L7ik0LzQXw", "dF8CYh", "NQmOIXzIEfwTEqDrM9Z7TuMEUTKSiMNX"};
    public long A00;
    public RewardData A01;
    public InterfaceC06740y A02;
    public C06750z A03;
    public C06811f A04;
    public YA A05;
    public String A06;
    public String A07;
    public String A08;
    public boolean A09;
    public final String A0A = UUID.randomUUID().toString();

    static {
        A05();
    }

    private int A00() {
        int rotation = ((WindowManager) this.A05.getSystemService(A03(194, 6, 88))).getDefaultDisplay().getRotation();
        NP npA02 = A02();
        if (npA02 == NP.A06) {
            return -1;
        }
        if (npA02 == NP.A04) {
            switch (rotation) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        }
        switch (rotation) {
            case 2:
                return 9;
            default:
                String[] strArr = A0C;
                if (strArr[3].charAt(11) != strArr[7].charAt(11)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0C;
                strArr2[3] = "CZdwi0h9oyeTk4ywD5LtkOxTOpQ29Yc4";
                strArr2[7] = "yy96Y2PoNFwTE84mLwUlYETryPZgGhEq";
                return 1;
        }
    }

    private final EnumC1121Jq A01() {
        return this.A04.A0E();
    }

    private NP A02() {
        return this.A04.A0F();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        this.A09 = true;
    }

    public static void A05() {
        byte[] bArr = {78, 108, 99, 42, 121, 45, 126, 121, 108, Ascii.DEL, 121, 45, 76, 120, 105, 100, 104, 99, 110, 104, 67, 104, 121, 122, 98, Ascii.DEL, 102, 76, 110, 121, 100, 123, 100, 121, 116, 35, 45, 64, 108, 102, 104, 45, 126, 120, Ascii.DEL, 104, 45, 121, 101, 108, 121, 45, 100, 121, 42, 126, 45, 100, 99, 45, 116, 98, 120, Ascii.DEL, 45, 76, 99, 105, Ascii.DEL, 98, 100, 105, 64, 108, 99, 100, 107, 104, 126, 121, 35, 117, 96, 97, 45, 107, 100, 97, 104, 35, 73, 77, 78, 122, 107, 102, 106, 97, 108, 106, 65, 106, 123, 120, 96, 125, 100, 68, 37, 42, Ascii.ESC, 37, 39, 48, 45, 50, 45, 48, 61, 83, 91, 90, 87, 95, 74, 87, 81, 80, 122, 95, 74, 95, Ascii.FF, Ascii.DLE, Ascii.GS, Ascii.US, Ascii.EM, 17, Ascii.EM, Ascii.DC2, 8, 53, Ascii.CAN, 52, 54, 33, 32, 33, 34, 45, 42, 33, 32, Ascii.VT, 54, 45, 33, 42, 48, 37, 48, 45, 43, 42, Ascii.SI, 33, 61, 6, 17, 5, 1, 17, 7, 0, 32, Ascii.GS, Ascii.EM, 17, 114, 105, 110, 118, 114, 98, 78, 99, Ascii.RS, 1, Ascii.CR, Ascii.US, 60, 17, Ascii.CAN, Ascii.CR, 39, 57, 62, 52, 63, 39};
        if (A0C[1].charAt(29) == 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[4] = "6qgGoSyjmuhDFT94hunOHzgd3UUS7LMQ";
        strArr[0] = "q1PjRK7gg6WFD8n4pAFO870HLaNMi7ir";
        A0B = bArr;
    }

    private void A06(Intent intent) {
        C06811f c06811f = this.A04;
        RewardData rewardData = this.A01;
        c06811f.A0I(intent, rewardData, PU.A03(rewardData, this.A0A, this.A06));
    }

    private final void A07(YA ya, InterfaceC06740y interfaceC06740y, C06941s c06941s, EnumSet<CacheFlag> enumSet, String str) {
        C06811f c06811f = new C06811f(ya, c06941s, this, str);
        C1C c1cA0D = c06811f.A0D();
        if (IP.A0r(ya)) {
            boolean z = c1cA0D instanceof AbstractC1566aS;
            String[] strArr = A0C;
            if (strArr[3].charAt(11) == strArr[7].charAt(11)) {
                A0C[2] = "TkuXboGIr4gI6uBXxoSPLVsF8oObr4N9";
                if (z && C06610k.A06(this.A05, C06610k.A01(ya, c06941s.A03(), ((AbstractC1566aS) c1cA0D).A11()), ya.A09())) {
                    this.A05.A0E().A4H();
                    this.A02.ABf(this, AdError.NO_FILL);
                    String[] strArr2 = A0C;
                    if (strArr2[3].charAt(11) == strArr2[7].charAt(11)) {
                        A0C[1] = "78EqxHXjdVB4uq4fqkQnSqdXUgUnX7wU";
                        return;
                    }
                }
            }
            throw new RuntimeException();
        }
        this.A04 = c06811f;
        A08(c06811f.A0E());
        c06811f.A0J(ya, enumSet);
    }

    private void A08(EnumC1121Jq enumC1121Jq) {
        if (enumC1121Jq.equals(EnumC1121Jq.A03)) {
            this.A05.A0E().AFV(EnumC06540d.A04);
            return;
        }
        if (enumC1121Jq.equals(EnumC1121Jq.A09)) {
            this.A05.A0E().AFV(EnumC06540d.A03);
            return;
        }
        if (enumC1121Jq.equals(EnumC1121Jq.A0A)) {
            this.A05.A0E().AFV(EnumC06540d.A0A);
            return;
        }
        if (enumC1121Jq.equals(EnumC1121Jq.A0C)) {
            this.A05.A0E().AFV(EnumC06540d.A0C);
            return;
        }
        if (enumC1121Jq.equals(EnumC1121Jq.A0B)) {
            this.A05.A0E().AFV(EnumC06540d.A0B);
            return;
        }
        boolean zEquals = enumC1121Jq.equals(EnumC1121Jq.A05);
        String[] strArr = A0C;
        if (strArr[5].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A0C[2] = "SZ1DhKHJxqFOmux8c4F7iNiG5ZFRRvjL";
        if (zEquals) {
            if (this.A04.A0K()) {
                this.A05.A0E().AFV(EnumC06540d.A07);
            } else if ((A09() instanceof AbstractC1566aS) && this.A04.A0L((AbstractC1566aS) A09())) {
                this.A05.A0E().AFV(EnumC06540d.A09);
            } else {
                this.A05.A0E().AFV(EnumC06540d.A08);
            }
        }
    }

    public final C1C A09() {
        return this.A04.A0D();
    }

    public final void A0A(YA ya, InterfaceC06740y interfaceC06740y, C06941s c06941s, EnumSet<CacheFlag> enumSet, String str, String str2, RewardData rewardData) {
        this.A05 = ya;
        this.A02 = interfaceC06740y;
        String strA02 = c06941s.A02();
        this.A08 = strA02;
        this.A06 = strA02 != null ? strA02.split(A03(107, 1, 19))[0] : A03(0, 0, 5);
        this.A00 = c06941s.A00();
        this.A07 = str2;
        this.A01 = rewardData;
        A07(ya, interfaceC06740y, c06941s, enumSet, str);
    }

    public final boolean A0B() {
        if (!this.A09) {
            InterfaceC06740y interfaceC06740y = this.A02;
            if (interfaceC06740y != null) {
                interfaceC06740y.ABf(this, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
            }
            return false;
        }
        AdActivityIntent adActivityIntentA04 = KN.A04(this.A05);
        adActivityIntentA04.putExtra(A03(143, 24, 76), A00());
        adActivityIntentA04.putExtra(A03(178, 8, 15), this.A0A);
        adActivityIntentA04.putExtra(A03(132, 11, 116), this.A08);
        adActivityIntentA04.putExtra(A03(167, 11, 124), this.A00);
        EnumC1121Jq enumC1121JqA01 = A01();
        A08(enumC1121JqA01);
        adActivityIntentA04.putExtra(A03(186, 8, 96), enumC1121JqA01);
        String str = this.A07;
        if (str != null) {
            adActivityIntentA04.putExtra(A03(119, 13, 54), str);
        }
        A06(adActivityIntentA04);
        adActivityIntentA04.addFlags(DriveFile.MODE_READ_ONLY);
        try {
            ActivityUtils.A03(this.A05);
            KN.A09(this.A05, adActivityIntentA04);
            return true;
        } catch (KL e2) {
            Throwable cause = e2.getCause();
            KL cause2 = e2;
            if (cause != null) {
                cause2 = e2.getCause();
            }
            this.A05.A07().A9M(A03(108, 11, 76), C08417x.A0D, new C08427y(cause2));
            Log.e(A03(90, 17, 7), A03(0, 90, 5), cause2);
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final String A6N() {
        return this.A04.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final AdPlacementType A7W() {
        return AdPlacementType.INTERSTITIAL;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AAP(AdError adError) {
        InterfaceC06740y interfaceC06740y = this.A02;
        if (interfaceC06740y != null) {
            interfaceC06740y.ABf(this, adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AAQ() {
        A04();
        this.A02.ABe(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AEL() {
        C06750z c06750z = new C06750z(this.A05, this.A0A, this, this.A02);
        this.A03 = c06750z;
        c06750z.A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final boolean AFs() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AG1() {
        C06750z c06750z = this.A03;
        if (c06750z != null) {
            c06750z.A03();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final void onDestroy() {
        C06811f c06811f = this.A04;
        if (c06811f != null) {
            c06811f.A0H();
        }
    }
}
