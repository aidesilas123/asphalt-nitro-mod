package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4p, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC07664p {
    public static byte[] A07;
    public static String[] A08 = {"ffTcX10Z9", "veDPHJ", "R", "iWatF5LLo", "0slLts", "p92m", "9", "eFvKPH9TFpfstHyCObyNN72zUjBGeH"};
    public View A01;
    public AbstractC07544c A02;
    public ED A03;
    public boolean A04;
    public boolean A05;
    public int A00 = -1;
    public final C07644n A06 = new C07644n(0, 0);

    static {
        A03();
    }

    private final int A00(View view) {
        return this.A03.A1B(view);
    }

    private final View A01(int i) {
        return this.A03.A06.A1q(i);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 28);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        byte[] bArr = {78, 105, 113, 102, 107, 110, 99, 39, 115, 102, 117, 96, 98, 115, 39, 119, 104, 116, 110, 115, 110, 104, 105, Ascii.SYN, 39, 53, 53, 35, 34, 102, 41, 48, 35, 52, 102, 50, 39, 52, 33, 35, 50, 102, 54, 41, 53, 47, 50, 47, 41, 40, 102, 49, 46, 47, 42, 35, 102, 53, 43, 41, 41, 50, 46, 102, 53, 37, 52, 41, 42, 42, 47, 40, 33, 104, 78, 121, Ascii.DEL, 101, Ascii.DEL, 112, 121, 110, 74, 117, 121, 107};
        String[] strArr = A08;
        if (strArr[4].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A08[7] = "8BqCBekg5p6xdwXQXpIxknueaPhzjw";
        A07 = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(int i, int i2) {
        ED ed = this.A03;
        if (!this.A05 || this.A00 == -1 || ed == null) {
            A09();
        }
        this.A04 = false;
        View view = this.A01;
        if (view != null) {
            int iA00 = A00(view);
            int i3 = this.A00;
            String[] strArr = A08;
            if (strArr[4].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[3] = "1zDtC4ICw";
            strArr2[0] = "WYaFIbeKL";
            if (iA00 == i3) {
                A0I(this.A01, ed.A0s, this.A06);
                C07644n c07644n = this.A06;
                if (A08[5].length() != 9) {
                    String[] strArr3 = A08;
                    strArr3[6] = "M";
                    strArr3[2] = "Q";
                    c07644n.A05(ed);
                    A09();
                } else {
                    A08[5] = "sldJFA0K947j";
                    c07644n.A05(ed);
                    A09();
                }
            } else {
                Log.e(A02(74, 12, 0), A02(23, 51, 90));
                this.A01 = null;
            }
        }
        if (this.A05) {
            A0H(i, i2, ed.A0s, this.A06);
            boolean zA06 = this.A06.A06();
            this.A06.A05(ed);
            if (zA06) {
                if (!this.A05) {
                    A09();
                } else {
                    this.A04 = true;
                    ed.A08.A07();
                }
            }
        }
    }

    public final int A06() {
        return this.A03.A06.A0W();
    }

    public final int A07() {
        return this.A00;
    }

    public final AbstractC07544c A08() {
        return this.A02;
    }

    public final void A09() {
        if (this.A05) {
            A0G();
            this.A03.A0s.A0F = -1;
            this.A01 = null;
            this.A00 = -1;
            this.A04 = false;
            this.A05 = false;
            this.A02.A0M(this);
            this.A02 = null;
            this.A03 = null;
        }
    }

    public final void A0A(int i) {
        this.A00 = i;
    }

    public final void A0B(PointF pointF) {
        float fSqrt = (float) Math.sqrt((pointF.x * pointF.x) + (pointF.y * pointF.y));
        pointF.x /= fSqrt;
        pointF.y /= fSqrt;
    }

    public final void A0C(View view) {
        if (A00(view) == A07()) {
            this.A01 = view;
        }
    }

    public final void A0D(ED ed, AbstractC07544c abstractC07544c) {
        this.A03 = ed;
        this.A02 = abstractC07544c;
        if (this.A00 == -1) {
            throw new IllegalArgumentException(A02(0, 23, 27));
        }
        ed.A0s.A0F = this.A00;
        this.A05 = true;
        this.A04 = true;
        this.A01 = A01(A07());
        this.A03.A08.A07();
    }

    public final boolean A0E() {
        return this.A04;
    }

    public final boolean A0F() {
        return this.A05;
    }

    public abstract void A0G();

    public abstract void A0H(int i, int i2, C07684r c07684r, C07644n c07644n);

    public abstract void A0I(View view, C07684r c07684r, C07644n c07644n);
}
