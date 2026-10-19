package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1434Vy implements DG {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-61, -10, -10, -25, -17, -14, -10, -25, -26, -94, -10, -15, -94, -27, -12, -25, -29, -10, -25, -94, -26, -25, -27, -15, -26, -25, -12, -94, -24, -15, -12, -94, -9, -16, -11, -9, -14, -14, -15, -12, -10, -25, -26, -94, -24, -15, -12, -17, -29, -10, 8, Ascii.ETB, Ascii.ETB, 19, Ascii.DLE, 10, 8, Ascii.ESC, Ascii.DLE, Ascii.SYN, Ascii.NAK, -42, Ascii.DLE, Ascii.VT, -38, -39, -24, -24, -28, -31, -37, -39, -20, -31, -25, -26, -89, -16, -91, -35, -27, -21, -33, -72, -57, -57, -61, -64, -70, -72, -53, -64, -58, -59, -122, -49, -124, -54, -70, -53, -68, -118, -116};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    @Override // com.facebook.ads.redexgen.X.DG
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.DE A4V(com.facebook.ads.internal.exoplayer2.thirdparty.Format r5) {
        /*
            r4 = this;
            java.lang.String r3 = r5.A0O
            int r0 = r3.hashCode()
            switch(r0) {
                case -1248341703: goto L1c;
                case 1154383568: goto L2e;
                case 1652648887: goto L40;
                default: goto L9;
            }
        L9:
            r0 = -1
        La:
            switch(r0) {
                case 0: goto L51;
                case 1: goto L57;
                case 2: goto L5d;
                default: goto Ld;
            }
        Ld:
            r2 = 0
            r1 = 50
            r0 = 43
            java.lang.String r1 = A00(r2, r1, r0)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>(r1)
            throw r0
        L1c:
            r2 = 50
            r1 = 15
            r0 = 80
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = 0
            goto La
        L2e:
            r2 = 65
            r1 = 18
            r0 = 33
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = 1
            goto La
        L40:
            r2 = 83
            r1 = 20
            r0 = 0
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = 2
            goto La
        L51:
            com.facebook.ads.redexgen.X.Vu r0 = new com.facebook.ads.redexgen.X.Vu
            r0.<init>()
            return r0
        L57:
            com.facebook.ads.redexgen.X.Vw r0 = new com.facebook.ads.redexgen.X.Vw
            r0.<init>()
            return r0
        L5d:
            com.facebook.ads.redexgen.X.Vr r0 = new com.facebook.ads.redexgen.X.Vr
            r0.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1434Vy.A4V(com.facebook.ads.internal.exoplayer2.thirdparty.Format):com.facebook.ads.redexgen.X.DE");
    }

    @Override // com.facebook.ads.redexgen.X.DG
    public final boolean AFu(Format format) {
        String str = format.A0O;
        return A00(50, 15, 80).equals(str) || A00(65, 18, 33).equals(str) || A00(83, 20, 0).equals(str);
    }
}
