package com.facebook.ads.redexgen.X;

import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1216Nk extends LinearLayout {
    public static final int A06 = (int) (C1148Ku.A02 * 4.0f);
    public int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final YA A04;
    public final C1217Nl[] A05;

    public C1216Nk(YA ya, int i, int i2, int i3, int i4) {
        super(ya);
        this.A00 = A06;
        this.A04 = ya;
        setOrientation(0);
        this.A03 = i;
        this.A01 = i3;
        this.A02 = i4;
        this.A05 = new C1217Nl[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            this.A05[i5] = A00();
            addView(this.A05[i5]);
        }
        A01();
    }

    private C1217Nl A00() {
        C1217Nl c1217Nl = new C1217Nl(this.A04, this.A01, this.A02);
        int i = this.A03;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.gravity = 16;
        c1217Nl.setLayoutParams(layoutParams);
        return c1217Nl;
    }

    private void A01() {
        int i = 0;
        while (true) {
            C1217Nl[] c1217NlArr = this.A05;
            if (i >= c1217NlArr.length) {
                requestLayout();
                return;
            } else {
                ((LinearLayout.LayoutParams) c1217NlArr[i].getLayoutParams()).leftMargin = i == 0 ? 0 : this.A00;
                i++;
            }
        }
    }

    private void A02(float f2) {
        for (int i = 0; i < this.A05.length; i++) {
            float fMin = Math.min(1.0f, f2 - i);
            if (fMin < 0.0f) {
                fMin = 0.0f;
            }
            this.A05[i].setFillRatio(fMin);
        }
    }

    public void setItemSpacing(int i) {
        this.A00 = i;
        A01();
    }

    public void setRating(float f2) {
        A02(f2);
    }
}
