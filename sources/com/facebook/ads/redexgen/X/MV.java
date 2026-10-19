package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class MV extends LinearLayout {
    public boolean A00;
    public final ImageView A01;
    public final TextView A02;
    public static final int A04 = (int) (C1148Ku.A02 * 16.0f);
    public static final int A05 = (int) (C1148Ku.A02 * 12.0f);
    public static final int A06 = (int) (C1148Ku.A02 * 12.0f);
    public static final int A03 = (int) (C1148Ku.A02 * 16.0f);

    public MV(YA ya) {
        super(ya);
        this.A00 = false;
        setOrientation(0);
        int i = A04;
        int i2 = A05;
        setPadding(i, i2, i, i2);
        ImageView imageView = new ImageView(getContext());
        this.A01 = imageView;
        int i3 = A03;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 17;
        TextView textView = new TextView(getContext());
        this.A02 = textView;
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        addView(imageView, layoutParams);
        addView(textView, layoutParams2);
        A00();
    }

    private void A00() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(this.A00 ? -13272859 : -1315344);
        gradientDrawable.setCornerRadius(50.0f);
        LV.A0S(this, gradientDrawable);
        LV.A0X(this.A02, false, 14);
        int i = this.A00 ? -1 : -10459280;
        this.A02.setTextColor(i);
        this.A01.setColorFilter(i);
    }

    public final void A01() {
        setSelected(!this.A00);
    }

    public void setData(String str, EnumC1157Ld enumC1157Ld) {
        this.A02.setText(str);
        if (enumC1157Ld != null) {
            this.A01.setImageBitmap(C1158Le.A01(enumC1157Ld));
            this.A01.setVisibility(0);
            this.A02.setPadding(A06, 0, 0, 0);
        } else {
            this.A01.setVisibility(8);
            this.A02.setPadding(0, 0, 0, 0);
        }
        A00();
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.A00 = z;
        A00();
    }
}
