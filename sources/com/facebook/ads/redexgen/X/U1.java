package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class U1 extends K8 {
    public static byte[] A01;
    public static String[] A02 = {"562InPUOhACtlwCEtN", "R5lwX4z8RDFVh5E8umVQyGbxSoVGO", "CYUCoKvLVtAS439EMb", "ChKnavF9Nqo0oetaNymcfBGaHAWTYXo2", "g5ZzVDftJQYE4wszTnHA7JY3RdMW3", "1hyLjyvULyVtl4OO", "Eld6CqAd7cnvJnvbiWS", "Re88eRXq7VTIVsZrXxwUq3yVYBRsOkYZ"};
    public final /* synthetic */ Context A00;

    static {
        A02();
    }

    public U1(Context context) {
        this.A00 = context;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 11);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{86, -123, -123, 98, 126, -125, 104, 121, -128, 107, 122, -121, -120, 126, -124, -125};
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        if (C1140Kk.A02 == EnumC1139Kj.A02) {
            return;
        }
        SharedPreferences sharedPreferencesA00 = C1123Jt.A00(this.A00);
        String strA00 = A00(0, 16, 10);
        int i = sharedPreferencesA00.getInt(strA00, -1);
        if (i != -1) {
            int unused = C1140Kk.A00 = i;
            C1140Kk.A02 = EnumC1139Kj.A02;
            return;
        }
        int iA03 = Build.VERSION.SDK_INT >= 24 ? C1140Kk.A03(this.A00) : C1140Kk.A02(this.A00);
        int unused2 = C1140Kk.A00 = iA03;
        if (A02[7].charAt(31) == 'G') {
            throw new RuntimeException();
        }
        A02[3] = "Y4NBnL2AiN9ppE2ANDhRNdYoO8WQhPKC";
        sharedPreferencesA00.edit().putInt(strA00, iA03).commit();
        C1140Kk.A02 = EnumC1139Kj.A02;
    }
}
