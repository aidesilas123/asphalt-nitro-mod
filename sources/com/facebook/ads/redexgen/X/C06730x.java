package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.view.View;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0x, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06730x extends ViewOnTouchListenerC06841i implements P9 {
    public static byte[] A07;
    public static String[] A08 = {"T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw", "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ", "Zw8mt4VncD", "79VYCrnrWW", "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE", "jaMauIT7sdi", "OgIH7ZaBRtH9hoDgrnw", "xZmsCngT77DU5lblEiekqTVKPqNdsast"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public InterfaceC1179Lz A04;
    public boolean A05;
    public final C0895Ab A06;

    static {
        A03();
    }

    public C06730x(YA ya) {
        super(ya);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0895Ab(ya, new P6(), new P5());
        A02();
    }

    public C06730x(YA ya, AttributeSet attributeSet) {
        super(ya, attributeSet);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0895Ab(ya, new P6(), new P5());
        A02();
    }

    public C06730x(YA ya, AttributeSet attributeSet, int i) {
        super(ya, attributeSet, i);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new C0895Ab(ya, new P6(), new P5());
        A02();
    }

    private int A00(int i) {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - (this.A00 * 2);
        int iA0D = getAdapter().A0D();
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
        while (i3 > i) {
            i2++;
            if (i2 >= iA0D) {
                return i;
            }
            i3 = (int) ((measuredWidth - (i2 * r6)) / (i2 + 0.333f));
        }
        return i3;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 28);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        this.A06.A2E(0);
        setLayoutManager(this.A06);
        setSaveEnabled(false);
        setSnapDelegate(this);
        LV.A0K(this);
    }

    public static void A03() {
        A07 = new byte[]{-6, -7, -37, -20, -14, -16, -50, -13, -20, -7, -14, -16, -17};
    }

    private void A04(int i, int i2) {
        if (i == this.A03 && i2 == this.A02) {
            return;
        }
        this.A03 = i;
        if (A08[1].charAt(11) == 'q') {
            throw new RuntimeException();
        }
        A08[6] = "hNBaptvkpj";
        this.A02 = i2;
        if (this.A04 != null) {
            throw new NullPointerException(A01(0, 13, 111));
        }
    }

    @Override // com.facebook.ads.redexgen.X.ViewOnTouchListenerC06841i
    public final void A23(int i, boolean z) {
        super.A23(i, z);
        A04(i, 0);
    }

    @Override // com.facebook.ads.redexgen.X.P9
    public final int A7b(int i) {
        int iAbs = Math.abs(i);
        if (iAbs <= ((ViewOnTouchListenerC06841i) this).A06) {
            return 0;
        }
        int i2 = this.A01;
        if (i2 == 0) {
            return 1;
        }
        return 1 + (iAbs / i2);
    }

    public int getChildSpacing() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.ED, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iA0E = this.A05 ? (((int) C1148Ku.A02) * IP.A0E(getContext())) + paddingTop : Math.round(getMeasuredWidth() / 1.91f);
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                iA0E = Math.min(View.MeasureSpec.getSize(i2), iA0E);
                break;
            case 1073741824:
                iA0E = View.MeasureSpec.getSize(i2);
                break;
        }
        int i3 = iA0E - paddingTop;
        int iMin = this.A05 ? Math.min(C1175Lv.A09, i3) : A00(i3);
        setMeasuredDimension(getMeasuredWidth(), iMin + paddingTop);
        if (this.A05) {
            return;
        }
        setChildWidth((this.A00 * 2) + iMin);
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public void setAdapter(C4Q c4q) {
        this.A06.A2L(c4q == null ? -1 : c4q.hashCode());
        super.setAdapter(c4q);
    }

    public void setChildSpacing(int i) {
        this.A00 = i;
    }

    public void setChildWidth(int i) {
        this.A01 = i;
        int measuredWidth = getMeasuredWidth();
        this.A06.A2M((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - this.A01) / 2);
        this.A06.A2K(((double) this.A01) / ((double) measuredWidth));
    }

    public void setCurrentPosition(int i) {
        A23(i, false);
    }

    public void setOnPageChangedListener(InterfaceC1179Lz interfaceC1179Lz) {
        this.A04 = interfaceC1179Lz;
    }

    public void setShowTextInCarousel(boolean z) {
        this.A05 = z;
    }
}
