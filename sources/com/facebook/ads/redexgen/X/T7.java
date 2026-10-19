package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class T7 extends C2S {
    public static byte[] A07;
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public final LinearLayout A00;
    public final RelativeLayout A01;
    public final AbstractC1566aS A02;
    public final YA A03;
    public final InterfaceC1086If A04;
    public final LN A05;
    public final InterfaceC1173Lt A06;

    static {
        A06();
        A0B = (int) (C2S.A08 * 12.0f);
        A0C = (int) (C2S.A08 * 84.0f);
        A0A = (int) (C2S.A08 * 14.0f);
        A08 = (int) (C2S.A08 * 8.0f);
        A09 = C07052d.A01(-1, 77);
    }

    public T7(YA ya, AbstractC1566aS abstractC1566aS, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt) {
        super(ya);
        LN ln = new LN();
        this.A05 = ln;
        this.A03 = ya;
        this.A02 = abstractC1566aS;
        this.A04 = interfaceC1086If;
        this.A06 = interfaceC1173Lt;
        ln.A05();
        setRadius(20.0f);
        setMaxCardElevation(75.0f);
        RelativeLayout relativeLayout = new RelativeLayout(ya);
        this.A01 = relativeLayout;
        C1221Np.A00(ya, relativeLayout, abstractC1566aS.A0v().A0D().A07());
        LinearLayout linearLayout = new LinearLayout(ya);
        this.A00 = linearLayout;
        linearLayout.setOrientation(1);
        A05();
        A04();
        relativeLayout.addView(linearLayout, new RelativeLayout.LayoutParams(-1, -1));
        addView(relativeLayout, new FrameLayout.LayoutParams(-1, -1));
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        T3 t3 = new T3(this.A03, EnumC1270Pm.A04.A02(), this.A02.A0u().A01(), this.A02.A0v().A0F().A06(), this.A04, this.A06, null, this.A05, this.A02.A0x());
        t3.setViewShowsOverMedia(true);
        LV.A0G(1001, t3);
        t3.setCta(this.A02.A0v().A0F(), this.A02.A11(), new HashMap(), null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int i = A0B;
        t3.setPadding(i, i, i, i);
        layoutParams.setMargins(i, i, i, i * 2);
        this.A00.addView(t3, layoutParams);
    }

    private void A05() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A03);
        C1214Ni c1214Ni = new C1214Ni(this.A03);
        T8 t8 = new T8(c1214Ni, this.A03);
        int i = A0C;
        t8.A05(i, i).A07(this.A02.A0z().A01());
        c1214Ni.setFullCircleCorners(true);
        LV.A0M(c1214Ni, 0);
        LV.A0K(c1214Ni);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        int i2 = A0B;
        layoutParams.setMargins(i2, i2, i2, i2);
        layoutParams.addRule(14);
        relativeLayout.addView(c1214Ni, layoutParams);
        TextView textView = new TextView(this.A03);
        LV.A0K(textView);
        textView.setTextColor(this.A02.A0u().A01().A06(true));
        textView.setText(this.A02.A0v().A0E().A06());
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(3, c1214Ni.getId());
        relativeLayout.addView(textView, layoutParams2);
        LinearLayout linearLayout = new LinearLayout(this.A03);
        LV.A0K(linearLayout);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(i2, 0, i2, i2);
        layoutParams3.addRule(14);
        layoutParams3.addRule(3, textView.getId());
        relativeLayout.addView(linearLayout, layoutParams3);
        C1216Nk c1216Nk = new C1216Nk(this.A03, A0A, 5, A09, -1);
        c1216Nk.setGravity(16);
        linearLayout.addView(c1216Nk, new LinearLayout.LayoutParams(-2, -1));
        TextView textView2 = new TextView(this.A03);
        textView2.setTextColor(this.A02.A0u().A01().A06(true));
        textView2.setGravity(16);
        textView2.setIncludeFontPadding(false);
        LV.A0X(textView2, false, 14);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.leftMargin = A08;
        linearLayout.addView(textView2, layoutParams4);
        if (TextUtils.isEmpty(this.A02.A0v().A0E().A03())) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
            c1216Nk.setRating(Float.parseFloat(this.A02.A0v().A0E().A03()));
            if (this.A02.A0v().A0E().A02() != null) {
                textView2.setText(A03(0, 1, 20) + NumberFormat.getNumberInstance().format(Integer.parseInt(this.A02.A0v().A0E().A02())) + A03(1, 1, 41));
            }
        }
        TextView textView3 = new TextView(this.A03);
        textView3.setTextColor(this.A02.A0u().A01().A06(true));
        textView3.setText(this.A02.A0v().A0E().A01());
        textView3.setGravity(17);
        textView3.setPadding(i2, i2, i2, i2);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(14);
        layoutParams5.addRule(3, linearLayout.getId());
        relativeLayout.addView(textView3, layoutParams5);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams6.gravity = 4;
        layoutParams6.weight = 0.8f;
        this.A00.addView(relativeLayout, layoutParams6);
    }

    public static void A06() {
        A07 = new byte[]{110, -124};
    }
}
