package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ZB extends AbstractC07664p {
    public static byte[] A06;
    public PointF A02;
    public final float A03;
    public final LinearInterpolator A05 = new LinearInterpolator();
    public final DecelerateInterpolator A04 = new DecelerateInterpolator();
    public int A00 = 0;
    public int A01 = 0;

    static {
        A06();
    }

    public ZB(Context context) {
        this.A03 = A0J(context.getResources().getDisplayMetrics());
    }

    private final int A00() {
        PointF pointF = this.A02;
        if (pointF == null || pointF.y == 0.0f) {
            return 0;
        }
        return this.A02.y > 0.0f ? 1 : -1;
    }

    private int A01(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    private final int A03(View view, int i) {
        AbstractC07544c abstractC07544cA08 = A08();
        if (abstractC07544cA08 == null || !abstractC07544cA08.A25()) {
            return 0;
        }
        C07554d c07554d = (C07554d) view.getLayoutParams();
        return A0N(abstractC07544cA08.A0o(view) - c07554d.topMargin, abstractC07544cA08.A0j(view) + c07554d.bottomMargin, abstractC07544cA08.A0g(), abstractC07544cA08.A0X() - abstractC07544cA08.A0d(), i);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A06 = new byte[]{41, Ascii.FF, Ascii.VT, 0, 4, Ascii.ETB, 54, 8, 10, 10, 17, Ascii.CR, 54, 6, Ascii.ETB, 10, 9, 9, 0, Ascii.ETB, Ascii.NAK, 35, 57, 108, 63, 36, 35, 57, 32, 40, 108, 35, 58, 41, 62, 62, 37, 40, 41, 108, 47, 35, 33, 60, 57, 56, 41, Ascii.US, 47, 62, 35, 32, 32, Ascii.SUB, 41, 47, 56, 35, 62, 10, 35, 62, Ascii.FS, 35, 63, 37, 56, 37, 35, 34, 108, 59, 36, 41, 34, 108, 56, 36, 41, 108, 0, 45, 53, 35, 57, 56, 1, 45, 34, 45, 43, 41, 62, 108, 40, 35, 41, 63, 108, 34, 35, 56, 108, 37, 33, 60, 32, 41, 33, 41, 34, 56, 108, 42, 55, 56, 41, 121, 41, 43, 60, 63, 60, 43, 60, 55, 58, 60, 121, 42, 49, 54, 44, 53, 61, 121, 59, 60, 121, 54, 55, 60, 121, 54, 63, 121, 45, 49, 60, 121, 58, 54, 55, 42, 45, 56, 55, 45, 42, 121, 61, 60, 63, 48, 55, 60, 61, 121, 48, 55, 121, 10, 52, 54, 54, 45, 49, 10, 58, 43, 54, 53, 53, 60, 43, 117, 121, 42, 45, 56, 43, 45, 48, 55, 62, 121, 46, 48, 45, 49, 121, 10, Ascii.ETB, Ascii.CAN, 9, 6};
    }

    private final void A07(C07644n c07644n) {
        PointF pointFA0P = A0P(A07());
        if (pointFA0P == null || (pointFA0P.x == 0.0f && pointFA0P.y == 0.0f)) {
            c07644n.A03(A07());
            A09();
            return;
        }
        A0B(pointFA0P);
        this.A02 = pointFA0P;
        this.A00 = (int) (pointFA0P.x * 10000.0f);
        this.A01 = (int) (pointFA0P.y * 10000.0f);
        c07644n.A04((int) (this.A00 * 1.2f), (int) (this.A01 * 1.2f), (int) (A0L(10000) * 1.2f), this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07664p
    public final void A0G() {
        this.A01 = 0;
        this.A00 = 0;
        this.A02 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07664p
    public final void A0H(int i, int i2, C07684r c07684r, C07644n c07644n) {
        if (A06() == 0) {
            A09();
            return;
        }
        this.A00 = A01(this.A00, i);
        int iA01 = A01(this.A01, i2);
        this.A01 = iA01;
        if (this.A00 == 0 && iA01 == 0) {
            A07(c07644n);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07664p
    public void A0I(View view, C07684r c07684r, C07644n c07644n) {
        int iA0O = A0O(view, A0K());
        int iA03 = A03(view, A00());
        int iA0M = A0M((int) Math.sqrt((iA0O * iA0O) + (iA03 * iA03)));
        if (iA0M > 0) {
            c07644n.A04(-iA0O, -iA03, iA0M, this.A04);
        }
    }

    public float A0J(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int A0K() {
        PointF pointF = this.A02;
        if (pointF == null || pointF.x == 0.0f) {
            return 0;
        }
        return this.A02.x > 0.0f ? 1 : -1;
    }

    public int A0L(int i) {
        return (int) Math.ceil(Math.abs(i) * this.A03);
    }

    public final int A0M(int i) {
        return (int) Math.ceil(((double) A0L(i)) / 0.3356d);
    }

    public final int A0N(int i, int i2, int i3, int i4, int i5) {
        switch (i5) {
            case -1:
                return i3 - i;
            case 0:
                int i6 = i3 - i;
                if (i6 > 0) {
                    return i6;
                }
                int i7 = i4 - i2;
                if (i7 < 0) {
                    return i7;
                }
                return 0;
            case 1:
                return i4 - i2;
            default:
                throw new IllegalArgumentException(A04(113, 93, 122));
        }
    }

    public int A0O(View view, int i) {
        AbstractC07544c abstractC07544cA08 = A08();
        if (abstractC07544cA08 == null || !abstractC07544cA08.A24()) {
            return 0;
        }
        C07554d c07554d = (C07554d) view.getLayoutParams();
        return A0N(abstractC07544cA08.A0k(view) - c07554d.leftMargin, abstractC07544cA08.A0n(view) + c07554d.rightMargin, abstractC07544cA08.A0e(), abstractC07544cA08.A0h() - abstractC07544cA08.A0f(), i);
    }

    public PointF A0P(int i) {
        Object objA08 = A08();
        if (objA08 instanceof InterfaceC07654o) {
            return ((InterfaceC07654o) objA08).A4L(i);
        }
        Log.w(A04(0, 20, 70), A04(20, 93, 111) + InterfaceC07654o.class.getCanonicalName());
        return null;
    }
}
