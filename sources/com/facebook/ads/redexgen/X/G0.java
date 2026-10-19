package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class G0 {
    public static byte[] A02;
    public static String[] A03 = {"o6dtQbEX6DUU2ZPrt5fMpvPTiwhNIFVw", "", "MFXGqw4wC6wJal5", "uC7LPUo8IknDiYQWYNCx", "R0uPVJBemfZgswV0fGveV9P1kI7oDQdd", "Ua883bT78DPlxnLPMdUDySsZEoLcqfDA", "dE9C57ZljM4PWQ1xUFFc", "KkKO0GZU5SD8UwtXdKEVEJnvfx0O6Fgr"};
    public static final Pattern A04;
    public final C1062Hh A00 = new C1062Hh();
    public final StringBuilder A01 = new StringBuilder();

    static {
        A07();
        A04 = Pattern.compile(A01(11, 19, 122));
    }

    public static char A00(C1062Hh c1062Hh, int i) {
        return (char) c1062Hh.A00[i];
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 6);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(C1062Hh c1062Hh) {
        int iA06 = c1062Hh.A06();
        int iA07 = c1062Hh.A07();
        boolean z = false;
        while (iA06 < iA07 && !z) {
            int i = iA06 + 1;
            z = ((char) c1062Hh.A00[iA06]) == ')';
            iA06 = i;
        }
        return c1062Hh.A0S((iA06 - 1) - c1062Hh.A06()).trim();
    }

    public static String A03(C1062Hh c1062Hh, StringBuilder sb) {
        sb.setLength(0);
        int iA06 = c1062Hh.A06();
        int iA07 = c1062Hh.A07();
        boolean z = false;
        while (iA06 < iA07 && !z) {
            char c = (char) c1062Hh.A00[iA06];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                iA06++;
                sb.append(c);
            }
        }
        c1062Hh.A0Z(iA06 - c1062Hh.A06());
        return sb.toString();
    }

    public static String A04(C1062Hh c1062Hh, StringBuilder sb) {
        A0A(c1062Hh);
        if (c1062Hh.A04() == 0) {
            return null;
        }
        String strA03 = A03(c1062Hh, sb);
        String strA01 = A01(0, 0, 115);
        return !strA01.equals(strA03) ? strA03 : strA01 + ((char) c1062Hh.A0E());
    }

    public static String A05(C1062Hh c1062Hh, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int iA06 = c1062Hh.A06();
            String strA04 = A04(c1062Hh, sb);
            if (strA04 == null) {
                return null;
            }
            if (A01(118, 1, 1).equals(strA04) || A01(8, 1, 20).equals(strA04)) {
                c1062Hh.A0Y(iA06);
                z = true;
            } else {
                sb2.append(strA04);
            }
        }
        return sb2.toString();
    }

    public static String A06(C1062Hh c1062Hh, StringBuilder sb) {
        A0A(c1062Hh);
        if (c1062Hh.A04() < 5) {
            return null;
        }
        if (!A01(3, 5, 78).equals(c1062Hh.A0S(5))) {
            return null;
        }
        int iA06 = c1062Hh.A06();
        String strA04 = A04(c1062Hh, sb);
        if (strA04 == null) {
            return null;
        }
        if (A01(117, 1, 24).equals(strA04)) {
            c1062Hh.A0Y(iA06);
            return A01(0, 0, 115);
        }
        String strA02 = A01(0, 1, 73).equals(strA04) ? A02(c1062Hh) : null;
        String strA042 = A04(c1062Hh, sb);
        if (!A01(1, 1, 95).equals(strA042) || strA042 == null) {
            return null;
        }
        return strA02;
    }

    public static void A07() {
        A02 = new byte[]{119, -114, -93, -114, -114, -73, -55, -71, 85, -81, -127, -36, -37, -10, -17, -23, -29, -27, -67, -94, -88, -37, -34, -94, -35, -86, -87, -94, -36, -35, -128, Ascii.DEL, -127, -119, -123, -112, -115, -109, -116, -126, 75, -127, -115, -118, -115, -112, -72, -59, -62, -70, -97, -85, -88, -85, -82, 123, -124, -125, -119, 66, 123, 118, -126, 126, -127, -114, -90, -81, -82, -76, 109, -77, -76, -71, -84, -91, -74, -65, -66, -60, 125, -57, -75, -71, -73, -72, -60, -36, -25, -44, -33, -36, -42, -33, -48, -29, -33, -104, -49, -48, -50, -38, -35, -52, -33, -44, -38, -39, -80, -87, -97, -96, -83, -89, -92, -87, -96, -103, -124};
    }

    private void A08(G4 g4, String str) {
        if (A01(0, 0, 115).equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        String[] strArr = A03;
        if (strArr[6].length() != strArr[3].length()) {
            throw new RuntimeException();
        }
        A03[2] = "CW487BEDmC1UFYo";
        if (iIndexOf != -1) {
            Matcher matcher = A04.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                g4.A0K(matcher.group(1));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrA0l = C1078Hx.A0l(str, A01(9, 2, 77));
        String str2 = strArrA0l[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            g4.A0J(str2.substring(0, iIndexOf2));
            g4.A0I(str2.substring(iIndexOf2 + 1));
        } else {
            g4.A0J(str2);
        }
        if (strArrA0l.length > 1) {
            g4.A0L((String[]) Arrays.copyOfRange(strArrA0l, 1, strArrA0l.length));
        }
    }

    public static void A09(C1062Hh c1062Hh) {
        while (!TextUtils.isEmpty(c1062Hh.A0P())) {
        }
    }

    public static void A0A(C1062Hh c1062Hh) {
        boolean z = true;
        while (c1062Hh.A04() > 0 && z) {
            z = A0D(c1062Hh) || A0C(c1062Hh);
        }
    }

    public static void A0B(C1062Hh c1062Hh, G4 g4, StringBuilder sb) {
        A0A(c1062Hh);
        String strA03 = A03(c1062Hh, sb);
        String strA01 = A01(0, 0, 115);
        if (!strA01.equals(strA03) && A01(2, 1, 99).equals(A04(c1062Hh, sb))) {
            A0A(c1062Hh);
            String strA05 = A05(c1062Hh, sb);
            if (strA05 == null || strA01.equals(strA05)) {
                return;
            }
            int iA06 = c1062Hh.A06();
            String strA04 = A04(c1062Hh, sb);
            String[] strArr = A03;
            if (strArr[4].charAt(25) != strArr[7].charAt(25)) {
                A03[2] = "4K4C1V7x7MHXc7r";
                if (!A01(8, 1, 20).equals(strA04)) {
                    if (A03[2].length() == 15) {
                        A03[2] = "7FFtYIqbw4CKtyv";
                        if (!A01(118, 1, 1).equals(strA04)) {
                            return;
                        }
                    } else if (!A01(118, 1, 1).equals(strA04)) {
                        return;
                    }
                    c1062Hh.A0Y(iA06);
                }
                if (A01(50, 5, 54).equals(strA03)) {
                    g4.A0C(HN.A02(strA05));
                    return;
                }
                if (A01(30, 16, 24).equals(strA03)) {
                    g4.A0B(HN.A02(strA05));
                    return;
                }
                if (!A01(93, 15, 101).equals(strA03)) {
                    if (A01(55, 11, 15).equals(strA03)) {
                        g4.A0D(strA05);
                        return;
                    }
                    if (A01(76, 11, 74).equals(strA03)) {
                        if (A01(46, 4, 80).equals(strA05)) {
                            g4.A0E(true);
                            return;
                        }
                        return;
                    } else {
                        if (A01(66, 10, 58).equals(strA03) && A01(87, 6, 109).equals(strA05)) {
                            g4.A0F(true);
                            return;
                        }
                        return;
                    }
                }
                String[] strArr2 = A03;
                if (strArr2[6].length() == strArr2[3].length()) {
                    String[] strArr3 = A03;
                    strArr3[6] = "4EBATBo3G3iJZ8CvpiMB";
                    strArr3[3] = "oi6BgvCdqkOJFnhZ1QlM";
                    if (A01(108, 9, 53).equals(strA05)) {
                        g4.A0G(true);
                        return;
                    }
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    public static boolean A0C(C1062Hh c1062Hh) {
        int iA06 = c1062Hh.A06();
        int iA07 = c1062Hh.A07();
        byte[] bArr = c1062Hh.A00;
        if (iA06 + 2 > iA07) {
            return false;
        }
        int i = iA06 + 1;
        if (bArr[iA06] != 47) {
            return false;
        }
        int i2 = i + 1;
        if (bArr[i] != 42) {
            return false;
        }
        while (i2 + 1 < iA07) {
            int i3 = i2 + 1;
            if (((char) bArr[i2]) == '*' && ((char) bArr[i3]) == '/') {
                iA07 = i3 + 1;
                i2 = iA07;
            } else {
                i2 = i3;
            }
        }
        c1062Hh.A0Z(iA07 - c1062Hh.A06());
        return true;
    }

    public static boolean A0D(C1062Hh c1062Hh) {
        switch (A00(c1062Hh, c1062Hh.A06())) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
                c1062Hh.A0Z(1);
                return true;
            default:
                return false;
        }
    }

    public final G4 A0E(C1062Hh c1062Hh) {
        this.A01.setLength(0);
        int iA06 = c1062Hh.A06();
        A09(c1062Hh);
        this.A00.A0b(c1062Hh.A00, c1062Hh.A06());
        this.A00.A0Y(iA06);
        String strA06 = A06(this.A00, this.A01);
        if (strA06 != null) {
            if (A01(117, 1, 24).equals(A04(this.A00, this.A01))) {
                G4 g4 = new G4();
                A08(g4, strA06);
                String strA04 = null;
                boolean z = false;
                while (A03[2].length() == 15) {
                    String[] strArr = A03;
                    strArr[0] = "u1M5SbGaD18kT3mlqswMZWeIcd6Kf1Bl";
                    strArr[5] = "tCvfJbvExhfaq7uM8GkpPqKnHxthSgb1";
                    String strA01 = A01(118, 1, 1);
                    if (z) {
                        if (strA01.equals(strA04)) {
                            return g4;
                        }
                        return null;
                    }
                    int iA062 = this.A00.A06();
                    strA04 = A04(this.A00, this.A01);
                    z = strA04 == null || strA01.equals(strA04);
                    if (!z) {
                        this.A00.A0Y(iA062);
                        A0B(this.A00, g4, this.A01);
                    }
                }
                throw new RuntimeException();
            }
        }
        return null;
    }
}
