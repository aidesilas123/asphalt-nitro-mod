package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class PB extends LinearLayout {
    public static final int A04 = (int) (C1148Ku.A02 * 32.0f);
    public static final int A05 = (int) (C1148Ku.A02 * 8.0f);
    public TextView A00;
    public TextView A01;
    public C1214Ni A02;
    public final YA A03;

    public PB(YA ya) {
        super(ya);
        this.A03 = ya;
        A00(ya);
    }

    private final void A00(YA ya) {
        setGravity(16);
        C1214Ni c1214Ni = new C1214Ni(ya);
        this.A02 = c1214Ni;
        c1214Ni.setFullCircleCorners(true);
        int i = A04;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.setMargins(0, 0, A05, 0);
        addView(this.A02, layoutParams);
        LinearLayout linearLayout = new LinearLayout(ya);
        linearLayout.setOrientation(1);
        this.A00 = new TextView(ya);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        LV.A0X(this.A00, true, 16);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setSingleLine(true);
        TextView textView = new TextView(ya);
        this.A01 = textView;
        LV.A0X(textView, false, 14);
        linearLayout.addView(this.A00);
        linearLayout.addView(this.A01);
        addView(linearLayout, layoutParams2);
    }

    public final void A01() {
        this.A02.setImageBitmap(null);
        this.A00.setText("");
        this.A01.setText("");
    }

    public final void A02(int i, int i2) {
        this.A00.setTextColor(i);
        this.A01.setTextColor(i2);
    }

    public void setPageDetails(C1X c1x) {
        T8 t8 = new T8(this.A02, this.A03);
        int i = A04;
        t8.A05(i, i);
        t8.A07(c1x.A01());
        this.A00.setText(c1x.A02());
        this.A01.setText(c1x.A03());
    }
}
