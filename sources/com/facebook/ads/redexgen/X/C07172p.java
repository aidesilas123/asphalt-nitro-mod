package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2p, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C07172p<K, V> {
    public static int A03;
    public static int A04;
    public static Object[] A05;
    public static Object[] A06;
    public static byte[] A07;
    public static String[] A08 = {"BrVHgBkmBksyBnnjIq0pHnqXAu9AUg3j", "iIth6RrlZFIJsCIcgsKekGbs32ChyRjv", "Uwdt1z4SmD1Mf7UvGeSYdNXOfhFYTYnY", "QITUqyWPG2VnlGrB2a6hYhF3R3KaavLD", "arDW8RiIBmWFNCZvgTvY8WvuJ76u3VTs", "pOGA2rk9V0ZEl", "438Cia9wbNYnLnXWpHR8BTCUnyjltaF2", "slnYcYZFDBEgJMtczrpzy3D6NQdPiCOq"};
    public int[] A01 = C07072f.A00;
    public Object[] A02 = C07072f.A02;
    public int A00 = 0;

    static {
        A04();
    }

    private final int A00() {
        int i = this.A00;
        if (i == 0) {
            return -1;
        }
        int iA02 = A02(this.A01, i, 0);
        if (iA02 < 0 || this.A02[iA02 << 1] == null) {
            return iA02;
        }
        int i2 = iA02 + 1;
        while (i2 < i && this.A01[i2] == 0) {
            Object[] objArr = this.A02;
            String[] strArr = A08;
            if (strArr[2].charAt(15) != strArr[4].charAt(15)) {
                throw new RuntimeException();
            }
            A08[5] = "5BliZlAS3QBBz9o";
            if (objArr[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iA02 - 1; i3 >= 0 && this.A01[i3] == 0; i3--) {
            if (this.A02[i3 << 1] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    private final int A01(Object obj, int i) {
        int i2 = this.A00;
        if (i2 == 0) {
            if (A08[7].charAt(6) != 'Z') {
                throw new RuntimeException();
            }
            A08[7] = "y399iLZYsEEz0hzdxnUhzykHYZJwaaUE";
            return -1;
        }
        int iA02 = A02(this.A01, i2, i);
        if (iA02 < 0 || obj.equals(this.A02[iA02 << 1])) {
            return iA02;
        }
        int i3 = iA02 + 1;
        while (i3 < i2 && this.A01[i3] == i) {
            if (obj.equals(this.A02[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA02 - 1; i4 >= 0 && this.A01[i4] == i; i4--) {
            if (obj.equals(this.A02[i4 << 1])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    public static int A02(int[] iArr, int i, int i2) {
        try {
            return C07072f.A02(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 105);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        if (A08[5].length() == 11) {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[0] = "Xtbm9MFCOkvOfDux5Me3XhO5K6Bs7EUd";
        strArr[1] = "PZcI0QBOeZ0LYFf6gJzuFWLZdUoY6utj";
        A07 = new byte[]{-69, 7, -5, -4, 6, -77, -32, -12, 3, -68, -62, -74, 3, 5};
    }

    private void A05(int i) {
        if (i == 8) {
            synchronized (ZV.class) {
                Object[] objArr = A06;
                if (objArr != null) {
                    this.A02 = objArr;
                    A06 = (Object[]) objArr[0];
                    this.A01 = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    A04--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (ZV.class) {
                Object[] objArr2 = A05;
                if (objArr2 != null) {
                    this.A02 = objArr2;
                    A05 = (Object[]) objArr2[0];
                    this.A01 = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    A03--;
                    return;
                }
            }
        }
        this.A01 = new int[i];
        this.A02 = new Object[i << 1];
    }

    public static void A06(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ZV.class) {
                if (A04 < 10) {
                    objArr[0] = A06;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    A06 = objArr;
                    A04++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (ZV.class) {
                if (A03 < 10) {
                    objArr[0] = A05;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    A05 = objArr;
                    A03++;
                }
            }
        }
    }

    public final int A07(Object obj) {
        int i = this.A00 * 2;
        Object[] objArr = this.A02;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final int A08(Object obj) {
        return obj == null ? A00() : A01(obj, obj.hashCode());
    }

    public final K A09(int i) {
        return (K) this.A02[i << 1];
    }

    public final V A0A(int i) {
        int i2;
        Object[] objArr = this.A02;
        V v = (V) objArr[(i << 1) + 1];
        int i3 = this.A00;
        if (i3 <= 1) {
            A06(this.A01, objArr, i3);
            this.A01 = C07072f.A00;
            this.A02 = C07072f.A02;
            i2 = 0;
        } else {
            i2 = i3 - 1;
            int[] iArr = this.A01;
            if (iArr.length <= 8 || this.A00 >= iArr.length / 3) {
                if (i < i2) {
                    System.arraycopy(iArr, i + 1, iArr, i, i2 - i);
                    Object[] objArr2 = this.A02;
                    System.arraycopy(objArr2, (i + 1) << 1, objArr2, i << 1, (i2 - i) << 1);
                }
                Object[] objArr3 = this.A02;
                objArr3[i2 << 1] = null;
                objArr3[(i2 << 1) + 1] = null;
            } else {
                int i4 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr2 = this.A01;
                Object[] objArr4 = this.A02;
                A05(i4);
                if (i3 != this.A00) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr2, 0, this.A01, 0, i);
                    System.arraycopy(objArr4, 0, this.A02, 0, i << 1);
                }
                if (i < i2) {
                    System.arraycopy(iArr2, i + 1, this.A01, i, i2 - i);
                    System.arraycopy(objArr4, (i + 1) << 1, this.A02, i << 1, (i2 - i) << 1);
                }
            }
        }
        int i5 = this.A00;
        String[] strArr = A08;
        if (strArr[0].charAt(11) == strArr[1].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[0] = "xFHRCOjHDqSI1UlNRZSx5FadcPcGQITj";
        strArr2[1] = "4ZMke5GLOi53P3lo3UgzHK3l5Qzb3367";
        if (i3 != i5) {
            throw new ConcurrentModificationException();
        }
        this.A00 = i2;
        return v;
    }

    public final V A0B(int i) {
        return (V) this.A02[(i << 1) + 1];
    }

    public final V A0C(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.A02;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    public final void A0D(int i) {
        int i2 = this.A00;
        if (this.A01.length < i) {
            int[] iArr = this.A01;
            Object[] objArr = this.A02;
            A05(i);
            if (this.A00 > 0) {
                System.arraycopy(iArr, 0, this.A01, 0, i2);
                System.arraycopy(objArr, 0, this.A02, 0, i2 << 1);
            }
            A06(iArr, objArr, i2);
        }
        if (this.A00 != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public final void clear() {
        if (this.A00 > 0) {
            int[] iArr = this.A01;
            Object[] objArr = this.A02;
            int i = this.A00;
            this.A01 = C07072f.A00;
            this.A02 = C07072f.A02;
            this.A00 = 0;
            A06(iArr, objArr, i);
        }
        if (this.A00 > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return A08(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return A07(obj) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C07172p) {
            C07172p c07172p = (C07172p) obj;
            if (size() != c07172p.size()) {
                return false;
            }
            for (int i = 0; i < this.A00; i++) {
                try {
                    K kA09 = A09(i);
                    V vA0B = A0B(i);
                    Object obj2 = c07172p.get(kA09);
                    if (vA0B == null) {
                        if (obj2 == null && c07172p.containsKey(kA09)) {
                        }
                        return false;
                    }
                    if (!vA0B.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException unused) {
                    return false;
                } catch (NullPointerException unused2) {
                    return false;
                }
            }
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.A00; i2++) {
            try {
                K kA092 = A09(i2);
                V vA0B2 = A0B(i2);
                Object obj3 = map.get(kA092);
                if (vA0B2 == null) {
                    if (obj3 == null && map.containsKey(kA092)) {
                    }
                    return false;
                }
                if (!vA0B2.equals(obj3)) {
                    return false;
                }
            } catch (ClassCastException unused3) {
                return false;
            } catch (NullPointerException unused4) {
                return false;
            }
        }
        return true;
    }

    public final V get(Object obj) {
        int iA08 = A08(obj);
        if (iA08 >= 0) {
            return (V) this.A02[(iA08 << 1) + 1];
        }
        return null;
    }

    public final int hashCode() {
        int[] iArr = this.A01;
        Object[] objArr = this.A02;
        int iHashCode = 0;
        int i = 0;
        int i2 = 1;
        int i3 = this.A00;
        while (i < i3) {
            Object obj = objArr[i2];
            iHashCode += iArr[i] ^ (obj == null ? 0 : obj.hashCode());
            i++;
            i2 += 2;
        }
        return iHashCode;
    }

    public final boolean isEmpty() {
        return this.A00 <= 0;
    }

    public final V put(K k, V v) {
        int iHashCode;
        int iA01;
        int i = this.A00;
        if (k == null) {
            iHashCode = 0;
            iA01 = A00();
        } else {
            iHashCode = k.hashCode();
            iA01 = A01(k, iHashCode);
        }
        if (iA01 >= 0) {
            int i2 = (iA01 << 1) + 1;
            Object[] objArr = this.A02;
            V v2 = (V) objArr[i2];
            objArr[i2] = v;
            return v2;
        }
        int i3 = iA01 ^ (-1);
        if (i >= this.A01.length) {
            int i4 = 8;
            if (i >= 8) {
                i4 = (i >> 1) + i;
            } else if (i < 4) {
                i4 = 4;
            }
            int[] iArr = this.A01;
            Object[] objArr2 = this.A02;
            A05(i4);
            if (i != this.A00) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.A01;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.A02, 0, objArr2.length);
            }
            A06(iArr, objArr2, i);
        }
        if (i3 < i) {
            int[] iArr3 = this.A01;
            System.arraycopy(iArr3, i3, iArr3, i3 + 1, i - i3);
            Object[] objArr3 = this.A02;
            System.arraycopy(objArr3, i3 << 1, objArr3, (i3 + 1) << 1, (this.A00 - i3) << 1);
        }
        int i5 = this.A00;
        if (i == i5) {
            int[] iArr4 = this.A01;
            if (i3 < iArr4.length) {
                iArr4[i3] = iHashCode;
                Object[] objArr4 = this.A02;
                objArr4[i3 << 1] = k;
                objArr4[(i3 << 1) + 1] = v;
                this.A00 = i5 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final V remove(Object obj) {
        int iA08 = A08(obj);
        if (iA08 >= 0) {
            return A0A(iA08);
        }
        String[] strArr = A08;
        if (strArr[2].charAt(15) != strArr[4].charAt(15)) {
            throw new RuntimeException();
        }
        A08[5] = "POG7nMkVNzdGaGlGxNMu0E80q";
        return null;
    }

    public final int size() {
        return this.A00;
    }

    public final String toString() {
        if (isEmpty()) {
            return A03(12, 2, 31);
        }
        StringBuilder sb = new StringBuilder(this.A00 * 28);
        sb.append('{');
        for (int i = 0; i < this.A00; i++) {
            if (i > 0) {
                sb.append(A03(10, 2, 45));
            }
            K kA09 = A09(i);
            if (A08[5].length() == 11) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[6] = "5MoFeGsxqoTSR8Y6IShdOiE5VevAoRo0";
            strArr[3] = "kGPruxXsJMcA49LPD5OztVvQJS4oto1Y";
            String strA03 = A03(0, 10, 42);
            if (kA09 != this) {
                sb.append(kA09);
            } else {
                sb.append(strA03);
            }
            sb.append(com.json.b4.R);
            V vA0B = A0B(i);
            if (vA0B != this) {
                sb.append(vA0B);
            } else {
                sb.append(strA03);
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
