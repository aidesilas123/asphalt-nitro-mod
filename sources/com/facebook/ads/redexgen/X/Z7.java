package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Z7 implements InterfaceC07513z {
    public static byte[] A01;
    public static String[] A02 = {"m0v39bkLL0n2S0xNgN89hz2dGOcTpwho", "Je1TSnUfgjz87J45b10M9zAxXIUpZahJ", "5NPz60Ycb2xlrnlJbjQuqitLPDDjbzHA", "GN4TkK3T6zCNiBjoupvxTPY", "uEyRXI1LEgEguUOEBvXDLSZ", "uM6injuc1j2LJ4wHPsuMaMxVec9yzmkB", "WB5Y9xOLXhFok7BjZ8qu5ygjzkxXvdjS", "QTx8NC78KyDJtqbkFzNokRxLjqTFyIiz"};
    public final /* synthetic */ ED A00;

    static {
        A01();
    }

    public Z7(ED ed) {
        this.A00 = ed;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 37);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-39, -9, 2, 2, -5, -6, -74, -9, 10, 10, -9, -7, -2, -74, 5, 4, -74, -9, -74, -7, -2, -1, 2, -6, -74, Ascii.CR, -2, -1, -7, -2, -74, -1, 9, -74, 4, 5, 10, -74, -6, -5, 10, -9, -7, -2, -5, -6, -48, -74, -75, -77, -66, -66, -73, -74, 114, -74, -73, -58, -77, -75, -70, 114, -63, -64, 114, -77, -64, 114, -77, -66, -60, -73, -77, -74, -53, 114, -74, -73, -58, -77, -75, -70, -73, -74, 114, -75, -70, -69, -66, -74, 114};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final void A3a(View view, int i, ViewGroup.LayoutParams layoutParams) {
        AbstractC07714u abstractC07714uA0F = ED.A0F(view);
        if (abstractC07714uA0F != null) {
            if (!abstractC07714uA0F.A0e() && !abstractC07714uA0F.A0h()) {
                throw new IllegalArgumentException(A00(0, 48, 113) + abstractC07714uA0F + this.A00.A1I());
            }
            abstractC07714uA0F.A0P();
        }
        this.A00.attachViewToParent(view, i, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final void A52(int i) {
        AbstractC07714u abstractC07714uA0F;
        View viewA6H = A6H(i);
        if (viewA6H != null && (abstractC07714uA0F = ED.A0F(viewA6H)) != null) {
            if (abstractC07714uA0F.A0e() && !abstractC07714uA0F.A0h()) {
                throw new IllegalArgumentException(A00(48, 43, 45) + abstractC07714uA0F + this.A00.A1I());
            }
            abstractC07714uA0F.A0T(256);
        }
        this.A00.detachViewFromParent(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final View A6H(int i) {
        return this.A00.getChildAt(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final int A6I() {
        return this.A00.getChildCount();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final AbstractC07714u A6L(View view) {
        return ED.A0F(view);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final int A8d(View view) {
        return this.A00.indexOfChild(view);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final void ABG(View view) {
        AbstractC07714u abstractC07714uA0F = ED.A0F(view);
        if (abstractC07714uA0F != null) {
            abstractC07714uA0F.A07(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final void ABn(View view) {
        AbstractC07714u abstractC07714uA0F = ED.A0F(view);
        if (abstractC07714uA0F != null) {
            abstractC07714uA0F.A08(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final void AEW() {
        int iA6I = A6I();
        for (int i = 0; i < iA6I; i++) {
            View viewA6H = A6H(i);
            this.A00.A1j(viewA6H);
            viewA6H.clearAnimation();
        }
        this.A00.removeAllViews();
        String[] strArr = A02;
        if (strArr[3].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        A02[2] = "YVtNrV2twtC96zFGqk3M5li58NeZhLji";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final void AEa(int i) {
        View childAt = this.A00.getChildAt(i);
        if (childAt != null) {
            this.A00.A1j(childAt);
            childAt.clearAnimation();
        }
        ED ed = this.A00;
        if (A02[2].charAt(25) == 'R') {
            throw new RuntimeException();
        }
        A02[2] = "BurwQQkBxJzMJJK1acCycPqXpvrCcXzS";
        ed.removeViewAt(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07513z
    public final void addView(View view, int i) {
        this.A00.addView(view, i);
        this.A00.A1i(view);
    }
}
