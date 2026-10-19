package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1170Lq extends LinearLayout {
    public static byte[] A04;
    public static final int A05;
    public static final int A06;
    public static final int A07;
    public static final int A08;
    public static final int A09;
    public final ImageView A00;
    public final ImageView A01;
    public final C2G A02;
    public final YA A03;

    static {
        A03();
        A08 = (int) (C1148Ku.A02 * 50.0f);
        A05 = (int) (C1148Ku.A02 * 10.0f);
        A06 = (int) (C1148Ku.A02 * 20.0f);
        A09 = (int) (C1148Ku.A02 * 4.0f);
        A07 = (int) (C1148Ku.A02 * 12.0f);
    }

    public C1170Lq(YA ya, int i) {
        super(ya);
        this.A03 = ya;
        this.A02 = C2H.A00(ya.A01());
        setOrientation(0);
        this.A00 = new ImageView(ya);
        this.A01 = new ImageView(ya);
        A04(i);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{118, 83};
    }

    private void A04(int i) {
        A05(this.A00, EnumC1157Ld.AD_CHOICES_ICON);
        if (i != 2) {
            int i2 = A05;
            setPadding(i2, i2, i2, i2);
            A05(this.A01, i == 1 ? EnumC1157Ld.AN_INFO_ICON : EnumC1157Ld.DEFAULT_INFO_ICON);
            int i3 = A06;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, i3);
            layoutParams.gravity = 17;
            addView(this.A01, layoutParams);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i3, i3);
            layoutParams2.setMargins(A09, 0, 0, 0);
            layoutParams2.gravity = 17;
            addView(this.A00, layoutParams2);
            return;
        }
        int i4 = A05;
        setPadding(i4, i4 / 3, i4, i4 / 3);
        TextView textView = new TextView(this.A03);
        textView.setText(A02(0, 2, 108));
        textView.setTextColor(-1);
        textView.setPadding(0, i4 / 2, i4 / 2, i4 / 2);
        LV.A0X(textView, true, 13);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        addView(textView, layoutParams3);
        int i5 = A07;
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i5, i5);
        layoutParams4.gravity = 16;
        addView(this.A00, layoutParams4);
    }

    public static void A05(ImageView imageView, EnumC1157Ld enumC1157Ld) {
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(C1158Le.A01(enumC1157Ld));
        imageView.setColorFilter(-1);
    }

    public void setAdDetails(C1X c1x, String str, C1094In c1094In, InterfaceC1173Lt interfaceC1173Lt) {
        setOnClickListener(new ViewOnClickListenerC1169Lp(this, c1094In, interfaceC1173Lt, str, c1x));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(A08);
        gradientDrawable.setColor(i);
        LV.A0S(this, gradientDrawable);
    }

    public void setIconColors(int i) {
        this.A00.setColorFilter(i);
        this.A01.setColorFilter(i);
    }
}
