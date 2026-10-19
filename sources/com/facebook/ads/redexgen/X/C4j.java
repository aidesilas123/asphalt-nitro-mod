package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4j, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C4j {
    public static String[] A02 = {"hO0SXlIn7n5HXEBLx", "jESNVpuYnHPlnh4DZ", "CDLwN7DwmtArlNd144q1QIOvLDqs4yZF", "JntNhgZ58kYFXbwiJ6hzeVdvPNGn00kF", "yTsWpbzmHeCmcQEDkb0QkT5J3TV6CkfD", "Lh9pded4Clz2", "gnDNjs3GBImfOnnM5uEQWokXBd1c", "C4tnEN178k9sL9bIxtVolUttiI5dEdE5"};
    public SparseArray<C07604i> A00 = new SparseArray<>();
    public int A01 = 0;

    private final long A00(long j, long j2) {
        if (j == 0) {
            return j2;
        }
        long j3 = j / 4;
        String[] strArr = A02;
        if (strArr[3].charAt(9) != strArr[7].charAt(9)) {
            throw new RuntimeException();
        }
        A02[4] = "GTVZcsVJP0WVKaHbsMtSVk9gu6Gyk4Ss";
        return (j3 * 3) + (j2 / 4);
    }

    private C07604i A01(int i) {
        C07604i c07604i = this.A00.get(i);
        if (c07604i != null) {
            return c07604i;
        }
        C07604i c07604i2 = new C07604i();
        this.A00.put(i, c07604i2);
        return c07604i2;
    }

    private final void A02() {
        for (int i = 0; i < this.A00.size(); i++) {
            this.A00.valueAt(i).A03.clear();
        }
    }

    public final AbstractC07714u A03(int i) {
        C07604i c07604i = this.A00.get(i);
        if (c07604i == null || c07604i.A03.isEmpty()) {
            return null;
        }
        ArrayList<AbstractC07714u> arrayList = c07604i.A03;
        if (A02[4].charAt(1) != 'T') {
            throw new RuntimeException();
        }
        A02[6] = "6zOEmNGiTAHU1v9SGa3";
        return arrayList.remove(arrayList.size() - 1);
    }

    public final void A04() {
        this.A01--;
    }

    public final void A05(int i, long j) {
        C07604i c07604iA01 = A01(i);
        c07604iA01.A01 = A00(c07604iA01.A01, j);
    }

    public final void A06(int i, long j) {
        C07604i c07604iA01 = A01(i);
        c07604iA01.A02 = A00(c07604iA01.A02, j);
    }

    public final void A07(C4Q c4q) {
        this.A01++;
    }

    public final void A08(C4Q c4q, C4Q c4q2, boolean z) {
        if (c4q != null) {
            A04();
        }
        if (!z && this.A01 == 0) {
            A02();
        }
        if (c4q2 != null) {
            A07(c4q2);
        }
    }

    public final void A09(AbstractC07714u abstractC07714u) {
        int iA0H = abstractC07714u.A0H();
        ArrayList<AbstractC07714u> arrayList = A01(iA0H).A03;
        if (this.A00.get(iA0H).A00 <= arrayList.size()) {
            return;
        }
        abstractC07714u.A0Q();
        String[] strArr = A02;
        if (strArr[3].charAt(9) != strArr[7].charAt(9)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[1] = "TnDeXYrDbfmyODeGX";
        strArr2[5] = "ziritv0xfrad";
        arrayList.add(abstractC07714u);
    }

    public final boolean A0A(int i, long j, long j2) {
        long j3 = A01(i).A01;
        return j3 == 0 || j + j3 < j2;
    }

    public final boolean A0B(int i, long j, long j2) {
        long j3 = A01(i).A02;
        return j3 == 0 || j + j3 < j2;
    }
}
