package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class YO implements InterfaceC07945r {
    public static byte[] A02;
    public static final String A03;
    public final InterfaceC07975u A00;
    public final C6Q A01;

    static {
        A02();
        A03 = YO.class.getSimpleName();
    }

    public YO(InterfaceC07975u interfaceC07975u, Y9 y9) {
        this.A00 = interfaceC07975u;
        interfaceC07975u.A3L(new YQ(this));
        this.A01 = new C6Q(y9);
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 112);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01() {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(0, 20, 114), Integer.valueOf(this.A00.A5x().size()));
        }
        for (InterfaceC08005x interfaceC08005x : this.A00.A5x()) {
            switch (C07965t.A00[interfaceC08005x.A84().ordinal()]) {
                case 1:
                    A04(interfaceC08005x.getUrl());
                    break;
                case 2:
                    A06(interfaceC08005x.getUrl());
                    break;
                case 3:
                    A05(interfaceC08005x.getUrl());
                    break;
            }
        }
        this.A01.A0W(new YP(this), new C6J(A00(81, 36, 11), A00(125, 7, 46)));
    }

    public static void A02() {
        A02 = new byte[]{50, 84, 71, 78, 81, 67, 70, 75, 80, 73, 2, 7, 70, 2, 67, 85, 85, 71, 86, 85, 58, 92, 79, 86, 89, 75, 78, 83, 88, 81, 10, 83, 87, 75, 81, 79, 36, 10, Ascii.SI, 93, 35, 69, 56, 63, 66, 52, 55, 60, 65, 58, -13, 64, 52, 69, 62, 72, 67, Ascii.CR, -13, -8, 70, Ascii.EM, 59, 46, 53, 56, 42, 45, 50, 55, 48, -23, 63, 50, 45, 46, 56, 3, -23, -18, 60, -33, -82, -31, -31, -79, -78, -81, -81, -88, -35, -77, -82, -83, -88, -84, -84, -32, -76, -88, -36, -83, -36, -82, -88, -83, -36, -83, -36, -32, -83, -33, -35, -34, -34, -32, -81, 58, 60, 47, 48, 47, 62, 45, 50, 19, Ascii.FF, 9, Ascii.FF, Ascii.CR, Ascii.NAK, Ascii.FF};
    }

    private void A04(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(20, 20, 122), str);
        }
        C6O c6o = new C6O(str, -1, -1, A00(81, 36, 11), A00(125, 7, 46));
        c6o.A01 = A00(117, 8, 90);
        this.A01.A0b(c6o);
    }

    private void A05(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(40, 21, 99), str);
        }
        C6M c6m = new C6M(str, A00(81, 36, 11), A00(125, 7, 46));
        c6m.A04 = true;
        c6m.A02 = A00(117, 8, 90);
        this.A01.A0X(c6m);
    }

    private void A06(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(61, 20, 89), str);
        }
        C6M c6m = new C6M(str, A00(81, 36, 11), A00(125, 7, 46));
        c6m.A04 = false;
        c6m.A02 = A00(117, 8, 90);
        this.A01.A0a(c6m);
    }
}
