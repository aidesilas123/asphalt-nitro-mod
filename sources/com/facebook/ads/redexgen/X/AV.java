package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class AV extends Exception {
    public static byte[] A01;
    public static String[] A02 = {"9U3wPdJIU", "2LGp", "pJySrIerQ92A61C", "DThvYGttjE9j20qDJ6yVSrG4WY8ID38s", "4d1rNabt9wBbosJplZDA5yWTcQ5bg7DE", "S2Er", "uH", "phkxp1nklLcjNUB8"};
    public final int A00;

    static {
        A01();
    }

    public AV(int i) {
        super(A00(0, 25, 65) + i);
        this.A00 = i;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[0].length() == 2) {
                break;
            }
            A02[2] = "mthCjCtxSYf9ojX";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 76);
            if (A02[6].length() == 24) {
                break;
            }
            A02[0] = CampaignEx.JSON_KEY_AD_K;
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A01() {
        A01 = new byte[]{76, 120, 105, 100, 98, 89, Ascii.DEL, 108, 110, 102, 45, 122, Ascii.DEL, 100, 121, 104, 45, 107, 108, 100, 97, 104, 105, 55, 45};
    }
}
