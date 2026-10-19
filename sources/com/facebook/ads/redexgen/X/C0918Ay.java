package com.facebook.ads.redexgen.X;

import android.graphics.Point;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroup;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import com.facebook.ads.internal.exoplayer2.thirdparty.trackselection.DefaultTrackSelector$Parameters;
import com.facebook.ads.internal.exoplayer2.thirdparty.trackselection.DefaultTrackSelector$SelectionOverride;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ay, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0918Ay extends VN {
    public static byte[] A02;
    public static String[] A03 = {"x6AsNgj7kZHrnoNYywGy3amTsD0l", "S34B6ywREx44pNmlWPMRcx17PIA7Fyf2", "1XorlyLpztZAXiZGzmiFCBwFfMWU", "T5Z409y2ECpb8uf8T6KWShvwgb", "8Qiq8HU85lCoFhvN1dBY3zigvCratExc", "EyxqnSMNDXwhS4zpORn6ov", "S8xh7faol6xkg145s9aDIWkyvYFJ4njt", "Q6jD8cwEOZ"};
    public static final int[] A04;
    public final GN A00;
    public final AtomicReference<DefaultTrackSelector$Parameters> A01;

    static {
        A0E();
        A04 = new int[0];
    }

    public C0918Ay() {
        this(null);
    }

    public C0918Ay(GN gn) {
        this.A00 = gn;
        this.A01 = new AtomicReference<>(DefaultTrackSelector$Parameters.A0J);
    }

    public static int A00(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        }
        if (i2 == -1) {
            return 1;
        }
        return i - i2;
    }

    public static int A01(int i, int i2) {
        if (i > i2) {
            return 1;
        }
        return i2 > i ? -1 : 0;
    }

    public static int A03(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, List<Integer> list) {
        int i5 = 0;
        for (int i6 = 0; i6 < list.size(); i6++) {
            int iIntValue = list.get(i6).intValue();
            if (A0L(trackGroup.A01(iIntValue), str, iArr[iIntValue], i, i2, i3, i4)) {
                i5++;
            }
        }
        return i5;
    }

    public static int A04(TrackGroup trackGroup, int[] iArr, GE ge) {
        int i = 0;
        for (int i2 = 0; i2 < trackGroup.A01; i2++) {
            if (A0J(trackGroup.A01(i2), iArr[i2], ge)) {
                i++;
            }
        }
        return i;
    }

    public static Point A05(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            if ((i3 > i4) != (i > i2)) {
                i = i2;
                i2 = i;
            }
        }
        return i3 * i2 >= i4 * i ? new Point(i, C1078Hx.A04(i * i4, i3)) : new Point(C1078Hx.A04(i2 * i3, i4), i2);
    }

    private final C0917Ax A06(int i, TrackGroupArray trackGroupArray, int[][] iArr, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters) throws C9K {
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroupArray.A01; i4++) {
            TrackGroup trackGroupA01 = trackGroupArray.A01(i4);
            if (A03[1].charAt(28) != 'F') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[2] = "1NYDqnXuXqFwXvhmhx1oqfe5tY82";
            strArr[5] = "WKIyqdfHfHQHhajlNNxex4";
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < trackGroupA01.A01; i5++) {
                if (A0H(iArr2[i5], defaultTrackSelector$Parameters.A0B)) {
                    int i6 = (trackGroupA01.A01(i5).A0D & 1) != 0 ? 2 : 1;
                    if (A0H(iArr2[i5], false)) {
                        i6 += 1000;
                    }
                    if (i6 > i3) {
                        trackGroup = trackGroupA01;
                        i2 = i5;
                        i3 = i6;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new C0917Ax(trackGroup, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0115, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C0917Ax A07(com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray r16, int[][] r17, com.facebook.ads.internal.exoplayer2.thirdparty.trackselection.DefaultTrackSelector$Parameters r18) {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0918Ay.A07(com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray, int[][], com.facebook.ads.internal.exoplayer2.thirdparty.trackselection.DefaultTrackSelector$Parameters):com.facebook.ads.redexgen.X.Ax");
    }

    private final C0917Ax A08(TrackGroupArray trackGroupArray, int[][] iArr, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters) throws C9K {
        int i;
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroupArray.A01; i4++) {
            TrackGroup trackGroupA01 = trackGroupArray.A01(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < trackGroupA01.A01; i5++) {
                if (A0H(iArr2[i5], defaultTrackSelector$Parameters.A0B)) {
                    Format formatA01 = trackGroupA01.A01(i5);
                    int i6 = formatA01.A0D & (defaultTrackSelector$Parameters.A00 ^ (-1));
                    boolean z = (i6 & 1) != 0;
                    boolean z2 = (i6 & 2) != 0;
                    boolean zA0K = A0K(formatA01, defaultTrackSelector$Parameters.A08);
                    if (zA0K || (defaultTrackSelector$Parameters.A0E && A0I(formatA01))) {
                        i = (z ? 8 : !z2 ? 6 : 4) + (zA0K ? 1 : 0);
                    } else if (z) {
                        i = 3;
                    } else if (z2) {
                        i = A0K(formatA01, defaultTrackSelector$Parameters.A07) ? 2 : 1;
                    }
                    if (A0H(iArr2[i5], false)) {
                        i += 1000;
                    }
                    if (i > i3) {
                        trackGroup = trackGroupA01;
                        i2 = i5;
                        i3 = i;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new C0917Ax(trackGroup, i2);
    }

    public static GO A09(TrackGroupArray trackGroupArray, int[][] iArr, int i, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters, GN gn) throws C9K {
        int i2 = defaultTrackSelector$Parameters.A0A ? 24 : 16;
        boolean z = defaultTrackSelector$Parameters.A09 && (i & i2) != 0;
        for (int i3 = 0; i3 < trackGroupArray.A01; i3++) {
            TrackGroup trackGroupA01 = trackGroupArray.A01(i3);
            int[] iArrA0O = A0O(trackGroupA01, iArr[i3], z, i2, defaultTrackSelector$Parameters.A03, defaultTrackSelector$Parameters.A02, defaultTrackSelector$Parameters.A01, defaultTrackSelector$Parameters.A06, defaultTrackSelector$Parameters.A05, defaultTrackSelector$Parameters.A0F);
            if (iArrA0O.length > 0) {
                return ((GN) HI.A01(gn)).A4k(trackGroupA01, iArrA0O);
            }
        }
        return null;
    }

    private final GO A0A(TrackGroupArray trackGroupArray, int[][] iArr, int i, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters, GN gn) throws C9K {
        int i2 = -1;
        int i3 = -1;
        GF gf = null;
        for (int i4 = 0; i4 < trackGroupArray.A01; i4++) {
            TrackGroup trackGroupA01 = trackGroupArray.A01(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < trackGroupA01.A01; i5++) {
                if (A0H(iArr2[i5], defaultTrackSelector$Parameters.A0B)) {
                    GF gf2 = new GF(trackGroupA01.A01(i5), defaultTrackSelector$Parameters, iArr2[i5]);
                    if (gf == null || gf2.A00(gf) > 0) {
                        i3 = i4;
                        i2 = i5;
                        gf = gf2;
                    }
                }
            }
        }
        if (i3 == -1) {
            return null;
        }
        TrackGroup trackGroupA012 = trackGroupArray.A01(i3);
        if (!defaultTrackSelector$Parameters.A0D && gn != null) {
            int[] iArrA0N = A0N(trackGroupA012, iArr[i3], defaultTrackSelector$Parameters.A09);
            if (iArrA0N.length > 0) {
                return gn.A4k(trackGroupA012, iArrA0N);
            }
        }
        return new C0917Ax(trackGroupA012, i2);
    }

    private final GO A0B(TrackGroupArray trackGroupArray, int[][] iArr, int i, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters, GN gn) throws C9K {
        GO goA09 = null;
        if (!defaultTrackSelector$Parameters.A0D && gn != null) {
            goA09 = A09(trackGroupArray, iArr, i, defaultTrackSelector$Parameters, gn);
        }
        return goA09 == null ? A07(trackGroupArray, iArr, defaultTrackSelector$Parameters) : goA09;
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static List<Integer> A0D(TrackGroup trackGroup, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(trackGroup.A01);
        for (int i3 = 0; i3 < trackGroup.A01; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        if (i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE) {
            return arrayList;
        }
        int i4 = Integer.MAX_VALUE;
        for (int i5 = 0; i5 < trackGroup.A01; i5++) {
            Format formatA01 = trackGroup.A01(i5);
            if (formatA01.A0F > 0 && formatA01.A08 > 0) {
                Point pointA05 = A05(z, i, i2, formatA01.A0F, formatA01.A08);
                int i6 = formatA01.A0F * formatA01.A08;
                if (formatA01.A0F >= ((int) (pointA05.x * 0.98f)) && formatA01.A08 >= ((int) (pointA05.y * 0.98f)) && i6 < i4) {
                    i4 = i6;
                }
            }
        }
        if (i4 != Integer.MAX_VALUE) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                int iA0E = trackGroup.A01(((Integer) arrayList.get(size)).intValue()).A0E();
                if (iA0E == -1 || iA0E > i4) {
                    arrayList.remove(size);
                }
            }
        }
        return arrayList;
    }

    public static void A0E() {
        A02 = new byte[]{96, 123, 113};
    }

    public static void A0F(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int iIntValue = list.get(size).intValue();
            if (!A0L(trackGroup.A01(iIntValue), str, iArr[iIntValue], i, i2, i3, i4)) {
                list.remove(size);
            }
        }
    }

    public static void A0G(GM gm, int[][][] iArr, C08889t[] c08889tArr, GO[] goArr, int i) {
        if (i == 0) {
            return;
        }
        int i2 = -1;
        int i3 = -1;
        boolean z = true;
        int i4 = 0;
        while (true) {
            if (i4 >= gm.A00()) {
                break;
            }
            int iA01 = gm.A01(i4);
            GO go = goArr[i4];
            if ((iA01 == 1 || iA01 == 2) && go != null && A0M(iArr[i4], gm.A02(i4), go)) {
                if (iA01 == 1) {
                    if (i2 != -1) {
                        z = false;
                        break;
                    }
                    i2 = i4;
                } else {
                    if (i3 != -1) {
                        z = false;
                        break;
                    }
                    i3 = i4;
                }
            }
            i4++;
        }
        if (z && ((i2 == -1 || i3 == -1) ? false : true)) {
            C08889t c08889t = new C08889t(i);
            c08889tArr[i2] = c08889t;
            c08889tArr[i3] = c08889t;
        }
    }

    public static boolean A0H(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    public static boolean A0I(Format format) {
        return TextUtils.isEmpty(format.A0N) || A0K(format, A0C(0, 3, 97));
    }

    public static boolean A0J(Format format, int i, GE ge) {
        if (!A0H(i, false) || format.A05 != ge.A00 || format.A0C != ge.A01) {
            return false;
        }
        String str = ge.A02;
        String[] strArr = A03;
        if (strArr[3].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        A03[4] = "Z4TnxuroRrU42RhZWOmYjmwLcPTU1MVO";
        return str == null || TextUtils.equals(ge.A02, format.A0O);
    }

    public static boolean A0K(Format format, String str) {
        if (str != null) {
            boolean zEquals = TextUtils.equals(str, C1078Hx.A0L(format.A0N));
            if (A03[1].charAt(28) != 'F') {
                throw new RuntimeException();
            }
            A03[6] = "X09dGmvImKzkjml92Go2OBGPrO7s8ElS";
            if (zEquals) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0L(Format format, String str, int i, int i2, int i3, int i4, int i5) {
        if (!A0H(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !C1078Hx.A0g(format.A0O, str)) {
            return false;
        }
        if (format.A0F != -1 && format.A0F > i3) {
            return false;
        }
        int i6 = format.A08;
        String[] strArr = A03;
        if (strArr[2].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A03[4] = "SWfcLm8XXzRqeXuobK6MjvAJ3gvDaDv7";
        if (i6 == -1 || format.A08 <= i4) {
            return format.A04 == -1 || format.A04 <= i5;
        }
        return false;
    }

    public static boolean A0M(int[][] iArr, TrackGroupArray trackGroupArray, GO go) {
        if (go == null) {
            return false;
        }
        int iA00 = trackGroupArray.A00(go.A81());
        for (int i = 0; i < go.length(); i++) {
            if ((iArr[iA00][go.A75(i)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int[] A0N(com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroup r10, int[] r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0918Ay.A0N(com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroup, int[], boolean):int[]");
    }

    public static int[] A0O(TrackGroup trackGroup, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        int iA03;
        if (trackGroup.A01 < 2) {
            return A04;
        }
        List<Integer> listA0D = A0D(trackGroup, i5, i6, z2);
        if (listA0D.size() < 2) {
            return A04;
        }
        String str = null;
        if (!z) {
            HashSet hashSet = new HashSet();
            int i7 = 0;
            for (int i8 = 0; i8 < listA0D.size(); i8++) {
                String str2 = trackGroup.A01(listA0D.get(i8).intValue()).A0O;
                if (hashSet.add(str2) && (iA03 = A03(trackGroup, iArr, i, str2, i2, i3, i4, listA0D)) > i7) {
                    str = str2;
                    i7 = iA03;
                }
            }
        }
        A0F(trackGroup, iArr, i, str, i2, i3, i4, listA0D);
        return listA0D.size() < 2 ? A04 : C1078Hx.A0j(listA0D);
    }

    private final GO[] A0P(GM gm, int[][][] iArr, int[] iArr2, DefaultTrackSelector$Parameters defaultTrackSelector$Parameters) throws C9K {
        int iA00 = gm.A00();
        GO[] goArr = new GO[iA00];
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < iA00; i++) {
            if (2 == gm.A01(i)) {
                if (!z2) {
                    goArr[i] = A0B(gm.A02(i), iArr[i], iArr2[i], defaultTrackSelector$Parameters, this.A00);
                    z2 = goArr[i] != null;
                }
                z |= gm.A02(i).A01 > 0;
            }
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i2 = 0; i2 < iA00; i2++) {
            int iA01 = gm.A01(i2);
            switch (iA01) {
                case 1:
                    if (!z3) {
                        goArr[i2] = A0A(gm.A02(i2), iArr[i2], iArr2[i2], defaultTrackSelector$Parameters, z ? null : this.A00);
                        z3 = goArr[i2] != null;
                    }
                    break;
                case 2:
                    break;
                case 3:
                    if (z4) {
                        continue;
                    } else {
                        goArr[i2] = A08(gm.A02(i2), iArr[i2], defaultTrackSelector$Parameters);
                        z4 = goArr[i2] != null;
                        if (A03[1].charAt(28) != 'F') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A03;
                        strArr[2] = "QJl7DztNVPNycYqDWlGKy9194VAG";
                        strArr[5] = "9kW2zRUIc2UhcVCPTVcu4Y";
                    }
                    break;
                default:
                    goArr[i2] = A06(iA01, gm.A02(i2), iArr[i2], defaultTrackSelector$Parameters);
                    break;
            }
        }
        return goArr;
    }

    @Override // com.facebook.ads.redexgen.X.VN
    public final Pair<C08889t[], GO[]> A0V(GM gm, int[][][] iArr, int[] iArr2) throws C9K {
        DefaultTrackSelector$Parameters defaultTrackSelector$Parameters = this.A01.get();
        int iA00 = gm.A00();
        GO[] goArrA0P = A0P(gm, iArr, iArr2, defaultTrackSelector$Parameters);
        for (int i = 0; i < iA00; i++) {
            if (defaultTrackSelector$Parameters.A06(i)) {
                goArrA0P[i] = null;
            } else {
                TrackGroupArray trackGroupArrayA02 = gm.A02(i);
                if (defaultTrackSelector$Parameters.A07(i, trackGroupArrayA02)) {
                    DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverrideA05 = defaultTrackSelector$Parameters.A05(i, trackGroupArrayA02);
                    if (defaultTrackSelector$SelectionOverrideA05 == null) {
                        goArrA0P[i] = null;
                    } else if (defaultTrackSelector$SelectionOverrideA05.A01 == 1) {
                        goArrA0P[i] = new C0917Ax(trackGroupArrayA02.A01(defaultTrackSelector$SelectionOverrideA05.A00), defaultTrackSelector$SelectionOverrideA05.A02[0]);
                    } else {
                        goArrA0P[i] = ((GN) HI.A01(this.A00)).A4k(trackGroupArrayA02.A01(defaultTrackSelector$SelectionOverrideA05.A00), defaultTrackSelector$SelectionOverrideA05.A02);
                    }
                }
            }
        }
        C08889t[] c08889tArr = new C08889t[iA00];
        for (int i2 = 0; i2 < iA00; i2++) {
            c08889tArr[i2] = !defaultTrackSelector$Parameters.A06(i2) && (gm.A01(i2) == 5 || goArrA0P[i2] != null) ? C08889t.A01 : null;
        }
        A0G(gm, iArr, c08889tArr, goArrA0P, defaultTrackSelector$Parameters.A04);
        return Pair.create(c08889tArr, goArrA0P);
    }
}
