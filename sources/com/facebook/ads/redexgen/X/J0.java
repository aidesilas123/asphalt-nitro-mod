package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class J0 implements DialogInterface.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ UL A00;

    static {
        A01();
    }

    public J0(UL ul) {
        this.A00 = ul;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{7, 17, -3, Ascii.DC2, Ascii.NAK, Ascii.CR, -3, 17, Ascii.DC2, 3, Ascii.SO, -12, -14, -11, -27};
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Map mapA01 = this.A00.A01();
        mapA01.put(A00(0, 11, 119), A00(11, 4, 89));
        this.A00.A05(mapA01);
    }
}
