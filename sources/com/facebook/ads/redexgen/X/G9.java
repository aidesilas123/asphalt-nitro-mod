package com.facebook.ads.redexgen.X;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class G9 {
    public static byte[] A01;
    public static String[] A02 = {"JYYG6mQudNNGYNEgDR02nAMcKzDjIK4P", "2FeNcZ4AMvklOu4dQ", "gTW6toOfk8MVsyPSs", "RutE2HgswW2Ba8ERBuDpKSxIcN55U9", "rp2dSjsGIei", "VbvhM5GUqSDZ5Gwz8nmiFAQ41xb0JLlL", "3r4p5hSJjLrlxa79edZPjpayqJig4NbN", "nYAJe"};
    public static final Pattern A03;
    public static final Pattern A04;
    public final StringBuilder A00 = new StringBuilder();

    static {
        A05();
        A03 = Pattern.compile(A03(161, 26, 75));
        A04 = Pattern.compile(A03(3, 12, 0));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.G9.A00(java.lang.String):int");
    }

    public static int A01(String str, int i) {
        int iIndexOf = str.indexOf(62, i);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.text.Layout.Alignment A02(java.lang.String r4) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.G9.A02(java.lang.String):android.text.Layout$Alignment");
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 77);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A04(String str) {
        String strTrim = str.trim();
        if (!strTrim.isEmpty()) {
            return C1078Hx.A0m(strTrim, A03(156, 5, 44))[0];
        }
        if (A02[4].length() == 19) {
            throw new RuntimeException();
        }
        A02[3] = "n2qP40ip31gyFkT4bwxWbWgEBn8x5R";
        return null;
    }

    public static void A05() {
        A01 = new byte[]{39, 124, 71, 101, 17, Ascii.RS, 102, 114, 100, 119, 101, 17, Ascii.RS, 102, 100, 100, 94, 66, 56, Ascii.US, 7, Ascii.DLE, Ascii.GS, Ascii.CAN, Ascii.NAK, 81, Ascii.DLE, Ascii.GS, Ascii.CAN, Ascii.SYN, Ascii.US, Ascii.FS, Ascii.DC4, Ascii.US, 5, 81, 7, Ascii.DLE, Ascii.GS, 4, Ascii.DC4, 75, 81, Ascii.EM, 62, 38, 49, 60, 57, 52, 112, 49, 62, 51, 56, 63, 34, 112, 38, 49, 60, 37, 53, 106, 112, 81, 105, 107, 114, 114, 107, 108, 101, 34, 96, 99, 102, 34, 97, 119, 103, 34, 113, 103, 118, 118, 107, 108, 101, 56, 34, 105, 81, 83, 74, 74, 83, 84, 93, Ascii.SUB, 89, 79, 95, Ascii.SUB, 77, 83, 78, 82, Ascii.SUB, 88, 91, 94, Ascii.SUB, 82, 95, 91, 94, 95, 72, 0, Ascii.SUB, Ascii.SI, 52, 49, 52, 53, 45, 52, 122, 57, 47, 63, 122, 41, 63, 46, 46, 51, 52, 61, 122, Ascii.NAK, 39, 32, 52, 54, 54, 1, 55, 39, Ascii.DC2, 35, 48, 49, 39, 48, 58, 65, 61, 79, 60, 88, 46, 90, 85, 45, 47, 90, 117, 45, 43, 43, 56, 90, 117, 45, 46, 90, 85, 45, 47, 46, 40, 44, 47, 57, 34, 106, 103, 98, 108, 101, 48, 60, 33, 109, 36, 76, 74, 65, 91, 74, 93, Ascii.CAN, 19, Ascii.EM, Ascii.DC4, 7, 66, 99, 109, 100, 101, 120, 99, 100, 109, 42, Ascii.DEL, 100, 121, Ascii.DEL, 122, 122, 101, 120, 126, 111, 110, 42, 111, 100, 126, 99, 126, 115, 48, 42, 45, 44, 53, 56, 55, 62, 9, 0, 3, 17, 114, 119, 112, 123, 84, 76, Ascii.CAN, Ascii.FS, 17, 17, Ascii.EM, Ascii.DLE, 87, 91, 74, 73, 79, 80, 76, 86, 75, 86, 80, 81, 34, 57, 55, 56, 36, 58, 32, 51, 44, Ascii.GS, Ascii.SUB, Ascii.SI, Ascii.FS, Ascii.SUB, 111, 74};
    }

    public static void A06(SpannableStringBuilder spannableStringBuilder, G4 g4, int i, int i2) {
        if (g4 == null) {
            return;
        }
        if (g4.A08() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(g4.A08()), i, i2, 33);
        }
        if (g4.A0O()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (g4.A0P()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (g4.A0N()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(g4.A06()), i, i2, 33);
        }
        if (g4.A0M()) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(g4.A05()), i, i2, 33);
        }
        String strA0H = g4.A0H();
        if (A02[6].charAt(12) == 'U') {
            throw new RuntimeException();
        }
        A02[6] = "tzfwj6Yb5L7snAfsv0bj9UNvpNFUfxvv";
        if (strA0H != null) {
            spannableStringBuilder.setSpan(new TypefaceSpan(g4.A0H()), i, i2, 33);
        }
        if (g4.A0A() != null) {
            spannableStringBuilder.setSpan(new AlignmentSpan.Standard(g4.A0A()), i, i2, 33);
        }
        switch (g4.A07()) {
            case 1:
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) g4.A04(), true), i, i2, 33);
                return;
            case 2:
                spannableStringBuilder.setSpan(new RelativeSizeSpan(g4.A04()), i, i2, 33);
                return;
            case 3:
                spannableStringBuilder.setSpan(new RelativeSizeSpan(g4.A04() / 100.0f), i, i2, 33);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A07(java.lang.String r4, android.text.SpannableStringBuilder r5) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.G9.A07(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    public static void A08(String str, G6 g6) {
        String strA03 = A03(141, 15, 15);
        Matcher matcher = A04.matcher(str);
        while (true) {
            boolean zFind = matcher.find();
            if (A02[7].length() != 5) {
                throw new RuntimeException();
            }
            A02[7] = "ISZNO";
            if (!zFind) {
                return;
            }
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            try {
                if (A03(248, 4, 83).equals(strGroup)) {
                    A09(strGroup2, g6);
                } else if (A03(187, 5, 70).equals(strGroup)) {
                    g6.A0B(A02(strGroup2));
                } else if (A03(264, 8, 114).equals(strGroup)) {
                    A0A(strGroup2, g6);
                } else if (A03(277, 4, 4).equals(strGroup)) {
                    g6.A05(GA.A00(strGroup2));
                } else {
                    Log.w(strA03, A03(121, 20, 23) + strGroup + A03(15, 1, 19) + strGroup2);
                }
            } catch (NumberFormatException unused) {
                Log.w(strA03, A03(65, 26, 79) + matcher.group());
            }
        }
    }

    public static void A09(String str, G6 g6) throws NumberFormatException {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            g6.A06(A00(str.substring(iIndexOf + 1)));
            str = str.substring(0, iIndexOf);
        } else {
            g6.A06(Integer.MIN_VALUE);
        }
        if (str.endsWith(A03(2, 1, 47))) {
            g6.A03(GA.A00(str)).A07(0);
            return;
        }
        int i = Integer.parseInt(str);
        if (i < 0) {
            i--;
        }
        g6.A03(i).A07(1);
    }

    public static void A0A(String str, G6 g6) throws NumberFormatException {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            g6.A08(A00(str.substring(iIndexOf + 1)));
            str = str.substring(0, iIndexOf);
        } else {
            g6.A08(Integer.MIN_VALUE);
        }
        g6.A04(GA.A00(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0B(java.lang.String r9, com.facebook.ads.redexgen.X.G7 r10, android.text.SpannableStringBuilder r11, java.util.List<com.facebook.ads.redexgen.X.G4> r12, java.util.List<com.facebook.ads.redexgen.X.G8> r13) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.G9.A0B(java.lang.String, com.facebook.ads.redexgen.X.G7, android.text.SpannableStringBuilder, java.util.List, java.util.List):void");
    }

    public static void A0C(String str, String str2, G6 g6, List<G4> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int iA01 = 0;
        while (iA01 < str2.length()) {
            char cCharAt = str2.charAt(iA01);
            switch (cCharAt) {
                case '&':
                    int iIndexOf = str2.indexOf(59, iA01 + 1);
                    int iIndexOf2 = str2.indexOf(32, iA01 + 1);
                    if (iIndexOf == -1) {
                        iIndexOf = iIndexOf2;
                    } else if (iIndexOf2 != -1) {
                        iIndexOf = Math.min(iIndexOf, iIndexOf2);
                    }
                    if (iIndexOf == -1) {
                        spannableStringBuilder.append(cCharAt);
                        iA01++;
                    } else {
                        A07(str2.substring(iA01 + 1, iIndexOf), spannableStringBuilder);
                        if (iIndexOf == iIndexOf2) {
                            spannableStringBuilder.append((CharSequence) A03(1, 1, 17));
                        }
                        iA01 = iIndexOf + 1;
                    }
                    break;
                case '<':
                    if (iA01 + 1 < str2.length()) {
                        int i = iA01;
                        boolean z = str2.charAt(i + 1) == '/';
                        iA01 = A01(str2, i + 1);
                        boolean z2 = str2.charAt(iA01 + (-2)) == '/';
                        String strSubstring = str2.substring((z ? 2 : 1) + i, z2 ? iA01 - 2 : iA01 - 1);
                        String strA04 = A04(strSubstring);
                        if (strA04 != null && A0E(strA04)) {
                            if (z) {
                                while (!arrayDeque.isEmpty()) {
                                    G7 g7 = (G7) arrayDeque.pop();
                                    A0B(str, g7, spannableStringBuilder, list, arrayList);
                                    if (g7.A01.equals(strA04)) {
                                    }
                                    break;
                                }
                            } else if (!z2) {
                                arrayDeque.push(G7.A01(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    } else {
                        iA01++;
                    }
                    break;
                default:
                    spannableStringBuilder.append(cCharAt);
                    if (A02[6].charAt(12) == 'U') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A02;
                    strArr[0] = "1EgemSjEd6OX6IjZrpNfGkrOscE7SpVJ";
                    strArr[5] = "BPkE8PNmcvUgQGAm1QCgLjutlWPlJ3J2";
                    iA01++;
                    break;
                    break;
            }
        }
        while (!arrayDeque.isEmpty()) {
            A0B(str, (G7) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        A0B(str, G7.A00(), spannableStringBuilder, list, arrayList);
        g6.A0C(spannableStringBuilder);
    }

    public static void A0D(List<G4> list, String str, G7 g7, List<G8> list2) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            G4 g4 = list.get(i);
            String str2 = g7.A01;
            String[] strArr = g7.A03;
            String str3 = g7.A02;
            if (A02[3].length() == 7) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[0] = "AMyBO4NnCnMpgJ1A04yWFmVBrU3uxkkG";
            strArr2[5] = "4pWDMPx0mcGHcptb8cUlFxOOK6mkNbT4";
            int iA09 = g4.A09(str, str2, strArr, str3);
            if (iA09 > 0) {
                list2.add(new G8(iA09, g4));
            }
        }
        Collections.sort(list2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0E(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r4 = 0
            r3 = 1
            switch(r0) {
                case 98: goto Le;
                case 99: goto L1f;
                case 105: goto L30;
                case 117: goto L41;
                case 118: goto L52;
                case 3314158: goto L63;
                default: goto L9;
            }
        L9:
            r0 = -1
        La:
            switch(r0) {
                case 0: goto L74;
                case 1: goto L74;
                case 2: goto L74;
                case 3: goto L74;
                case 4: goto L74;
                case 5: goto L74;
                default: goto Ld;
            }
        Ld:
            return r4
        Le:
            r2 = 195(0xc3, float:2.73E-43)
            r1 = 1
            r0 = 66
            java.lang.String r0 = A03(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L9
            r0 = 0
            goto La
        L1f:
            r2 = 196(0xc4, float:2.75E-43)
            r1 = 1
            r0 = 10
            java.lang.String r0 = A03(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L9
            r0 = 1
            goto La
        L30:
            r2 = 208(0xd0, float:2.91E-43)
            r1 = 1
            r0 = 102(0x66, float:1.43E-43)
            java.lang.String r0 = A03(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L9
            r0 = 2
            goto La
        L41:
            r2 = 286(0x11e, float:4.01E-43)
            r1 = 1
            r0 = 87
            java.lang.String r0 = A03(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L9
            r0 = 4
            goto La
        L52:
            r2 = 287(0x11f, float:4.02E-43)
            r1 = 1
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r0 = A03(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L9
            r0 = 5
            goto La
        L63:
            r2 = 240(0xf0, float:3.36E-43)
            r1 = 4
            r0 = 20
            java.lang.String r0 = A03(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L9
            r0 = 3
            goto La
        L74:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.G9.A0E(java.lang.String):boolean");
    }

    public static boolean A0F(String str, Matcher matcher, C1062Hh c1062Hh, G6 g6, StringBuilder sb, List<G4> list) {
        try {
            g6.A0A(GA.A01(matcher.group(1))).A09(GA.A01(matcher.group(2)));
            A08(matcher.group(3), g6);
            sb.setLength(0);
            while (true) {
                String strA0P = c1062Hh.A0P();
                if (TextUtils.isEmpty(strA0P)) {
                    A0C(str, sb.toString(), g6, list);
                    return true;
                }
                if (sb.length() > 0) {
                    sb.append(A03(0, 1, 96));
                }
                sb.append(strA0P.trim());
            }
        } catch (NumberFormatException unused) {
            Log.w(A03(141, 15, 15), A03(91, 30, 119) + matcher.group());
            return false;
        }
    }

    public final boolean A0G(C1062Hh c1062Hh, G6 g6, List<G4> list) {
        String strA0P = c1062Hh.A0P();
        if (strA0P == null) {
            return false;
        }
        Pattern pattern = A03;
        Matcher matcher = pattern.matcher(strA0P);
        if (matcher.matches()) {
            return A0F(null, matcher, c1062Hh, g6, this.A00, list);
        }
        String strA0P2 = c1062Hh.A0P();
        if (strA0P2 == null) {
            return false;
        }
        Matcher matcher2 = pattern.matcher(strA0P2);
        if (matcher2.matches()) {
            return A0F(strA0P.trim(), matcher2, c1062Hh, g6, this.A00, list);
        }
        return false;
    }
}
