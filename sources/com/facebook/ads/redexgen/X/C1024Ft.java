package com.facebook.ads.redexgen.X;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ft, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1024Ft {
    public static byte[] A0B;
    public static String[] A0C = {"Hmn5H7dKMosREh7xDGtPQt", "MVFk1kMfS5SlcrGDFoR78llsa87kBULK", "h0eABJsxuPyKyti7S1", "4r", "Rhyi3ngCGHQeUf1AOTuidE5Gtet8RupN", "ehbUKYCtrZOQmz5rtd9aLf3tehAVerO2", "Bs", "nZrAaS4dU3xOh9dXHIvavDKiiL"};
    public List<C1024Ft> A00;
    public final long A01;
    public final long A02;
    public final C1030Fz A03;
    public final String A04;
    public final String A05;
    public final String A06;
    public final boolean A07;
    public final HashMap<String, Integer> A08;
    public final HashMap<String, Integer> A09;
    public final String[] A0A;

    static {
        A07();
    }

    public C1024Ft(String str, String str2, long j, long j2, C1030Fz c1030Fz, String[] strArr, String str3) {
        this.A05 = str;
        this.A06 = str2;
        this.A03 = c1030Fz;
        this.A0A = strArr;
        this.A07 = str2 != null;
        this.A02 = j;
        this.A01 = j2;
        this.A04 = (String) HI.A01(str3);
        this.A09 = new HashMap<>();
        this.A08 = new HashMap<>();
    }

    private final int A00() {
        List<C1024Ft> list = this.A00;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    private SpannableStringBuilder A01(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length();
        for (int i = 0; i < length; i++) {
            if (spannableStringBuilder.charAt(i) == ' ') {
                int i2 = i + 1;
                while (i2 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i2) == ' ') {
                    i2++;
                }
                int i3 = i2 - (i + 1);
                if (i3 > 0) {
                    spannableStringBuilder.delete(i, i + i3);
                    length -= i3;
                }
            }
        }
        if (length > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
            length--;
        }
        for (int i4 = 0; i4 < length - 1; i4++) {
            if (spannableStringBuilder.charAt(i4) == '\n' && spannableStringBuilder.charAt(i4 + 1) == ' ') {
                spannableStringBuilder.delete(i4 + 1, i4 + 2);
                length--;
            }
        }
        if (length > 0 && spannableStringBuilder.charAt(length - 1) == ' ') {
            spannableStringBuilder.delete(length - 1, length);
            length--;
        }
        for (int i5 = 0; i5 < length - 1; i5++) {
            if (spannableStringBuilder.charAt(i5) == ' ') {
                int i6 = i5 + 1;
                String[] strArr = A0C;
                if (strArr[3].length() != strArr[6].length()) {
                    throw new RuntimeException();
                }
                A0C[2] = "m4xyST6fTPwcFIAJdQ5";
                if (spannableStringBuilder.charAt(i6) == '\n') {
                    spannableStringBuilder.delete(i5, i5 + 1);
                    length--;
                }
            }
        }
        if (length > 0 && spannableStringBuilder.charAt(length - 1) == '\n') {
            spannableStringBuilder.delete(length - 1, length);
        }
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder A02(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    private final C1024Ft A03(int i) {
        List<C1024Ft> list = this.A00;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public static C1024Ft A04(String str) {
        return new C1024Ft(null, C1026Fv.A02(str), C.TIME_UNSET, C.TIME_UNSET, null, null, A06(0, 0, 53));
    }

    public static C1024Ft A05(String str, long j, long j2, C1030Fz c1030Fz, String[] strArr, String str2) {
        return new C1024Ft(str, null, j, j2, c1030Fz, strArr, str2);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A0B = new byte[]{52, 36, 48, 56, 41, 60, 57, 60, 41, 60, 93};
    }

    private void A08(long j, Map<String, C1030Fz> map, Map<String, SpannableStringBuilder> map2) {
        if (A0C(j)) {
            for (Map.Entry<String, Integer> entry : this.A08.entrySet()) {
                String key = entry.getKey();
                int iIntValue = this.A09.containsKey(key) ? this.A09.get(key).intValue() : 0;
                int iIntValue2 = entry.getValue().intValue();
                if (iIntValue != iIntValue2) {
                    A0A(map, map2.get(key), iIntValue, iIntValue2);
                }
            }
            for (int i = 0; i < A00(); i++) {
                A03(i).A08(j, map, map2);
            }
        }
    }

    private void A09(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        String str2 = str;
        this.A09.clear();
        this.A08.clear();
        if (A06(2, 8, 108).equals(this.A05)) {
            return;
        }
        if (!A06(0, 0, 53).equals(this.A04)) {
            str2 = this.A04;
        }
        if (this.A07 && z) {
            A02(str2, map).append((CharSequence) this.A06);
            return;
        }
        if (A06(0, 2, 103).equals(this.A05) && z) {
            A02(str2, map).append('\n');
            return;
        }
        if (A0C(j)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.A09.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            boolean zEquals = A06(10, 1, 28).equals(this.A05);
            for (int i = 0; i < A00(); i++) {
                A03(i).A09(j, z || zEquals, str2, map);
            }
            if (zEquals) {
                C1026Fv.A04(A02(str2, map));
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.A08.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }

    private void A0A(Map<String, C1030Fz> map, SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        C1030Fz c1030FzA00 = C1026Fv.A00(this.A03, this.A0A, map);
        if (c1030FzA00 != null) {
            C1026Fv.A05(spannableStringBuilder, i, i2, c1030FzA00);
        }
    }

    private void A0B(TreeSet<Long> treeSet, boolean z) {
        boolean zEquals = A06(10, 1, 28).equals(this.A05);
        if (z || zEquals) {
            long j = this.A02;
            if (j != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.A01;
            if (j2 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.A00 == null) {
            return;
        }
        int i = 0;
        while (true) {
            List<C1024Ft> list = this.A00;
            if (A0C[7].length() != 26) {
                throw new RuntimeException();
            }
            A0C[5] = "6yeVGp3kLPk4WI3MPF9gLyaIhJRFIlFb";
            if (i >= list.size()) {
                return;
            }
            this.A00.get(i).A0B(treeSet, z || zEquals);
            i++;
        }
    }

    private final boolean A0C(long j) {
        long j2 = this.A02;
        return (j2 == C.TIME_UNSET && this.A01 == C.TIME_UNSET) || (j2 <= j && this.A01 == C.TIME_UNSET) || ((j2 == C.TIME_UNSET && j < this.A01) || (j2 <= j && j < this.A01));
    }

    public final List<FV> A0D(long j, Map<String, C1030Fz> map, Map<String, C1025Fu> map2) {
        TreeMap treeMap = new TreeMap();
        A09(j, false, this.A04, treeMap);
        A08(j, map, treeMap);
        ArrayList arrayList = new ArrayList();
        Iterator it = treeMap.entrySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0C[5].charAt(20) != 'L') {
                throw new RuntimeException();
            }
            A0C[0] = "Y7XV0FXPovcWGO3cFNRk8a";
            if (!zHasNext) {
                return arrayList;
            }
            Map.Entry entry = (Map.Entry) it.next();
            C1025Fu c1025Fu = map2.get(entry.getKey());
            arrayList.add(new FV(A01((SpannableStringBuilder) entry.getValue()), (Layout.Alignment) null, c1025Fu.A00, c1025Fu.A05, c1025Fu.A04, c1025Fu.A01, Integer.MIN_VALUE, c1025Fu.A03, c1025Fu.A06, c1025Fu.A02));
        }
    }

    public final void A0E(C1024Ft c1024Ft) {
        if (this.A00 == null) {
            this.A00 = new ArrayList();
        }
        this.A00.add(c1024Ft);
    }

    public final long[] A0F() {
        TreeSet<Long> treeSet = new TreeSet<>();
        A0B(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        int i = 0;
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }
}
