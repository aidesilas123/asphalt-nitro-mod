package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4c, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC07544c {
    public static byte[] A0I;
    public static String[] A0J = {"NGwI4w5wjKKwr8vIXUEBgcadgt82Mvhc", "UEWVJJvMFTFlt7hH7ERCIJOXwkHPD", "VrTEPZjwbsMyuvHOm", "2WwBzOWctlsBfaK16SO", "SN9IkStz5", "kDHla2kaeJhueA2usdy0jZceB2KGO", "Oz8ehwpCKAgd43CqPtwSSE9zN5", "pRsAYaXPUkY6EiG3qKZOmbtQ8"};
    public int A00;
    public AnonymousClass40 A01;
    public AbstractC07664p A02;
    public ED A03;
    public C07764z A04;
    public C07764z A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public boolean A0E;
    public boolean A0F;
    public final InterfaceC07744x A0G;
    public final InterfaceC07744x A0H;

    static {
        A08();
    }

    public AbstractC07544c() {
        Z4 z4 = new Z4(this);
        this.A0G = z4;
        Z3 z3 = new Z3(this);
        this.A0H = z3;
        this.A04 = new C07764z(z4);
        this.A05 = new C07764z(z3);
        this.A09 = false;
        this.A07 = false;
        this.A06 = false;
        this.A0F = true;
        this.A0E = true;
    }

    public static int A00(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(size, Math.max(i2, i3));
            case 1073741824:
                return size;
            default:
                return Math.max(i2, i3);
        }
    }

    public static int A01(int i, int i2, int i3, int i4, boolean z) {
        int iMax = Math.max(0, i - i3);
        int i5 = 0;
        int i6 = 0;
        if (z) {
            if (i4 >= 0) {
                i5 = i4;
                String[] strArr = A0J;
                if (strArr[5].length() != strArr[1].length()) {
                    throw new RuntimeException();
                }
                A0J[6] = "ru0BYCJI67FO4KgBABZqajada";
                i6 = 1073741824;
            } else if (i4 == -1) {
                switch (i2) {
                    case Integer.MIN_VALUE:
                    case 1073741824:
                        i5 = iMax;
                        i6 = i2;
                        break;
                    case 0:
                        i5 = 0;
                        if (A0J[3].length() == 28) {
                            i6 = 0;
                        } else {
                            A0J[7] = "Nw";
                            i6 = 0;
                        }
                        break;
                }
            } else if (i4 == -2) {
                i5 = 0;
                i6 = 0;
            }
        } else if (i4 >= 0) {
            i5 = i4;
            i6 = 1073741824;
        } else if (i4 == -1) {
            i5 = iMax;
            i6 = i2;
        } else if (i4 == -2) {
            i5 = iMax;
            i6 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
        }
        return View.MeasureSpec.makeMeasureSpec(i5, i6);
    }

    private final int A02(View view) {
        return ((C07554d) view.getLayoutParams()).A03.bottom;
    }

    private final int A03(View view) {
        return ((C07554d) view.getLayoutParams()).A03.left;
    }

    private final int A04(View view) {
        return ((C07554d) view.getLayoutParams()).A03.right;
    }

    private final int A05(View view) {
        return ((C07554d) view.getLayoutParams()).A03.top;
    }

    private final int A06(C07614k c07614k, C07684r c07684r) {
        return 0;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        byte[] bArr = {-2, 33, 33, 34, 33, -35, 19, 38, 34, 52, -35, 37, Ascii.RS, 48, -35, Ascii.SI, 34, 32, 54, 32, 41, 34, 47, 19, 38, 34, 52, -35, Ascii.RS, 48, -35, 45, Ascii.RS, 47, 34, 43, 49, -35, Ascii.US, 50, 49, -35, 51, 38, 34, 52, -35, 38, 48, -35, 43, 44, 49, -35, Ascii.RS, -35, 47, 34, Ascii.RS, 41, -35, 32, 37, 38, 41, 33, -21, -35, Ascii.DC2, 43, 35, 38, 41, 49, 34, 47, 34, 33, -35, 38, 43, 33, 34, 53, -9, -35, -5, 8, 8, 9, Ascii.SO, -70, 7, 9, Ascii.DLE, -1, -70, -5, -70, -3, 2, 3, 6, -2, -70, 0, Ascii.FF, 9, 7, -70, 8, 9, 8, -57, -1, Ascii.DC2, 3, Ascii.CR, Ascii.SO, 3, 8, 1, -70, 3, 8, -2, -1, Ascii.DC2, -44, -80, -61, -63, -41, -63, -54, -61, -48, -76, -57, -61, -43, 9, Ascii.US, 37, -48, Ascii.GS, 37, 35, 36, -48, Ascii.US, 38, Ascii.NAK, 34, 34, Ascii.EM, Ascii.DC4, Ascii.NAK, -48, Ascii.US, Ascii.RS, -4, 17, 41, Ascii.US, 37, 36, -13, Ascii.CAN, Ascii.EM, Ascii.FS, Ascii.DC4, 34, Ascii.NAK, Ascii.RS, -40, 2, Ascii.NAK, 19, 41, 19, Ascii.FS, Ascii.NAK, 34, -48, 34, Ascii.NAK, 19, 41, 19, Ascii.FS, Ascii.NAK, 34, -36, -48, 3, 36, 17, 36, Ascii.NAK, -48, 35, 36, 17, 36, Ascii.NAK, -39, -48, -78, -56, -50, 121, -58, -50, -52, -51, 121, -56, -49, -66, -53, -53, -62, -67, -66, 121, -52, -58, -56, -56, -51, -63, -84, -68, -53, -56, -59, -59, -83, -56, -87, -56, -52, -62, -51, -62, -56, -57, 121, -51, -56, 121, -52, -50, -55, -55, -56, -53, -51, 121, -52, -58, -56, -56, -51, -63, 121, -52, -68, -53, -56, -59, -59, -62, -57, -64};
        String[] strArr = A0J;
        if (strArr[2].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A0J[6] = "kyP20liVKsmkdJ";
        A0I = bArr;
    }

    private final void A09(int i) {
        A0C(i, A0t(i));
    }

    private final void A0A(int i) {
        if (A0t(i) != null) {
            this.A01.A0D(i);
        }
    }

    private final void A0B(int i, int i2) {
        View viewA0t = A0t(i);
        if (viewA0t == null) {
            throw new IllegalArgumentException(A07(85, 44, 79) + i + this.A03.toString());
        }
        A09(i);
        A0E(viewA0t, i2);
    }

    private void A0C(int i, View view) {
        this.A01.A0C(i);
    }

    private final void A0D(View view) {
        this.A01.A0F(view);
    }

    private final void A0E(View view, int i) {
        A0F(view, i, (C07554d) view.getLayoutParams());
    }

    private final void A0F(View view, int i, C07554d c07554d) {
        AbstractC07714u abstractC07714uA0F = ED.A0F(view);
        if (abstractC07714uA0F.A0c()) {
            this.A03.A0t.A09(abstractC07714uA0F);
        } else {
            AnonymousClass52 anonymousClass52 = this.A03.A0t;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[0] = "mtQ3Ck4zhf6OC1ISSa3eadAcnNcPftbe";
            anonymousClass52.A0A(abstractC07714uA0F);
        }
        this.A01.A0H(view, i, c07554d, abstractC07714uA0F.A0c());
    }

    private void A0G(View view, int i, boolean z) {
        AbstractC07714u abstractC07714uA0F = ED.A0F(view);
        if (z || abstractC07714uA0F.A0c()) {
            this.A03.A0t.A09(abstractC07714uA0F);
        } else {
            this.A03.A0t.A0A(abstractC07714uA0F);
        }
        C07554d c07554d = (C07554d) view.getLayoutParams();
        if (abstractC07714uA0F.A0i() || abstractC07714uA0F.A0d()) {
            if (abstractC07714uA0F.A0d()) {
                abstractC07714uA0F.A0S();
            } else {
                abstractC07714uA0F.A0O();
            }
            this.A01.A0H(view, i, view.getLayoutParams(), false);
        } else {
            ViewParent parent = view.getParent();
            ED ed = this.A03;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "5ABI9jSeQ";
            if (parent == ed) {
                int iA07 = this.A01.A07(view);
                if (i == -1) {
                    i = this.A01.A05();
                }
                if (iA07 == -1) {
                    throw new IllegalStateException(A07(0, 85, 114) + this.A03.indexOfChild(view) + this.A03.A1I());
                }
                if (iA07 != i) {
                    this.A03.A06.A0B(iA07, i);
                }
            } else {
                this.A01.A0I(view, i, false);
                c07554d.A01 = true;
                AbstractC07664p abstractC07664p = this.A02;
                if (abstractC07664p != null && abstractC07664p.A0F()) {
                    this.A02.A0C(view);
                }
            }
        }
        if (c07554d.A02) {
            abstractC07714uA0F.A0H.invalidate();
            c07554d.A02 = false;
        }
    }

    private final void A0H(View view, Rect rect) {
        ED.A0o(view, rect);
    }

    private void A0J(C07614k c07614k, int i, View view) {
        AbstractC07714u abstractC07714uA0F = ED.A0F(view);
        if (abstractC07714uA0F.A0h()) {
            return;
        }
        if (abstractC07714uA0F.A0b() && !abstractC07714uA0F.A0c() && !this.A03.A04.A0A()) {
            A0A(i);
            c07614k.A0b(abstractC07714uA0F);
        } else {
            A09(i);
            c07614k.A0W(view);
            this.A03.A0t.A0C(abstractC07714uA0F);
        }
    }

    private final void A0K(C07614k c07614k, C07684r c07684r, AccessibilityEvent accessibilityEvent) {
        ED ed = this.A03;
        if (ed == null || accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (A0J[6].length() == 1) {
            throw new RuntimeException();
        }
        String[] strArr = A0J;
        strArr[2] = "A1LbQwkKC8kdEmdjm";
        strArr[4] = "mpAFCzQjd";
        if (!ed.canScrollVertically(1) && !this.A03.canScrollVertically(-1) && !this.A03.canScrollHorizontally(-1) && !this.A03.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        if (A0J[7].length() != 8) {
            A0J[0] = "LKoEdNrfwYhRE769hHSL4lsoF7TmWWKx";
            if (this.A03.A04 == null) {
                return;
            }
        } else if (this.A03.A04 == null) {
            return;
        }
        accessibilityEvent.setItemCount(this.A03.A04.A0D());
    }

    private final void A0L(C07614k c07614k, C07684r c07684r, C07333g c07333g) {
        if (this.A03.canScrollVertically(-1) || this.A03.canScrollHorizontally(-1)) {
            c07333g.A0N(8192);
            c07333g.A0R(true);
        }
        if (this.A03.canScrollVertically(1) || this.A03.canScrollHorizontally(1)) {
            c07333g.A0N(4096);
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[2] = "WKK7ZU1nOyoZ4isR3";
            strArr2[4] = "S1xUaVTVF";
            c07333g.A0R(true);
        }
        c07333g.A0P(C07303d.A00(A0r(c07614k, c07684r), A0q(c07614k, c07684r), A0P(c07614k, c07684r), A06(c07614k, c07684r)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0M(AbstractC07664p abstractC07664p) {
        if (this.A02 == abstractC07664p) {
            this.A02 = null;
        }
    }

    private final boolean A0N() {
        AbstractC07664p abstractC07664p = this.A02;
        return abstractC07664p != null && abstractC07664p.A0F();
    }

    public static boolean A0O(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        switch (mode) {
            case Integer.MIN_VALUE:
                if (size >= i) {
                }
                break;
            case 0:
                break;
            case 1073741824:
                if (size == i) {
                }
                break;
        }
        return false;
    }

    private final boolean A0P(C07614k c07614k, C07684r c07684r) {
        return false;
    }

    private final boolean A0Q(C07614k c07614k, C07684r c07684r, int i, Bundle bundle) {
        ED ed = this.A03;
        if (ed == null) {
            return false;
        }
        int iA0h = 0;
        switch (i) {
            case 4096:
                iA0X = ed.canScrollVertically(1) ? (A0X() - A0g()) - A0d() : 0;
                if (this.A03.canScrollHorizontally(1)) {
                    iA0h = (A0h() - A0e()) - A0f();
                }
                break;
            case 8192:
                iA0X = ed.canScrollVertically(-1) ? -((A0X() - A0g()) - A0d()) : 0;
                if (this.A03.canScrollHorizontally(-1)) {
                    iA0h = -((A0h() - A0e()) - A0f());
                }
                break;
        }
        if (iA0X == 0 && iA0h == 0) {
            return false;
        }
        ED ed2 = this.A03;
        if (A0J[7].length() == 8) {
            throw new RuntimeException();
        }
        A0J[7] = "6TTpYbQ6a4";
        ed2.scrollBy(iA0h, iA0X);
        return true;
    }

    private final boolean A0R(C07614k c07614k, C07684r c07684r, View view, int i, Bundle bundle) {
        return false;
    }

    private boolean A0S(ED ed, int i, int i2) {
        View focusedChild = ed.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int iA0e = A0e();
        int iA0g = A0g();
        int iA0h = A0h() - A0f();
        int iA0X = A0X() - A0d();
        Rect rect = this.A03.A0p;
        A0H(focusedChild, rect);
        if (rect.left - i >= iA0h || rect.right - i <= iA0e || rect.top - i2 >= iA0X || rect.bottom - i2 <= iA0g) {
            return false;
        }
        if (A0J[3].length() == 28) {
            throw new RuntimeException();
        }
        A0J[0] = "D1nd79aIos3YYe4Hq7EzCaafqnQh2NEe";
        return true;
    }

    @Deprecated
    private final boolean A0T(ED ed, View view, View view2) {
        return A0N() || ed.A1v();
    }

    private int[] A0U(View view, Rect rect) {
        int[] iArr = new int[2];
        int iA0e = A0e();
        int iA0g = A0g();
        int iA0h = A0h() - A0f();
        int iA0X = A0X() - A0d();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int iMin = Math.min(0, left - iA0e);
        int iMin2 = Math.min(0, top - iA0g);
        int iMax = Math.max(0, iWidth - iA0h);
        int iMax2 = Math.max(0, iHeight - iA0X);
        if (A0a() != 1) {
            iMax = iMin != 0 ? iMin : Math.min(left - iA0e, iMax);
        } else if (iMax == 0) {
            iMax = Math.max(iMin, iWidth - iA0h);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(top - iA0g, iMax2);
        }
        iArr[0] = iMax;
        iArr[1] = iMin2;
        if (A0J[0].charAt(31) == 'p') {
            throw new RuntimeException();
        }
        A0J[0] = "97vXAXgJ0WxvI5IvBZpOR2Ky1DZNuVnu";
        return iArr;
    }

    public final int A0V() {
        return -1;
    }

    public final int A0W() {
        AnonymousClass40 anonymousClass40 = this.A01;
        if (anonymousClass40 != null) {
            return anonymousClass40.A05();
        }
        return 0;
    }

    public final int A0X() {
        return this.A0A;
    }

    public final int A0Y() {
        return this.A0B;
    }

    public final int A0Z() {
        ED ed = this.A03;
        C4Q adapter = ed != null ? ed.getAdapter() : null;
        if (adapter != null) {
            return adapter.A0D();
        }
        return 0;
    }

    public final int A0a() {
        return C3H.A01(this.A03);
    }

    public final int A0b() {
        return C3H.A02(this.A03);
    }

    public final int A0c() {
        return C3H.A03(this.A03);
    }

    public final int A0d() {
        ED ed = this.A03;
        if (ed != null) {
            return ed.getPaddingBottom();
        }
        return 0;
    }

    public final int A0e() {
        ED ed = this.A03;
        if (ed != null) {
            return ed.getPaddingLeft();
        }
        return 0;
    }

    public final int A0f() {
        ED ed = this.A03;
        if (ed != null) {
            return ed.getPaddingRight();
        }
        return 0;
    }

    public final int A0g() {
        ED ed = this.A03;
        if (ed != null) {
            return ed.getPaddingTop();
        }
        return 0;
    }

    public final int A0h() {
        return this.A0C;
    }

    public final int A0i() {
        return this.A0D;
    }

    public final int A0j(View view) {
        return view.getBottom() + A02(view);
    }

    public final int A0k(View view) {
        return view.getLeft() - A03(view);
    }

    public final int A0l(View view) {
        Rect rect = ((C07554d) view.getLayoutParams()).A03;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public final int A0m(View view) {
        Rect rect = ((C07554d) view.getLayoutParams()).A03;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public final int A0n(View view) {
        return view.getRight() + A04(view);
    }

    public final int A0o(View view) {
        return view.getTop() - A05(view);
    }

    public final int A0p(View view) {
        return ((C07554d) view.getLayoutParams()).A00();
    }

    public int A0q(C07614k c07614k, C07684r c07684r) {
        ED ed = this.A03;
        if (ed == null || ed.A04 == null || !A24()) {
            return 1;
        }
        return this.A03.A04.A0D();
    }

    public int A0r(C07614k c07614k, C07684r c07684r) {
        ED ed = this.A03;
        if (ed == null || ed.A04 == null || !A25()) {
            return 1;
        }
        return this.A03.A04.A0D();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View A0s() {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.ED r0 = r6.A03
            r5 = 0
            if (r0 != 0) goto L6
            return r5
        L6:
            android.view.View r3 = r0.getFocusedChild()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC07544c.A0J
            r0 = 5
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L22
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L22:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC07544c.A0J
            java.lang.String r1 = "iiKud1wfkCloFGZ1U"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L4c
            com.facebook.ads.redexgen.X.40 r4 = r6.A01
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC07544c.A0J
            r0 = 5
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L4d
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC07544c.A0J
            java.lang.String r1 = "7ET4ZuKdeEmot2qkcvXky1gJdqYIXUUX"
            r0 = 0
            r2[r0] = r1
            boolean r0 = r4.A0K(r3)
            if (r0 == 0) goto L5b
        L4c:
            return r5
        L4d:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC07544c.A0J
            java.lang.String r1 = "xPYIlKgRfeB9qWlMIQGlIgoODb"
            r0 = 7
            r2[r0] = r1
            boolean r0 = r4.A0K(r3)
            if (r0 == 0) goto L5b
            goto L4c
        L5b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC07544c.A0s():android.view.View");
    }

    public final View A0t(int i) {
        AnonymousClass40 anonymousClass40 = this.A01;
        if (anonymousClass40 != null) {
            return anonymousClass40.A09(i);
        }
        return null;
    }

    public final View A0u(View view, int i) {
        return null;
    }

    public C07554d A0v(Context context, AttributeSet attributeSet) {
        return new C07554d(context, attributeSet);
    }

    public C07554d A0w(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C07554d ? new C07554d((C07554d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C07554d((ViewGroup.MarginLayoutParams) layoutParams) : new C07554d(layoutParams);
    }

    public final void A0x() {
        AbstractC07664p abstractC07664p = this.A02;
        if (abstractC07664p != null) {
            abstractC07664p.A09();
        }
    }

    public final void A0y() {
        ED ed = this.A03;
        if (ed != null) {
            ed.requestLayout();
        }
    }

    public final void A0z(int i) {
        ED ed = this.A03;
        if (ed != null) {
            ed.A1U(i);
        }
    }

    public final void A10(int i) {
        ED ed = this.A03;
        if (ed != null) {
            ed.A1V(i);
        }
    }

    public final void A11(int i, int i2) {
        this.A0C = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.A0D = mode;
        if (mode == 0 && !ED.A1B) {
            this.A0C = 0;
        }
        this.A0A = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.A0B = mode2;
        if (mode2 != 0 || ED.A1B) {
            return;
        }
        this.A0A = 0;
    }

    public final void A12(int i, int i2) {
        int iA0W = A0W();
        if (iA0W == 0) {
            this.A03.A1b(i, i2);
            return;
        }
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MIN_VALUE;
        for (int i7 = 0; i7 < iA0W; i7++) {
            View viewA0t = A0t(i7);
            Rect rect = this.A03.A0p;
            A0H(viewA0t, rect);
            if (rect.left < i3) {
                i3 = rect.left;
            }
            if (rect.right > i5) {
                i5 = rect.right;
            }
            if (rect.top < i4) {
                i4 = rect.top;
            }
            if (rect.bottom > i6) {
                i6 = rect.bottom;
            }
        }
        this.A03.A0p.set(i3, i4, i5, i6);
        String[] strArr = A0J;
        if (strArr[2].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0J;
        strArr2[2] = "hT857kPIBtMq0qM94";
        strArr2[4] = "qfhhOTku3";
        A15(this.A03.A0p, i, i2);
    }

    public final void A13(int i, int i2) {
        this.A03.setMeasuredDimension(i, i2);
    }

    public final void A14(int i, C07614k c07614k) {
        View viewA0t = A0t(i);
        A0A(i);
        c07614k.A0X(viewA0t);
    }

    public void A15(Rect rect, int i, int i2) {
        A13(A00(i, rect.width() + A0e() + A0f(), A0c()), A00(i2, rect.height() + A0g() + A0d(), A0b()));
    }

    public final void A16(View view) {
        A18(view, -1);
    }

    public final void A17(View view) {
        A19(view, -1);
    }

    public final void A18(View view, int i) {
        A0G(view, i, true);
    }

    public final void A19(View view, int i) {
        A0G(view, i, false);
    }

    public final void A1A(View view, int i, int i2) {
        C07554d c07554d = (C07554d) view.getLayoutParams();
        Rect rectA1D = this.A03.A1D(view);
        int i3 = i + rectA1D.left + rectA1D.right;
        int i4 = i2 + rectA1D.top + rectA1D.bottom;
        int iA01 = A01(A0h(), A0i(), A0e() + A0f() + c07554d.leftMargin + c07554d.rightMargin + i3, c07554d.width, A24());
        int iA012 = A01(A0X(), A0Y(), A0g() + A0d() + c07554d.topMargin + c07554d.bottomMargin + i4, c07554d.height, A25());
        if (A1a(view, iA01, iA012, c07554d)) {
            view.measure(iA01, iA012);
        }
    }

    public final void A1B(View view, int i, int i2, int i3, int i4) {
        C07554d c07554d = (C07554d) view.getLayoutParams();
        Rect rect = c07554d.A03;
        view.layout(rect.left + i + c07554d.leftMargin, rect.top + i2 + c07554d.topMargin, (i3 - rect.right) - c07554d.rightMargin, (i4 - rect.bottom) - c07554d.bottomMargin);
    }

    public final void A1C(View view, C07333g c07333g) {
        AbstractC07714u abstractC07714uA0F = ED.A0F(view);
        if (abstractC07714uA0F == null || abstractC07714uA0F.A0c() || this.A01.A0K(abstractC07714uA0F.A0H)) {
            return;
        }
        A1K(this.A03.A0r, this.A03.A0s, view, c07333g);
    }

    public final void A1D(View view, C07614k c07614k) {
        A0D(view);
        c07614k.A0X(view);
    }

    public final void A1E(View view, boolean z, Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((C07554d) view.getLayoutParams()).A03;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.A03 != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.A03.A0q;
            rectF.set(rect);
            matrix.mapRect(rectF);
            int iFloor = (int) Math.floor(rectF.left);
            int iFloor2 = (int) Math.floor(rectF.top);
            float f2 = rectF.right;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "WbBFuKAltYM";
            rect.set(iFloor, iFloor2, (int) Math.ceil(f2), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public final void A1F(C07333g c07333g) {
        A0L(this.A03.A0r, this.A03.A0s, c07333g);
    }

    public final void A1G(C07614k c07614k) {
        int iA0E = c07614k.A0E();
        for (int i = iA0E - 1; i >= 0; i--) {
            View viewA0F = c07614k.A0F(i);
            AbstractC07714u abstractC07714uA0F = ED.A0F(viewA0F);
            if (!abstractC07714uA0F.A0h()) {
                abstractC07714uA0F.A0Z(false);
                if (abstractC07714uA0F.A0e()) {
                    this.A03.removeDetachedView(viewA0F, false);
                }
                if (this.A03.A05 != null) {
                    this.A03.A05.A0K(abstractC07714uA0F);
                }
                abstractC07714uA0F.A0Z(true);
                c07614k.A0V(viewA0F);
            }
        }
        c07614k.A0L();
        if (iA0E > 0) {
            this.A03.invalidate();
        }
    }

    public final void A1H(C07614k c07614k) {
        for (int iA0W = A0W() - 1; iA0W >= 0; iA0W--) {
            A0J(c07614k, iA0W, A0t(iA0W));
        }
    }

    public final void A1I(C07614k c07614k) {
        for (int iA0W = A0W() - 1; iA0W >= 0; iA0W--) {
            if (!ED.A0F(A0t(iA0W)).A0h()) {
                A14(iA0W, c07614k);
            }
        }
    }

    public void A1J(C07614k c07614k, C07684r c07684r, int i, int i2) {
        this.A03.A1b(i, i2);
    }

    public void A1K(C07614k c07614k, C07684r c07684r, View view, C07333g c07333g) {
        int iA0p = A25() ? A0p(view) : 0;
        int iA0p2 = A24() ? A0p(view) : 0;
        String[] strArr = A0J;
        if (strArr[5].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A0J[3] = "h476R5jl";
        c07333g.A0Q(C07313e.A00(iA0p, 1, iA0p2, 1, false, false));
    }

    public final void A1L(AbstractC07664p abstractC07664p) {
        AbstractC07664p abstractC07664p2 = this.A02;
        if (abstractC07664p2 != null && abstractC07664p != abstractC07664p2 && abstractC07664p2.A0F()) {
            this.A02.A09();
        }
        this.A02 = abstractC07664p;
        abstractC07664p.A0D(this.A03, this);
    }

    public void A1M(ED ed) {
    }

    public final void A1N(ED ed) {
        this.A07 = true;
    }

    public final void A1O(ED ed) {
        A11(View.MeasureSpec.makeMeasureSpec(ed.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(ed.getHeight(), 1073741824));
    }

    public final void A1P(ED ed) {
        if (ed == null) {
            this.A03 = null;
            this.A01 = null;
            this.A0C = 0;
            this.A0A = 0;
        } else {
            this.A03 = ed;
            this.A01 = ed.A01;
            this.A0C = ed.getWidth();
            this.A0A = ed.getHeight();
        }
        this.A0D = 1073741824;
        this.A0B = 1073741824;
    }

    public void A1Q(ED ed, int i, int i2) {
    }

    public void A1R(ED ed, int i, int i2) {
    }

    public void A1S(ED ed, int i, int i2, int i3) {
    }

    public void A1T(ED ed, int i, int i2, Object obj) {
    }

    public final void A1U(ED ed, C07614k c07614k) {
        this.A07 = false;
        A20(ed, c07614k);
    }

    public final void A1V(boolean z) {
        this.A06 = z;
    }

    public final boolean A1W() {
        int iA0W = A0W();
        for (int i = 0; i < iA0W; i++) {
            ViewGroup.LayoutParams layoutParams = A0t(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean A1X() {
        ED ed = this.A03;
        return ed != null && ed.A0B;
    }

    public final boolean A1Y() {
        return this.A0E;
    }

    public final boolean A1Z(int i, Bundle bundle) {
        return A0Q(this.A03.A0r, this.A03.A0s, i, bundle);
    }

    public final boolean A1a(View view, int i, int i2, C07554d c07554d) {
        return (!view.isLayoutRequested() && this.A0F && A0O(view.getWidth(), i, c07554d.width) && A0O(view.getHeight(), i2, c07554d.height)) ? false : true;
    }

    public final boolean A1b(View view, int i, Bundle bundle) {
        return A0R(this.A03.A0r, this.A03.A0s, view, i, bundle);
    }

    public boolean A1c(C07554d c07554d) {
        return c07554d != null;
    }

    public final boolean A1d(ED ed, View view, Rect rect, boolean z) {
        return A1e(ed, view, rect, z, false);
    }

    public final boolean A1e(ED ed, View view, Rect rect, boolean z, boolean z2) {
        int[] iArrA0U = A0U(view, rect);
        int i = iArrA0U[0];
        int i2 = iArrA0U[1];
        if ((z2 && !A0S(ed, i, i2)) || (i == 0 && i2 == 0)) {
            return false;
        }
        if (z) {
            ed.scrollBy(i, i2);
        } else {
            ed.A1f(i, i2);
        }
        return true;
    }

    public final boolean A1f(ED ed, C07684r c07684r, View view, View view2) {
        return A0T(ed, view, view2);
    }

    public final boolean A1g(ED ed, ArrayList<View> arrayList, int i, int i2) {
        return false;
    }

    public int A1h(int i, C07614k c07614k, C07684r c07684r) {
        return 0;
    }

    public int A1i(int i, C07614k c07614k, C07684r c07684r) {
        return 0;
    }

    public int A1j(C07684r c07684r) {
        return 0;
    }

    public int A1k(C07684r c07684r) {
        return 0;
    }

    public int A1l(C07684r c07684r) {
        return 0;
    }

    public int A1m(C07684r c07684r) {
        return 0;
    }

    public int A1n(C07684r c07684r) {
        return 0;
    }

    public int A1o(C07684r c07684r) {
        return 0;
    }

    public Parcelable A1p() {
        return null;
    }

    public View A1q(int i) {
        int iA0W = A0W();
        for (int i2 = 0; i2 < iA0W; i2++) {
            View viewA0t = A0t(i2);
            AbstractC07714u abstractC07714uA0F = ED.A0F(viewA0t);
            if (abstractC07714uA0F != null && abstractC07714uA0F.A0I() == i && !abstractC07714uA0F.A0h() && (this.A03.A0s.A07() || !abstractC07714uA0F.A0c())) {
                return viewA0t;
            }
        }
        return null;
    }

    public View A1r(View view, int i, C07614k c07614k, C07684r c07684r) {
        return null;
    }

    public abstract C07554d A1s();

    public void A1t(int i) {
    }

    public void A1u(int i, int i2, C07684r c07684r, InterfaceC07524a interfaceC07524a) {
    }

    public void A1v(int i, InterfaceC07524a interfaceC07524a) {
    }

    public void A1w(Parcelable parcelable) {
    }

    public void A1x(AccessibilityEvent accessibilityEvent) {
        A0K(this.A03.A0r, this.A03.A0s, accessibilityEvent);
    }

    public void A1y(C07614k c07614k, C07684r c07684r) {
        Log.e(A07(129, 12, 19), A07(141, 67, 101));
    }

    public void A1z(C07684r c07684r) {
    }

    public void A20(ED ed, C07614k c07614k) {
    }

    public void A21(ED ed, C07684r c07684r, int i) {
        Log.e(A07(129, 12, 19), A07(208, 68, 14));
    }

    public void A22(String str) {
        ED ed = this.A03;
        if (ed != null) {
            ed.A1q(str);
        }
    }

    public boolean A23() {
        return false;
    }

    public boolean A24() {
        return false;
    }

    public boolean A25() {
        return false;
    }

    public boolean A26() {
        return false;
    }
}
