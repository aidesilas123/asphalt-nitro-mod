package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.Nullable;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ru, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1330Ru {
    public static byte[] A03;
    public static String[] A04 = {"VT4fMDut957REDv81Zf67ZRXVgx5T5a8", "r", "Z8Owoyb", "FnQ4OiwpcdZoDsiJ2m5WJ2Um26YCJsc9", "WRxJAxd2kL6ougEGyIG1Du6QramXeho", "YseYEaNGGUDDQ4eQqZOUPTvdjgKCIPcf", "c4hktFWkJWdy9he8EQ0DeAgF43U5wP0s", "DRA64HFd"};
    public BlockingDeque<C1331Rv> A00;
    public final int A01;

    @Nullable
    public final String A02;

    static {
        A08();
    }

    public C1330Ru(@Nullable String str) {
        this(str, 2000);
    }

    public C1330Ru(@Nullable String str, int i) {
        this.A02 = str;
        this.A01 = i;
        this.A00 = new LinkedBlockingDeque();
    }

    public static long A00(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static long A01(List<C1331Rv> list, int i, int i2) {
        HashMap map = new HashMap();
        for (int i3 = i + 1; i3 < i + i2; i3++) {
            long jA03 = list.get(i3).A03();
            long jA01 = list.get(i3).A01();
            if (map.containsKey(Long.valueOf(jA03))) {
                map.put(Long.valueOf(jA03), Integer.valueOf(((Integer) map.get(Long.valueOf(jA03))).intValue() + 1));
            } else {
                map.put(Long.valueOf(jA03), 1);
            }
            if (map.containsKey(Long.valueOf(jA01))) {
                map.put(Long.valueOf(jA01), Integer.valueOf(((Integer) map.get(Long.valueOf(jA01))).intValue() + 1));
            } else {
                Long lValueOf = Long.valueOf(jA01);
                if (A04[2].length() == 25) {
                    throw new RuntimeException();
                }
                String[] strArr = A04;
                strArr[6] = "1vNPfVBSY4dOMHCgW1yzfdLMrSn5bdwR";
                strArr[0] = "JWbjY4s0cXOj2VlFs0Pom5JqAlb5V7T0";
                map.put(lValueOf, 1);
            }
        }
        long jLongValue = 3333;
        int i4 = 0;
        for (Map.Entry entry : map.entrySet()) {
            int iIntValue = ((Integer) entry.getValue()).intValue();
            if (i4 < iIntValue) {
                i4 = iIntValue;
                jLongValue = ((Long) entry.getKey()).longValue();
            }
        }
        for (int i5 = i + 1; i5 < i + i2; i5++) {
            list.get(i5).A09(list.get(i5).A03() - jLongValue);
            list.get(i5).A07(list.get(i5).A01() - jLongValue);
            if (A04[7].length() == 7) {
                throw new RuntimeException();
            }
            A04[4] = "Qmxl";
        }
        return jLongValue;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A03(String str) {
        String strA02 = A02(0, 64, 117);
        StringBuilder sb = new StringBuilder(str);
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int length = sb.length() % 3;
        if (length > 0) {
            while (length < 3) {
                String[] strArr = A04;
                if (strArr[6].charAt(27) != strArr[0].charAt(27)) {
                    throw new RuntimeException();
                }
                A04[2] = "LfiGB0y4";
                sb3.append(com.json.b4.R);
                sb.append((char) 0);
                length++;
            }
        }
        for (int i = 0; i < sb.length(); i += 3) {
            int iCharAt = (sb.charAt(i) << 16) + (sb.charAt(i + 1) << '\b') + sb.charAt(i + 2);
            sb2.append(strA02.charAt((iCharAt >> 18) & 63)).append(strA02.charAt((iCharAt >> 12) & 63)).append(strA02.charAt((iCharAt >> 6) & 63)).append(strA02.charAt(iCharAt & 63));
        }
        return sb2.substring(0, sb2.length() - sb3.length()) + ((Object) sb3);
    }

    @Nullable
    public static String A04(@Nullable List<C1331Rv> list) {
        if (list == null) {
            return null;
        }
        return A06(list, 0, list.size(), false);
    }

    public static String A05(List<Long> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            A09(sb, A00(it.next().longValue()));
        }
        return A03(sb.toString());
    }

    @Nullable
    public static String A06(@Nullable List<C1331Rv> list, int i, int i2, boolean z) {
        if (list == null || list.isEmpty() || i < 0 || i >= list.size() || i2 <= 0 || i + i2 > list.size()) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(A02(73, 2, 35), list.get(i).A05());
        map.put(A02(115, 7, 118), 1);
        boolean z2 = false;
        boolean z3 = false;
        if (i2 > 1) {
            A0A(list, i, i2);
            map.put(A02(64, 9, 58), Long.valueOf(A01(list, i, i2)));
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (int i3 = i + 1; i3 < i + i2; i3++) {
                arrayList.add(Long.valueOf(list.get(i3).A03()));
                arrayList.add(Long.valueOf(list.get(i3).A01()));
                arrayList.add(Long.valueOf(list.get(i3).A02()));
                arrayList2.add(Long.valueOf(list.get(i3).A00()));
                if (list.get(i3).A00() != 0) {
                    z2 = true;
                }
                if (z) {
                    arrayList3.add(Long.valueOf(list.get(i3).A04()));
                    if (list.get(i3).A04() != 0) {
                        z3 = true;
                    }
                }
            }
            map.put(A02(92, 2, 29), A05(arrayList));
            map.put(A02(75, 6, 36), A05(arrayList2));
            map.put(A02(94, 9, 20), Boolean.valueOf(z2));
            if (z) {
                map.put(A02(81, 11, 55), A05(arrayList3));
                map.put(A02(103, 12, 126), Boolean.valueOf(z3));
            }
        }
        String strA07 = A07(map);
        if (A04[1].length() == 28) {
            throw new RuntimeException();
        }
        A04[2] = "";
        return strA07.length() > 900000 ? A02(122, 29, 5) : strA07;
    }

    public static String A07(Map<String, Object> map) {
        return new JSONObject(map).toString();
    }

    public static void A08() {
        A03 = new byte[]{92, 95, 94, 89, 88, 91, 90, 85, 84, 87, 86, 81, 80, 83, 82, 77, 76, 79, 78, 73, 72, 75, 74, 69, 68, 71, 124, Ascii.DEL, 126, 121, 120, 123, 122, 117, 116, 119, 118, 113, 112, 115, 114, 109, 108, 111, 110, 105, 104, 107, 106, 101, 100, 103, 45, 44, 47, 46, 41, 40, 43, 42, 37, 36, 54, 50, 48, 51, 33, 55, Ascii.SYN, 55, 62, 38, 51, 45, 123, 42, Ascii.CR, 57, 40, 37, 35, 57, 9, 54, 58, 40, 62, 61, 51, 58, 106, 111, 19, Ascii.ESC, Ascii.NAK, Ascii.SI, 47, 19, 9, Ascii.DC2, Ascii.CAN, 51, Ascii.DC2, Ascii.DEL, 101, 64, Ascii.DEL, 115, 97, 119, 116, 122, 115, 35, 38, 104, 123, 108, 109, 119, 113, 112, Ascii.SYN, 79, 8, Ascii.US, Ascii.US, 79, 87, 79, 62, 36, 55, 40, 50, 40, 53, 46, 40, 40, 41, 50, 32, 44, 53, 50, 46, 44, 61, 79, Ascii.DLE};
    }

    public static void A09(StringBuilder sb, long j) {
        while (j >= 128) {
            char c = (char) ((((long) (128 - 1)) & j) | ((long) 128));
            j >>= 7;
            sb.append(c);
        }
        char c2 = (char) j;
        String[] strArr = A04;
        if (strArr[6].charAt(27) != strArr[0].charAt(27)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[6] = "TgLp8xzira9J3G7G7T0jqPUigov5tglm";
        strArr2[0] = "pcTwByMvDCDs4QWUJjAKPoIFXFV5AKB6";
        sb.append(c2);
    }

    public static void A0A(List<C1331Rv> list, int i, int i2) {
        for (int i3 = (i + i2) - 1; i3 > i; i3--) {
            list.get(i3).A09(list.get(i3).A03() - list.get(i3 - 1).A03());
            list.get(i3).A07(list.get(i3).A01() - list.get(i3 - 1).A01());
            list.get(i3).A08(list.get(i3).A02() - list.get(i3 - 1).A02());
            long jA04 = 0;
            list.get(i3).A06(list.get(i3 + (-1)).A00() == -1 ? 0L : list.get(i3).A00() - list.get(i3 - 1).A00());
            C1331Rv c1331Rv = list.get(i3);
            if (list.get(i3 - 1).A04() != -1) {
                jA04 = list.get(i3).A04() - list.get(i3 - 1).A04();
            }
            c1331Rv.A0A(jA04);
            list.get(i3).A08(list.get(i3).A02() - list.get(i3).A01());
        }
    }

    public final List<C1331Rv> A0B() {
        ArrayList arrayList = new ArrayList();
        this.A00.drainTo(arrayList);
        return arrayList;
    }

    public final void A0C(C1331Rv c1331Rv) {
        C1331Rv c1331RvPeekLast = this.A00.peekLast();
        if (c1331RvPeekLast != null) {
            long jA03 = c1331RvPeekLast.A03();
            if (A04[7].length() == 7) {
                throw new RuntimeException();
            }
            A04[1] = "fQhMIvl";
            if (jA03 == c1331Rv.A03() && c1331RvPeekLast.A01() == c1331Rv.A01()) {
                return;
            }
        }
        this.A00.add(c1331Rv);
    }
}
