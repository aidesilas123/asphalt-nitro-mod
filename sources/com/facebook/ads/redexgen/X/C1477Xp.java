package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1477Xp implements InterfaceC08287i {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{0, 5, Ascii.DLE, 5, Ascii.ESC, Ascii.DC4, Ascii.SYN, Ascii.VT, 7, 1, Ascii.ETB, Ascii.ETB, Ascii.CR, 10, 3, Ascii.ESC, Ascii.VT, Ascii.DC4, Ascii.DLE, Ascii.CR, Ascii.VT, 10, Ascii.ETB, Ascii.ESC, 7, Ascii.VT, 17, 10, Ascii.DLE, Ascii.SYN, Ascii.GS, Ascii.ESC, Ascii.SI, 1, Ascii.GS, 39, 34, 55, 34, 60, 51, 49, 44, 32, 38, 48, 48, 42, 45, 36, 60, 44, 51, 55, 42, 44, 45, 48, 60, 40, 38, 58, 36, 33, 52, 33, 63, 48, 50, 47, 35, 37, 51, 51, 41, 46, 39, 63, 47, 48, 52, 41, 47, 46, 51, 63, 51, 52, 33, 52, 37, 63, 43, 37, 57};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08287i
    public final void AA6(InterfaceC08277h interfaceC08277h) {
        String[] stringArray;
        Integer integer;
        Integer integer2;
        if (AdInternalSettings.sDataProcessingOptionsUpdate.getAndSet(false)) {
            synchronized (AdInternalSettings.sSettingsBundle) {
                stringArray = AdInternalSettings.sSettingsBundle.getStringArray(A00(35, 27, 93));
                integer = AdInternalSettings.sSettingsBundle.getInteger(A00(0, 35, 122));
                integer2 = AdInternalSettings.sSettingsBundle.getInteger(A00(62, 33, 94));
            }
            interfaceC08277h.ACu(stringArray, integer, integer2);
        }
    }
}
