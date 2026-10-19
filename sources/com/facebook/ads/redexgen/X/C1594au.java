package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.au, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1594au extends AbstractC06570g {
    public static byte[] A01;
    public static final String A02;
    public final Uri A00;

    static {
        A01();
        A02 = C1594au.class.getSimpleName();
    }

    public C1594au(YA ya, InterfaceC1086If interfaceC1086If, String str, Uri uri) {
        super(ya, interfaceC1086If, str);
        this.A00 = uri;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{88, 115, 123, 126, 119, 118, 50, -122, -127, 50, -127, -126, 119, -128, 50, 126, 123, -128, 125, 50, -121, -124, 126, 76, 50};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06570g
    public final void A0C() {
        try {
            KZ.A0C(new KZ(), super.A00, this.A00, this.A02);
        } catch (Exception unused) {
            String str = A00(0, 25, 17) + this.A00.toString();
        }
    }
}
