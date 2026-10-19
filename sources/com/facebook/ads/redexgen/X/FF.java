package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class FF extends AbstractC1596aw {
    public static byte[] A02;
    public static final String A03;
    public final Uri A00;
    public final Map<String, String> A01;

    static {
        A01();
        A03 = FF.class.getSimpleName();
    }

    public FF(YA ya, InterfaceC1086If interfaceC1086If, String str, Uri uri, Map<String, String> map, C06630n c06630n, boolean z) {
        super(ya, interfaceC1086If, str, c06630n, z);
        this.A00 = uri;
        this.A01 = map;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{122, 93, 85, 80, 89, 88, Ascii.FS, 72, 83, Ascii.FS, 83, 76, 89, 82, Ascii.FS, 80, 85, 82, 87, Ascii.FS, 73, 78, 80, 6, Ascii.FS, 43, 46, 41, 44};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06570g
    public final EnumC06560f A0A() {
        try {
            KZ.A0B(new KZ(), ((AbstractC06570g) this).A00, C1132Kc.A00(this.A00.getQueryParameter(A00(25, 4, 8))), ((AbstractC06570g) this).A02);
            return null;
        } catch (Exception unused) {
            String str = A00(0, 25, 115) + this.A00.toString();
            return EnumC06560f.A02;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1596aw
    public final void A0D() {
        A0E(this.A01, ((AbstractC1596aw) this).A02 ? A0A() : null);
    }
}
