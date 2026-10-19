package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class G7 {
    public static byte[] A04;
    public static String[] A05 = {"tfY6MbCXKCMIEBFaz5DTNSwQjeQlsdhW", "1UTUottnLG4Bc2erVSXZ5CquC0lsHmD9", "WRMBQ6uqQ67Iv9A4m1bVrpx6x8KF8zD0", "GdVDnzSaJp111GE95ChA", "h9KCnpbAgc3gR8", "h9vqZVyAxwthOkAWolCZS7P8JeHRRya", "xZHasxsAmMNy85vBb9toR", "aWQTkv"};
    public static final String[] A06;
    public final int A00;
    public final String A01;
    public final String A02;
    public final String[] A03;

    static {
        A03();
        A06 = new String[0];
    }

    public G7(String str, int i, String str2, String[] strArr) {
        this.A00 = i;
        this.A01 = str;
        this.A02 = str2;
        this.A03 = strArr;
    }

    public static G7 A00() {
        String strA02 = A02(0, 0, 73);
        return new G7(strA02, 0, strA02, new String[0]);
    }

    public static G7 A01(String str, int i) {
        String strTrim;
        String strTrim2 = str.trim();
        if (strTrim2.isEmpty()) {
            if (A05[5].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[4] = "p9dgK4HsNp7ZHS";
            strArr[3] = "rCFBFYq0pHxXM20TKPTK";
            return null;
        }
        if (A05[1].charAt(25) != '0') {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[4] = "ihPGMeIk0rsbhx";
        strArr2[3] = "BIjif2bQ9kjhGmUX3ymE";
        int iIndexOf = strTrim2.indexOf(A02(0, 1, 83));
        if (iIndexOf == -1) {
            strTrim = A02(0, 0, 73);
        } else {
            strTrim = strTrim2.substring(iIndexOf).trim();
            strTrim2 = strTrim2.substring(0, iIndexOf);
        }
        String[] strArrA0l = C1078Hx.A0l(strTrim2, A02(1, 2, 74));
        return new G7(strArrA0l[0], i, strTrim, strArrA0l.length > 1 ? (String[]) Arrays.copyOfRange(strArrA0l, 1, strArrA0l.length) : A06);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{-102, -51, -97};
    }
}
