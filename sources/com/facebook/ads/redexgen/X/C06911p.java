package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1p, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06911p {
    public static byte[] A00;
    public static String[] A01 = {"kdNZsDbIr2FjUgQ6", "G4tbE8YXKkBHtbRzjHgF1iVs8BhQX3ki", "rgsd1nh14jUfY0oEDkCzVbJlkUwrdBXO", "6d8i19T6TQ9xRiUYh6SOmARBfT83lkdi", "2FsjHYpAfMpiihTdUse", "xtyrzkpFCSmXtl0pVvZtRxgukiiALNOU", "PnjWz3Ubzat8tEiN6RTB47L4MZQANY1H", "IONaBzwOxfylvpW8Ch"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[6].charAt(12) != strArr[5].charAt(12)) {
                break;
            }
            A01[2] = "wyIfRhN1EoOdsBbK5VRzuRP5Lc7uqmgb";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 100);
            if (A01[0].length() == 15) {
                break;
            }
            String[] strArr2 = A01;
            strArr2[3] = "fUzr4JaNgjTtoWHz8k6HkVts9HpSP1Qi";
            strArr2[1] = "zuQx1GaumRIGoFj6MrcQJkCLkICnzrhi";
            bArrCopyOfRange[i4] = b;
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A01() {
        A00 = new byte[]{-88, -30, -18, -25, -26};
    }

    public static void A02(YA ya, AbstractC1566aS abstractC1566aS, boolean z, InterfaceC06891n interfaceC06891n) {
        if (IP.A1h(ya)) {
            interfaceC06891n.ACN();
            return;
        }
        C6Q c6q = new C6Q(ya);
        C1Z c1zA06 = abstractC1566aS.A0v().A0D().A06();
        c6q.A0d(new C1094In(abstractC1566aS.A11(), ya.A09()));
        if (c1zA06 == null) {
            interfaceC06891n.ACM(AdError.CACHE_ERROR);
            return;
        }
        if (c1zA06.A0J()) {
            interfaceC06891n.ACN();
            if (A01[2].charAt(7) != '1') {
                throw new RuntimeException();
            }
            A01[0] = "84TqyqDRqUmJCVM8";
            return;
        }
        C6M c6m = new C6M(c1zA06.A0E(), abstractC1566aS.A0R(), abstractC1566aS.A0O());
        c6m.A04 = true;
        if (IP.A1a(ya)) {
            c6m.A03 = A00(0, 5, 22);
        }
        switch (C06881m.A00[c1zA06.A09().ordinal()]) {
            case 1:
            case 2:
                c6q.A0X(c6m);
                break;
        }
        c6q.A0b(new C6O(abstractC1566aS.A0z().A01(), -1, -1, abstractC1566aS.A0R(), abstractC1566aS.A0O()));
        c6q.A0b(new C6O(c1zA06.A0D(), -1, -1, abstractC1566aS.A0R(), abstractC1566aS.A0O()));
        c6q.A0W(new C1553aF(ya, interfaceC06891n, c6q, c1zA06, z), new C6J(abstractC1566aS.A0R(), abstractC1566aS.A0O()));
    }
}
