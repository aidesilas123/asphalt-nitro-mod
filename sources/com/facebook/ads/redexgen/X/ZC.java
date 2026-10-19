package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentTransaction;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.androidx.support.v7.widget.LinearLayoutManager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.gameloft.adsmanager.JavaUtils;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ZC extends AbstractC07544c implements InterfaceC07654o {
    public static byte[] A0F;
    public static String[] A0G = {"VKH6HNPW", "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY", "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W", "8EarDdUd0wjX", "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku", "k0c9canuweazyFazM74f3pFcokchiBr", "yJQv9VjGutzUoxdr6", "vBYUiSK7FkagYmvZS"};
    public int A00;
    public int A01;
    public int A02;
    public LinearLayoutManager$SavedState A03;
    public C4M A04;
    public boolean A05;
    public int A06;
    public C4H A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final C4F A0D;
    public final C4G A0E;

    static {
        A0V();
    }

    public ZC(Context context) {
        this(context, 1, false);
    }

    public ZC(Context context, int i, boolean z) {
        this.A0A = false;
        this.A05 = false;
        this.A0C = false;
        this.A0B = true;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A03 = null;
        this.A0D = new C4F(this);
        this.A0E = new C4G();
        this.A06 = 2;
        A2E(i);
        A0h(z);
        A1V(true);
    }

    private final int A04(int i, C07614k c07614k, C07684r c07684r) {
        if (A0W() == 0 || i == 0) {
            return 0;
        }
        this.A07.A0B = true;
        A2D();
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        A0Y(i2, iAbs, true, c07684r);
        int iA08 = this.A07.A07 + A08(c07614k, this.A07, c07684r, false);
        if (iA08 < 0) {
            return 0;
        }
        int i3 = iAbs > iA08 ? i2 * iA08 : i;
        this.A04.A0J(-i3);
        this.A07.A04 = i3;
        return i3;
    }

    private int A05(int i, C07614k c07614k, C07684r c07684r, boolean z) {
        int iA07 = this.A04.A07() - i;
        if (iA07 <= 0) {
            return 0;
        }
        int i2 = -A04(-iA07, c07614k, c07684r);
        int i3 = i + i2;
        if (z) {
            int iA072 = this.A04.A07();
            if (A0G[0].length() == 7) {
                throw new RuntimeException();
            }
            A0G[0] = "DiKLRwr5Jced9h1IWYQQBSe";
            int i4 = iA072 - i3;
            if (i4 > 0) {
                this.A04.A0J(i4);
                return i4 + i2;
            }
        }
        return i2;
    }

    private int A06(int i, C07614k c07614k, C07684r c07684r, boolean z) {
        int iA0A;
        int iA0A2 = i - this.A04.A0A();
        if (iA0A2 <= 0) {
            return 0;
        }
        int i2 = -A04(iA0A2, c07614k, c07684r);
        int i3 = i + i2;
        if (!z || (iA0A = i3 - this.A04.A0A()) <= 0) {
            return i2;
        }
        this.A04.A0J(-iA0A);
        return i2 - iA0A;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a6, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int A08(com.facebook.ads.redexgen.X.C07614k r10, com.facebook.ads.redexgen.X.C4H r11, com.facebook.ads.redexgen.X.C07684r r12, boolean r13) {
        /*
            r9 = this;
            int r7 = r11.A00
            int r0 = r11.A07
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r6) goto L16
            int r0 = r11.A00
            if (r0 >= 0) goto L13
            int r1 = r11.A07
            int r0 = r11.A00
            int r1 = r1 + r0
            r11.A07 = r1
        L13:
            r9.A0e(r10, r11)
        L16:
            int r5 = r11.A00
            int r0 = r11.A02
            int r5 = r5 + r0
            com.facebook.ads.redexgen.X.4G r4 = r9.A0E
        L1d:
            boolean r0 = r11.A09
            if (r0 != 0) goto L23
            if (r5 <= 0) goto L33
        L23:
            boolean r0 = r11.A05(r12)
            if (r0 == 0) goto L33
            r4.A00()
            r9.A2H(r10, r12, r11, r4)
            boolean r0 = r4.A01
            if (r0 == 0) goto L37
        L33:
            int r0 = r11.A00
            int r7 = r7 - r0
            return r7
        L37:
            int r2 = r11.A06
            int r1 = r4.A00
            int r0 = r11.A05
            int r1 = r1 * r0
            int r2 = r2 + r1
            r11.A06 = r2
            boolean r0 = r4.A03
            if (r0 == 0) goto L51
            com.facebook.ads.redexgen.X.4H r0 = r9.A07
            java.util.List<com.facebook.ads.redexgen.X.4u> r0 = r0.A08
            if (r0 != 0) goto L51
            boolean r0 = r12.A07()
            if (r0 != 0) goto L5b
        L51:
            int r1 = r11.A00
            int r0 = r4.A00
            int r1 = r1 - r0
            r11.A00 = r1
            int r0 = r4.A00
            int r5 = r5 - r0
        L5b:
            int r0 = r11.A07
            if (r0 == r6) goto L87
            int r1 = r11.A07
            int r0 = r4.A00
            int r1 = r1 + r0
            r11.A07 = r1
            int r0 = r11.A00
            if (r0 >= 0) goto L84
            int r8 = r11.A07
            int r3 = r11.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.ZC.A0G
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 7
            if (r1 == r0) goto La1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.ZC.A0G
            java.lang.String r1 = "4Yaap7YPoeEmBfNVznjneaOXF1T3Chf"
            r0 = 5
            r2[r0] = r1
            int r8 = r8 + r3
            r11.A07 = r8
        L84:
            r9.A0e(r10, r11)
        L87:
            if (r13 == 0) goto L1d
            boolean r3 = r4.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.ZC.A0G
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 7
            if (r1 == r0) goto La1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.ZC.A0G
            java.lang.String r1 = "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov"
            r0 = 1
            r2[r0] = r1
            if (r3 == 0) goto L1d
            goto L33
        La1:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZC.A08(com.facebook.ads.redexgen.X.4k, com.facebook.ads.redexgen.X.4H, com.facebook.ads.redexgen.X.4r, boolean):int");
    }

    private int A09(C07684r c07684r) {
        if (A0W() != 0) {
            A2D();
            return C07724v.A00(c07684r, this.A04, A0R(!this.A0B, true), A0Q(!this.A0B, true), this, this.A0B);
        }
        if (A0G[5].length() != 31) {
            throw new RuntimeException();
        }
        A0G[5] = "JS1EmTokFkofHdCiZDqGUekHou375gK";
        return 0;
    }

    private int A0A(C07684r c07684r) {
        if (A0W() == 0) {
            return 0;
        }
        A2D();
        return C07724v.A02(c07684r, this.A04, A0R(!this.A0B, true), A0Q(!this.A0B, true), this, this.A0B, this.A05);
    }

    private int A0B(C07684r c07684r) {
        if (A0W() != 0) {
            A2D();
            return C07724v.A01(c07684r, this.A04, A0R(!this.A0B, true), A0Q(!this.A0B, true), this, this.A0B);
        }
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[2] = "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA";
        strArr2[4] = "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs";
        return 0;
    }

    private final int A0C(C07684r c07684r) {
        if (c07684r.A06()) {
            return this.A04.A0B();
        }
        return 0;
    }

    private View A0D() {
        return A0H(0, A0W());
    }

    private View A0E() {
        return A0H(A0W() - 1, -1);
    }

    private View A0F() {
        return A0t(this.A05 ? 0 : A0W() - 1);
    }

    private View A0G() {
        return A0t(this.A05 ? A0W() - 1 : 0);
    }

    private final View A0H(int i, int i2) {
        int i3;
        int i4;
        A2D();
        if ((i2 > i ? (byte) 1 : i2 < i ? (byte) -1 : (byte) 0) == 0) {
            View viewA0t = A0t(i);
            String[] strArr = A0G;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0G[5] = "tEP4S10y6AtQbDA9ff3H424KLTnX0k7";
            return viewA0t;
        }
        if (this.A04.A0F(A0t(i)) < this.A04.A0A()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        return this.A00 == 0 ? super.A04.A00(i, i2, i3, i4) : super.A05.A00(i, i2, i3, i4);
    }

    private final View A0J(int i, int i2, boolean z, boolean z2) {
        A2D();
        int i3 = z ? 24579 : JavaUtils.Constants.BANNER_WIDTH_DP;
        int i4 = z2 ? JavaUtils.Constants.BANNER_WIDTH_DP : 0;
        int i5 = this.A00;
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[2] = "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg";
        strArr[4] = "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl";
        return i5 == 0 ? super.A04.A00(i, i2, i3, i4) : super.A05.A00(i, i2, i3, i4);
    }

    private View A0K(C07614k c07614k, C07684r c07684r) {
        return A2C(c07614k, c07684r, 0, A0W(), c07684r.A03());
    }

    private View A0L(C07614k c07614k, C07684r c07684r) {
        return A2C(c07614k, c07684r, A0W() - 1, -1, c07684r.A03());
    }

    private View A0M(C07614k c07614k, C07684r c07684r) {
        return this.A05 ? A0D() : A0E();
    }

    private View A0N(C07614k c07614k, C07684r c07684r) {
        return this.A05 ? A0E() : A0D();
    }

    private View A0O(C07614k c07614k, C07684r c07684r) {
        return this.A05 ? A0K(c07614k, c07684r) : A0L(c07614k, c07684r);
    }

    private View A0P(C07614k c07614k, C07684r c07684r) {
        return this.A05 ? A0L(c07614k, c07684r) : A0K(c07614k, c07684r);
    }

    private View A0Q(boolean z, boolean z2) {
        return this.A05 ? A0J(0, A0W(), z, z2) : A0J(A0W() - 1, -1, z, z2);
    }

    private View A0R(boolean z, boolean z2) {
        return this.A05 ? A0J(A0W() - 1, -1, z, z2) : A0J(0, A0W(), z, z2);
    }

    private final C4H A0S() {
        return new C4H();
    }

    public static String A0T(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0U() {
        if (this.A00 == 1 || !A2J()) {
            this.A05 = this.A0A;
            return;
        }
        boolean z = !this.A0A;
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[6] = "rvopS3hSB7itRsuyG";
        strArr2[7] = "9RTUShXs4ZXrU4n03";
        this.A05 = z;
    }

    public static void A0V() {
        A0F = new byte[]{Ascii.RS, Ascii.EM, 1, Ascii.SYN, Ascii.ESC, Ascii.RS, 19, 87, Ascii.CAN, 5, Ascii.RS, Ascii.DC2, Ascii.EM, 3, Ascii.SYN, 3, Ascii.RS, Ascii.CAN, Ascii.EM, 77};
    }

    private void A0W(int i, int i2) {
        this.A07.A00 = this.A04.A07() - i2;
        this.A07.A03 = this.A05 ? -1 : 1;
        this.A07.A01 = i;
        this.A07.A05 = 1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0X(int i, int i2) {
        this.A07.A00 = i2 - this.A04.A0A();
        this.A07.A01 = i;
        this.A07.A03 = this.A05 ? 1 : -1;
        this.A07.A05 = -1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0Y(int i, int i2, boolean z, C07684r c07684r) {
        int iA0A;
        this.A07.A09 = A0i();
        this.A07.A02 = A0C(c07684r);
        this.A07.A05 = i;
        if (i == 1) {
            this.A07.A02 += this.A04.A08();
            View viewA0F = A0F();
            this.A07.A03 = this.A05 ? -1 : 1;
            this.A07.A01 = A0p(viewA0F) + this.A07.A03;
            this.A07.A06 = this.A04.A0C(viewA0F);
            iA0A = this.A04.A0C(viewA0F) - this.A04.A07();
        } else {
            View viewA0G = A0G();
            this.A07.A02 += this.A04.A0A();
            this.A07.A03 = this.A05 ? 1 : -1;
            this.A07.A01 = A0p(viewA0G) + this.A07.A03;
            this.A07.A06 = this.A04.A0F(viewA0G);
            iA0A = (-this.A04.A0F(viewA0G)) + this.A04.A0A();
        }
        this.A07.A00 = i2;
        if (z) {
            this.A07.A00 -= iA0A;
        }
        this.A07.A07 = iA0A;
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        A0G[1] = "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz";
    }

    private void A0Z(C4F c4f) {
        A0W(c4f.A01, c4f.A00);
    }

    private void A0a(C4F c4f) {
        A0X(c4f.A01, c4f.A00);
    }

    private void A0b(C07614k c07614k, int i) {
        int iA0W = A0W();
        if (i < 0) {
            return;
        }
        int iA06 = this.A04.A06() - i;
        if (this.A05) {
            for (int i2 = 0; i2 < iA0W; i2++) {
                View viewA0t = A0t(i2);
                if (this.A04.A0F(viewA0t) < iA06 || this.A04.A0H(viewA0t) < iA06) {
                    A0d(c07614k, 0, i2);
                    return;
                }
            }
            return;
        }
        for (int i3 = iA0W - 1; i3 >= 0; i3--) {
            View viewA0t2 = A0t(i3);
            if (this.A04.A0F(viewA0t2) < iA06 || this.A04.A0H(viewA0t2) < iA06) {
                A0d(c07614k, iA0W - 1, i3);
                return;
            }
        }
    }

    private void A0c(C07614k c07614k, int i) {
        if (i < 0) {
            return;
        }
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        A0G[0] = "66";
        int iA0W = A0W();
        if (!this.A05) {
            for (int i2 = 0; i2 < iA0W; i2++) {
                View viewA0t = A0t(i2);
                int iA0C = this.A04.A0C(viewA0t);
                if (A0G[3].length() == 28) {
                    throw new RuntimeException();
                }
                A0G[1] = "ET87P0AumYMcjI6vylu4qFXoEmTHeXod";
                if (iA0C > i || this.A04.A0G(viewA0t) > i) {
                    A0d(c07614k, 0, i2);
                    return;
                }
            }
            return;
        }
        for (int i3 = iA0W - 1; i3 >= 0; i3--) {
            View viewA0t2 = A0t(i3);
            if (this.A04.A0C(viewA0t2) <= i) {
                C4M c4m = this.A04;
                String[] strArr2 = A0G;
                if (strArr2[6].length() == strArr2[7].length()) {
                    A0G[3] = "uDZbJl3GZvnd0";
                    if (c4m.A0G(viewA0t2) <= i) {
                    }
                } else if (c4m.A0G(viewA0t2) <= i) {
                }
            }
            A0d(c07614k, iA0W - 1, i3);
            return;
        }
    }

    private void A0d(C07614k c07614k, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                A14(i, c07614k);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                A14(i3, c07614k);
            }
        }
    }

    private void A0e(C07614k c07614k, C4H c4h) {
        if (!c4h.A0B || c4h.A09) {
            return;
        }
        int i = c4h.A05;
        String[] strArr = A0G;
        if (strArr[6].length() == strArr[7].length()) {
            String[] strArr2 = A0G;
            strArr2[2] = "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK";
            strArr2[4] = "3weclwG7n9RXAySrMV3Jn51LrKgutG4n";
            if (i != -1) {
                A0c(c07614k, c4h.A07);
                return;
            }
            int i2 = c4h.A07;
            if (A0G[1].charAt(30) == 'o') {
                A0G[3] = "CiNTyTfZO3PW6tP";
                A0b(c07614k, i2);
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A0f(C07614k c07614k, C07684r c07684r, int i, int i2) {
        if (!c07684r.A08() || A0W() == 0 || c07684r.A07() || !A26()) {
            return;
        }
        int iA0D = 0;
        int iA0D2 = 0;
        List<AbstractC07714u> listA0J = c07614k.A0J();
        int size = listA0J.size();
        int iA0p = A0p(A0t(0));
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC07714u abstractC07714u = listA0J.get(i3);
            if (!abstractC07714u.A0c()) {
                if (((abstractC07714u.A0I() < iA0p) != this.A05 ? (byte) -1 : (byte) 1) == -1) {
                    iA0D += this.A04.A0D(abstractC07714u.A0H);
                } else {
                    iA0D2 += this.A04.A0D(abstractC07714u.A0H);
                }
            }
        }
        this.A07.A08 = listA0J;
        if (iA0D > 0) {
            A0X(A0p(A0G()), i);
            this.A07.A02 = iA0D;
            this.A07.A00 = 0;
            this.A07.A04();
            A08(c07614k, this.A07, c07684r, false);
        }
        if (iA0D2 > 0) {
            A0W(A0p(A0F()), i2);
            this.A07.A02 = iA0D2;
            this.A07.A00 = 0;
            this.A07.A04();
            A08(c07614k, this.A07, c07684r, false);
        }
        this.A07.A08 = null;
    }

    private void A0g(C07614k c07614k, C07684r c07684r, C4F c4f) {
        if (A0k(c07684r, c4f)) {
            return;
        }
        boolean zA0j = A0j(c07614k, c07684r, c4f);
        String[] strArr = A0G;
        if (strArr[2].charAt(4) == strArr[4].charAt(4)) {
            throw new RuntimeException();
        }
        A0G[3] = "XDJ2jDWhUW9a7iN";
        if (zA0j) {
            return;
        }
        c4f.A02();
        c4f.A01 = this.A0C ? c07684r.A03() - 1 : 0;
    }

    private final void A0h(boolean z) {
        A22(null);
        if (z == this.A0A) {
            return;
        }
        this.A0A = z;
        A0y();
    }

    private final boolean A0i() {
        return this.A04.A09() == 0 && this.A04.A06() == 0;
    }

    private boolean A0j(C07614k c07614k, C07684r c07684r, C4F c4f) {
        if (A0W() == 0) {
            return false;
        }
        View viewA0s = A0s();
        if (viewA0s != null && c4f.A06(viewA0s, c07684r)) {
            c4f.A05(viewA0s);
            return true;
        }
        if (this.A08 != this.A0C) {
            return false;
        }
        View viewA0O = c4f.A02 ? A0O(c07614k, c07684r) : A0P(c07614k, c07684r);
        if (viewA0O == null) {
            return false;
        }
        c4f.A04(viewA0O);
        if (!c07684r.A07() && A26()) {
            if (this.A04.A0F(viewA0O) >= this.A04.A07() || this.A04.A0C(viewA0O) < this.A04.A0A()) {
                c4f.A00 = c4f.A02 ? this.A04.A07() : this.A04.A0A();
            }
        }
        return true;
    }

    private boolean A0k(C07684r c07684r, C4F c4f) {
        int i;
        int iA0F;
        if (c07684r.A07() || (i = this.A01) == -1) {
            return false;
        }
        if (i < 0 || i >= c07684r.A03()) {
            this.A01 = -1;
            this.A02 = Integer.MIN_VALUE;
            return false;
        }
        c4f.A01 = this.A01;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState != null && linearLayoutManager$SavedState.A01()) {
            c4f.A02 = this.A03.A02;
            if (c4f.A02) {
                c4f.A00 = this.A04.A07() - this.A03.A00;
            } else {
                c4f.A00 = this.A04.A0A() + this.A03.A00;
            }
            return true;
        }
        if (this.A02 != Integer.MIN_VALUE) {
            c4f.A02 = this.A05;
            if (this.A05) {
                c4f.A00 = this.A04.A07() - this.A02;
            } else {
                c4f.A00 = this.A04.A0A() + this.A02;
            }
            return true;
        }
        View viewA1q = A1q(this.A01);
        if (viewA1q == null) {
            if (A0W() > 0) {
                boolean z = this.A01 < A0p(A0t(0));
                boolean z2 = this.A05;
                if (A0G[1].charAt(30) != 'o') {
                    throw new RuntimeException();
                }
                String[] strArr = A0G;
                strArr[2] = "1tNDA9T9nSDYektAgKE77gOe81bMFJSk";
                strArr[4] = "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm";
                c4f.A02 = z == z2;
            }
            c4f.A02();
        } else {
            if (this.A04.A0D(viewA1q) > this.A04.A0B()) {
                c4f.A02();
                return true;
            }
            if (this.A04.A0F(viewA1q) - this.A04.A0A() < 0) {
                c4f.A00 = this.A04.A0A();
                c4f.A02 = false;
                return true;
            }
            if (this.A04.A07() - this.A04.A0C(viewA1q) < 0) {
                c4f.A00 = this.A04.A07();
                c4f.A02 = true;
                return true;
            }
            if (c4f.A02) {
                int iA0C = this.A04.A0C(viewA1q);
                C4M c4m = this.A04;
                String[] strArr2 = A0G;
                if (strArr2[2].charAt(4) == strArr2[4].charAt(4)) {
                    throw new RuntimeException();
                }
                A0G[3] = "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu";
                iA0F = iA0C + c4m.A05();
            } else {
                iA0F = this.A04.A0F(viewA1q);
            }
            c4f.A00 = iA0F;
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public int A1h(int i, C07614k c07614k, C07684r c07684r) {
        if (this.A00 == 1) {
            return 0;
        }
        return A04(i, c07614k, c07684r);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public int A1i(int i, C07614k c07614k, C07684r c07684r) {
        if (this.A00 == 0) {
            return 0;
        }
        int iA04 = A04(i, c07614k, c07684r);
        String[] strArr = A0G;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A0G[3] = "CDnF1shpb";
        return iA04;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final int A1j(C07684r c07684r) {
        return A09(c07684r);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final int A1k(C07684r c07684r) {
        return A0A(c07684r);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final int A1l(C07684r c07684r) {
        return A0B(c07684r);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final int A1m(C07684r c07684r) {
        return A09(c07684r);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final int A1n(C07684r c07684r) {
        return A0A(c07684r);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final int A1o(C07684r c07684r) {
        return A0B(c07684r);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final Parcelable A1p() {
        if (this.A03 != null) {
            return new WrappedParcelable(new LinearLayoutManager$SavedState(this.A03));
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
        if (A0W() > 0) {
            A2D();
            boolean z = this.A08 ^ this.A05;
            linearLayoutManager$SavedState.A02 = z;
            if (z) {
                View viewA0F = A0F();
                linearLayoutManager$SavedState.A00 = this.A04.A07() - this.A04.A0C(viewA0F);
                linearLayoutManager$SavedState.A01 = A0p(viewA0F);
            } else {
                View viewA0G = A0G();
                linearLayoutManager$SavedState.A01 = A0p(viewA0G);
                linearLayoutManager$SavedState.A00 = this.A04.A0F(viewA0G) - this.A04.A0A();
            }
        } else {
            linearLayoutManager$SavedState.A00();
        }
        return new WrappedParcelable(linearLayoutManager$SavedState);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final View A1q(int i) {
        int iA0W = A0W();
        if (iA0W == 0) {
            return null;
        }
        int iA0p = i - A0p(A0t(0));
        if (iA0p >= 0 && iA0p < iA0W) {
            View viewA0t = A0t(iA0p);
            if (A0p(viewA0t) == i) {
                return viewA0t;
            }
        }
        return super.A1q(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public View A1r(View view, int i, C07614k c07614k, C07684r c07684r) {
        int iA2B;
        A0U();
        if (A0W() == 0 || (iA2B = A2B(i)) == Integer.MIN_VALUE) {
            return null;
        }
        A2D();
        A2D();
        A0Y(iA2B, (int) (this.A04.A0B() * 0.33333334f), false, c07684r);
        this.A07.A07 = Integer.MIN_VALUE;
        this.A07.A0B = false;
        A08(c07614k, this.A07, c07684r, true);
        View viewA0N = iA2B == -1 ? A0N(c07614k, c07684r) : A0M(c07614k, c07684r);
        View viewA0G = iA2B == -1 ? A0G() : A0F();
        boolean zHasFocusable = viewA0G.hasFocusable();
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[2] = "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38";
        strArr[4] = "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa";
        if (!zHasFocusable) {
            return viewA0N;
        }
        if (viewA0N == null) {
            return null;
        }
        return viewA0G;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public C07554d A1s() {
        return new C07554d(-2, -2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public void A1t(int i) {
        this.A01 = i;
        this.A02 = Integer.MIN_VALUE;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState != null) {
            linearLayoutManager$SavedState.A00();
        }
        A0y();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A1u(int i, int i2, C07684r c07684r, InterfaceC07524a interfaceC07524a) {
        if (this.A00 != 0) {
            i = i2;
        }
        if (A0W() == 0 || i == 0) {
            return;
        }
        A2D();
        A0Y(i > 0 ? 1 : -1, Math.abs(i), true, c07684r);
        A2I(c07684r, this.A07, interfaceC07524a);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A1v(int i, InterfaceC07524a interfaceC07524a) {
        boolean z;
        int i2;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState == null || !linearLayoutManager$SavedState.A01()) {
            A0U();
            z = this.A05;
            int i3 = this.A01;
            String[] strArr = A0G;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0G[1] = "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM";
            i2 = i3 == -1 ? z ? i - 1 : 0 : this.A01;
        } else {
            z = this.A03.A02;
            i2 = this.A03.A01;
        }
        int i4 = z ? -1 : 1;
        for (int i5 = 0; i5 < this.A06 && i2 >= 0 && i2 < i; i5++) {
            interfaceC07524a.A3O(i2, 0);
            i2 += i4;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A1w(Parcelable parcelable) {
        if (parcelable instanceof WrappedParcelable) {
            ClassLoader classLoader = getClass().getClassLoader();
            if (A0G[1].charAt(30) == 'o') {
                A0G[1] = "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI";
                if (classLoader == null) {
                    return;
                }
                if (A0G[5].length() == 31) {
                    A0G[3] = "tm";
                    Parcelable parcelableUnwrap = ((WrappedParcelable) parcelable).unwrap(classLoader);
                    if (parcelableUnwrap instanceof LinearLayoutManager$SavedState) {
                        this.A03 = (LinearLayoutManager$SavedState) parcelableUnwrap;
                        A0y();
                        return;
                    }
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A1x(AccessibilityEvent accessibilityEvent) {
        super.A1x(accessibilityEvent);
        if (A0W() > 0) {
            accessibilityEvent.setFromIndex(A28());
            int iA29 = A29();
            if (A0G[3].length() == 28) {
                throw new RuntimeException();
            }
            A0G[3] = "9E5bhv9RVKulu";
            accessibilityEvent.setToIndex(iA29);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A1y(com.facebook.ads.redexgen.X.C07614k r10, com.facebook.ads.redexgen.X.C07684r r11) {
        /*
            Method dump skipped, instruction units count: 621
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZC.A1y(com.facebook.ads.redexgen.X.4k, com.facebook.ads.redexgen.X.4r):void");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public void A1z(C07684r c07684r) {
        super.A1z(c07684r);
        this.A03 = null;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A0D.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A20(ED ed, C07614k c07614k) {
        super.A20(ed, c07614k);
        if (this.A09) {
            A1I(c07614k);
            c07614k.A0P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public void A21(ED ed, C07684r c07684r, int i) {
        ZB zb = new ZB(ed.getContext());
        zb.A0A(i);
        A1L(zb);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A22(String str) {
        if (this.A03 == null) {
            super.A22(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final boolean A23() {
        if (A0Y() != 1073741824 && A0i() != 1073741824) {
            boolean zA1W = A1W();
            if (A0G[0].length() == 7) {
                throw new RuntimeException();
            }
            A0G[0] = "ZYU5Lu8KJdo1W8";
            if (zA1W) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final boolean A24() {
        return this.A00 == 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public final boolean A25() {
        return this.A00 == 1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    public boolean A26() {
        return this.A03 == null && this.A08 == this.A0C;
    }

    public final int A27() {
        View viewA0J = A0J(0, A0W(), true, false);
        if (viewA0J == null) {
            return -1;
        }
        return A0p(viewA0J);
    }

    public final int A28() {
        View viewA0J = A0J(0, A0W(), false, true);
        if (viewA0J == null) {
            return -1;
        }
        return A0p(viewA0J);
    }

    public final int A29() {
        View viewA0J = A0J(A0W() - 1, -1, false, true);
        if (viewA0J == null) {
            return -1;
        }
        return A0p(viewA0J);
    }

    public final int A2A() {
        return this.A00;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r3 == 1) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
    
        if (A2J() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001c, code lost:
    
        if (r3 == 1) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A2B(int r8) {
        /*
            r7 = this;
            r6 = -1
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = 1
            switch(r8) {
                case 1: goto L8;
                case 2: goto L31;
                case 17: goto L3e;
                case 33: goto L46;
                case 66: goto L4e;
                case 130: goto L54;
                default: goto L7;
            }
        L7:
            return r5
        L8:
            int r3 = r7.A00
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.ZC.A0G
            r0 = 6
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L1f
            if (r3 != r4) goto L29
        L1e:
            return r6
        L1f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.ZC.A0G
            java.lang.String r1 = "tdW2fzf"
            r0 = 3
            r2[r0] = r1
            if (r3 != r4) goto L29
            goto L1e
        L29:
            boolean r0 = r7.A2J()
            if (r0 == 0) goto L30
            return r4
        L30:
            return r6
        L31:
            int r0 = r7.A00
            if (r0 != r4) goto L36
            return r4
        L36:
            boolean r0 = r7.A2J()
            if (r0 == 0) goto L3d
            return r6
        L3d:
            return r4
        L3e:
            int r0 = r7.A00
            if (r0 != 0) goto L43
        L42:
            return r6
        L43:
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L42
        L46:
            int r0 = r7.A00
            if (r0 != r4) goto L4b
        L4a:
            return r6
        L4b:
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L4a
        L4e:
            int r0 = r7.A00
            if (r0 != 0) goto L53
            r5 = 1
        L53:
            return r5
        L54:
            int r3 = r7.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.ZC.A0G
            r0 = 1
            r1 = r1[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            r0 = 111(0x6f, float:1.56E-43)
            if (r1 == r0) goto L6b
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L6b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.ZC.A0G
            java.lang.String r1 = "6DQtaB3lJkGKNvmH8s9QQc68TsOBLDE"
            r0 = 3
            r2[r0] = r1
            if (r3 != r4) goto L75
            r5 = 1
        L75:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZC.A2B(int):int");
    }

    public View A2C(C07614k c07614k, C07684r c07684r, int i, int i2, int i3) {
        A2D();
        View view = null;
        View view2 = null;
        int iA0A = this.A04.A0A();
        int iA07 = this.A04.A07();
        int i4 = i2 > i ? 1 : -1;
        while (i != i2) {
            View viewA0t = A0t(i);
            int iA0p = A0p(viewA0t);
            if (iA0p >= 0 && iA0p < i3) {
                if (((C07554d) viewA0t.getLayoutParams()).A02()) {
                    if (view == null) {
                        view = viewA0t;
                    }
                } else {
                    if (this.A04.A0F(viewA0t) < iA07 && this.A04.A0C(viewA0t) >= iA0A) {
                        return viewA0t;
                    }
                    if (view2 == null) {
                        view2 = viewA0t;
                    }
                }
            }
            i += i4;
        }
        return view2 != null ? view2 : view;
    }

    public final void A2D() {
        if (this.A07 == null) {
            this.A07 = A0S();
        }
        if (this.A04 == null) {
            this.A04 = C4M.A02(this, this.A00);
        }
    }

    public final void A2E(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(A0T(0, 20, 1) + i);
        }
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        A0G[1] = "wMuOUB68W5cmyVCUMue198JFnL9Wkeot";
        A22(null);
        if (i == this.A00) {
            return;
        }
        this.A00 = i;
        this.A04 = null;
        A0y();
    }

    public final void A2F(int i, int i2) {
        this.A01 = i;
        this.A02 = i2;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.A03;
        if (linearLayoutManager$SavedState != null) {
            linearLayoutManager$SavedState.A00();
        }
        A0y();
        if (A0G[1].charAt(30) != 'o') {
            throw new RuntimeException();
        }
        A0G[3] = "tDl3kZGUKMTs";
    }

    public void A2G(C07614k c07614k, C07684r c07684r, C4F c4f, int i) {
    }

    public void A2H(C07614k c07614k, C07684r c07684r, C4H c4h, C4G c4g) {
        int iA0g;
        int iA0E;
        int iA0e;
        int iA0E2;
        View viewA03 = c4h.A03(c07614k);
        if (viewA03 == null) {
            c4g.A01 = true;
            return;
        }
        C07554d c07554d = (C07554d) viewA03.getLayoutParams();
        if (c4h.A08 == null) {
            if (this.A05 == (c4h.A05 == -1)) {
                A17(viewA03);
            } else {
                A19(viewA03, 0);
            }
        } else {
            if (this.A05 == (c4h.A05 == -1)) {
                A16(viewA03);
            } else {
                A18(viewA03, 0);
            }
        }
        A1A(viewA03, 0, 0);
        c4g.A00 = this.A04.A0D(viewA03);
        if (this.A00 == 1) {
            if (A2J()) {
                iA0E2 = A0h() - A0f();
                iA0e = iA0E2 - this.A04.A0E(viewA03);
            } else {
                iA0e = A0e();
                iA0E2 = this.A04.A0E(viewA03) + iA0e;
            }
            if (c4h.A05 == -1) {
                iA0E = c4h.A06;
                iA0g = c4h.A06 - c4g.A00;
            } else {
                iA0g = c4h.A06;
                iA0E = c4h.A06 + c4g.A00;
            }
        } else {
            iA0g = A0g();
            iA0E = this.A04.A0E(viewA03) + iA0g;
            if (c4h.A05 == -1) {
                iA0E2 = c4h.A06;
                iA0e = c4h.A06 - c4g.A00;
            } else {
                iA0e = c4h.A06;
                iA0E2 = c4h.A06 + c4g.A00;
            }
        }
        A1B(viewA03, iA0e, iA0g, iA0E2, iA0E);
        if (c07554d.A02() || c07554d.A01()) {
            c4g.A03 = true;
        }
        c4g.A02 = viewA03.hasFocusable();
    }

    public void A2I(C07684r c07684r, C4H c4h, InterfaceC07524a interfaceC07524a) {
        int i = c4h.A01;
        if (i < 0 || i >= c07684r.A03()) {
            return;
        }
        interfaceC07524a.A3O(i, Math.max(0, c4h.A07));
    }

    public final boolean A2J() {
        return A0a() == 1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07654o
    public final PointF A4L(int i) {
        if (A0W() == 0) {
            return null;
        }
        int i2 = (i < A0p(A0t(0))) != this.A05 ? -1 : 1;
        int i3 = this.A00;
        if (A0G[0].length() == 7) {
            throw new RuntimeException();
        }
        A0G[5] = "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN";
        return i3 == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }
}
