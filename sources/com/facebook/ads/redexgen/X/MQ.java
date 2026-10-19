package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class MQ extends RelativeLayout {
    public static final int A06;
    public static final int A07;
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public final int A00;
    public final int A01;
    public final C2G A02;
    public final YA A03;
    public final MT A04;
    public final boolean A05;

    static {
        int i = (int) (C1148Ku.A02 * 16.0f);
        A09 = i;
        A0A = (int) (C1148Ku.A02 * 8.0f);
        A0D = (int) (C1148Ku.A02 * 44.0f);
        int i2 = (int) (C1148Ku.A02 * 10.0f);
        A08 = i2;
        A07 = i - i2;
        A0E = (int) (C1148Ku.A02 * 75.0f);
        A0B = (int) (C1148Ku.A02 * 25.0f);
        A0F = (int) (C1148Ku.A02 * 45.0f);
        A0C = (int) (C1148Ku.A02 * 15.0f);
        A06 = (int) (C1148Ku.A02 * 16.0f);
    }

    public MQ(MP mp) {
        super(mp.A0C);
        YA ya = mp.A0C;
        this.A03 = ya;
        this.A02 = C2H.A00(ya.A01());
        this.A04 = mp.A02;
        this.A01 = mp.A0B ? A0E : A0F;
        this.A00 = mp.A0B ? A0B : A0C;
        this.A05 = mp.A07;
        setFocusable(true);
        View viewA01 = A01(mp);
        View viewA00 = A00(mp);
        View footerView = getFooterView();
        LV.A0K(viewA01);
        LV.A0K(viewA00);
        LV.A0K(footerView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        layoutParams2.addRule(3, viewA01.getId());
        layoutParams2.addRule(2, footerView.getId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        int i = A09;
        layoutParams3.setMargins(i, 0, i, i);
        addView(viewA01, layoutParams);
        addView(viewA00, layoutParams2);
        addView(footerView, layoutParams3);
        footerView.setVisibility(mp.A08 ? 0 : 8);
    }

    public /* synthetic */ MQ(MP mp, MN mn) {
        this(mp);
    }

    private View A00(MP mp) {
        ImageView imageView = new ImageView(getContext());
        int i = this.A00;
        imageView.setPadding(i, i, i, i);
        imageView.setImageBitmap(C1158Le.A01(mp.A01));
        imageView.setColorFilter(-1);
        int i2 = this.A01;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(mp.A00);
        LV.A0S(imageView, gradientDrawable);
        layoutParams.gravity = 17;
        int i3 = A09;
        layoutParams.setMargins(i3, 0, i3, i3);
        TextView textView = new TextView(getContext());
        LV.A0X(textView, true, 20);
        textView.setTextColor(-14934495);
        textView.setText(mp.A06);
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(i3, 0, i3, i3);
        TextView textView2 = new TextView(getContext());
        LV.A0X(textView2, false, 16);
        textView2.setTextColor(-10459280);
        textView2.setText(mp.A05);
        textView2.setGravity(17);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(i3, 0, i3, i3);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        linearLayout.addView(textView2, layoutParams3);
        if (mp.A09) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            if (!TextUtils.isEmpty(mp.A04)) {
                C1214Ni c1214Ni = new C1214Ni(this.A03);
                int i4 = A0F;
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i4, i4);
                layoutParams4.setMargins(0, 0, A0A, 0);
                c1214Ni.setFullCircleCorners(true);
                new T8(c1214Ni, this.A03).A05(i4, i4).A07(mp.A04);
                linearLayout2.addView(c1214Ni, layoutParams4);
            }
            MV mv = new MV(this.A03);
            mv.setData(mp.A03, EnumC1157Ld.CHECKMARK);
            mv.setSelected(true);
            linearLayout2.addView(mv, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }

    private View A01(MP mp) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        if (mp.A0A) {
            ImageView imageView = new ImageView(getContext());
            int i = A08;
            imageView.setPadding(i, i, i, i);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setImageBitmap(C1158Le.A01(EnumC1157Ld.CROSS));
            imageView.setOnClickListener(new MN(this));
            int i2 = A0D;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
            int i3 = A07;
            layoutParams.setMargins(i3, i3, i3, i3);
            linearLayout.addView(imageView, layoutParams);
        }
        return linearLayout;
    }

    private View getFooterView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(C1158Le.A01(EnumC1157Ld.SETTINGS));
        imageView.setColorFilter(-13272859);
        int i = A06;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.gravity = 17;
        TextView textView = new TextView(getContext());
        LV.A0X(textView, false, 16);
        textView.setTextColor(-13272859);
        int i2 = A0A;
        textView.setPadding(i2, i2, i2, i2);
        textView.setText(this.A02.A0J());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new MO(this));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }
}
