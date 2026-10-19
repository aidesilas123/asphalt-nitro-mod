package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.40, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass40 {
    public static byte[] A03;
    public static String[] A04 = {"QoGKHhEqLDc7cPbroRD", "LQzzwNJ4o6QHlfYkxXGOUA5ejYw8qpDj", "6ipC3ASGLl4rMOedI", "OPBJh0aCf", "l4bQelOwEyQeTpTSi", "DWBJmVB67PV4ItRyT2e9caL16z1NK91I", "0G1mJvoVA", "nRnK55wdJbrp31Rh0MWe0TNMbF4aeg8Y"};
    public final InterfaceC07513z A01;
    public final C07503y A00 = new C07503y();
    public final List<View> A02 = new ArrayList();

    static {
        A02();
    }

    public AnonymousClass40(InterfaceC07513z interfaceC07513z) {
        this.A01 = interfaceC07513z;
    }

    private int A00(int i) {
        if (i < 0) {
            return -1;
        }
        int iA6I = this.A01.A6I();
        int i2 = i;
        while (i2 < iA6I) {
            int iA03 = i - (i2 - this.A00.A03(i2));
            if (iA03 == 0) {
                while (this.A00.A08(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iA03;
        }
        return -1;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        if (A04[5].charAt(2) != 'B') {
            throw new RuntimeException();
        }
        A04[1] = "YzFnrN17WwgSKMGcQI3u7PJ5Pdf81qGi";
        A03 = new byte[]{-81, -93, -21, -20, -25, -25, -24, -15, -93, -17, -20, -10, -9, -67, -23, -25, -18, -34, -29, -36, -107, -23, -28, -107, -22, -29, -35, -34, -39, -38, -107, -42, -107, -21, -34, -38, -20, -107, -23, -35, -42, -23, -107, -20, -42, -24, -107, -29, -28, -23, -107, -35, -34, -39, -39, -38, -29, -35, -48, -52, -34, -121, -48, -38, -121, -43, -42, -37, -121, -56, -121, -54, -49, -48, -45, -53, -109, -121, -54, -56, -43, -43, -42, -37, -121, -49, -48, -53, -52, -121};
    }

    private void A03(View view) {
        this.A02.add(view);
        this.A01.ABG(view);
    }

    private boolean A04(View view) {
        if (!this.A02.remove(view)) {
            return false;
        }
        this.A01.ABn(view);
        return true;
    }

    public final int A05() {
        return this.A01.A6I() - this.A02.size();
    }

    public final int A06() {
        return this.A01.A6I();
    }

    public final int A07(View view) {
        int iA8d = this.A01.A8d(view);
        if (iA8d == -1 || this.A00.A08(iA8d)) {
            return -1;
        }
        return iA8d - this.A00.A03(iA8d);
    }

    public final View A08(int i) {
        int size = this.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.A02.get(i2);
            AbstractC07714u abstractC07714uA6L = this.A01.A6L(view);
            if (abstractC07714uA6L.A0I() == i && !abstractC07714uA6L.A0b() && !abstractC07714uA6L.A0c()) {
                return view;
            }
        }
        return null;
    }

    public final View A09(int i) {
        return this.A01.A6H(A00(i));
    }

    public final View A0A(int i) {
        return this.A01.A6H(i);
    }

    public final void A0B() {
        this.A00.A04();
        for (int size = this.A02.size() - 1; size >= 0; size--) {
            this.A01.ABn(this.A02.get(size));
            this.A02.remove(size);
        }
        this.A01.AEW();
    }

    public final void A0C(int i) {
        int iA00 = A00(i);
        this.A00.A09(iA00);
        this.A01.A52(iA00);
    }

    public final void A0D(int i) {
        int iA00 = A00(i);
        View viewA6H = this.A01.A6H(iA00);
        if (viewA6H == null) {
            return;
        }
        if (this.A00.A09(iA00)) {
            A04(viewA6H);
        }
        this.A01.AEa(iA00);
        if (A04[4].length() == 16) {
            throw new RuntimeException();
        }
        A04[7] = "KJlsfCUfVwwQNNRDjM0AzdkkAy1m1QjD";
    }

    public final void A0E(View view) {
        int iA8d = this.A01.A8d(view);
        if (iA8d < 0) {
            throw new IllegalArgumentException(A01(57, 33, 25) + view);
        }
        this.A00.A06(iA8d);
        A03(view);
    }

    public final void A0F(View view) {
        int iA8d = this.A01.A8d(view);
        if (iA8d < 0) {
            return;
        }
        if (this.A00.A09(iA8d)) {
            A04(view);
        }
        this.A01.AEa(iA8d);
    }

    public final void A0G(View view) {
        int iA8d = this.A01.A8d(view);
        if (iA8d < 0) {
            throw new IllegalArgumentException(A01(57, 33, 25) + view);
        }
        if (!this.A00.A08(iA8d)) {
            throw new RuntimeException(A01(14, 43, 39) + view);
        }
        this.A00.A05(iA8d);
        A04(view);
    }

    public final void A0H(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iA6I = i < 0 ? this.A01.A6I() : A00(i);
        C07503y c07503y = this.A00;
        if (A04[5].charAt(2) != 'B') {
            throw new RuntimeException();
        }
        A04[1] = "KHr0McsaN13zWmBdzhmfm62h5mt8zSB0";
        c07503y.A07(iA6I, z);
        if (z) {
            A03(view);
        }
        this.A01.A3a(view, iA6I, layoutParams);
    }

    public final void A0I(View view, int i, boolean z) {
        int iA6I = i < 0 ? this.A01.A6I() : A00(i);
        this.A00.A07(iA6I, z);
        if (z) {
            A03(view);
        }
        this.A01.addView(view, iA6I);
    }

    public final void A0J(View view, boolean z) {
        A0I(view, -1, z);
    }

    public final boolean A0K(View view) {
        return this.A02.contains(view);
    }

    public final boolean A0L(View view) {
        int iA8d = this.A01.A8d(view);
        if (iA8d == -1) {
            A04(view);
            if (A04[5].charAt(2) != 'B') {
                throw new RuntimeException();
            }
            A04[0] = "HipCYWSrBpzIS13Odtj";
            return true;
        }
        if (!this.A00.A08(iA8d)) {
            return false;
        }
        this.A00.A09(iA8d);
        A04(view);
        this.A01.AEa(iA8d);
        return true;
    }

    public final String toString() {
        return this.A00.toString() + A01(0, 14, 53) + this.A02.size();
    }
}
