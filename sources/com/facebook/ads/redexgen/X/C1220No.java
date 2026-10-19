package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.No, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1220No extends LinearLayout {
    public static byte[] A04;
    public static String[] A05 = {"lF8IVPZcS3mZAefsIaNZ6E9xMmjOqdH7", "idkW2", "HbWJiF6R60B06srsOI5ot4Pv3KsUxfPN", "7f3O1w3Qg3dv0DYXPvEPDd2nNc", "nnNATfNTHr6hSEkqMWy2MP3i9vksRg0T", "pai30RxYeYeDatKriEp6xPPXjxDmZE6E", "MhBAxeK5XElhMNsb", "N4hTYih9SgQSzhMEA04rsaAJRIerHLwS"};
    public static final float A06;
    public static final int A07;
    public static final int A08;
    public final TextView A00;
    public final TextView A01;
    public final TextView A02;
    public final boolean A03;

    static {
        A01();
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        A06 = f2;
        A08 = (int) (6.0f * f2);
        A07 = (int) (f2 * 8.0f);
    }

    public C1220No(YA ya, C1M c1m, boolean z, int i, int i2, int i3) {
        super(ya);
        setOrientation(1);
        TextView textView = new TextView(ya);
        this.A02 = textView;
        LV.A0X(textView, true, i);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        int i4 = A08;
        textView.setLineSpacing(i4, 1.0f);
        TextView textView2 = new TextView(ya);
        this.A01 = textView2;
        TextView textView3 = new TextView(ya);
        this.A00 = textView3;
        LV.A0X(textView3, false, i2);
        textView3.setEllipsize(TextUtils.TruncateAt.END);
        textView3.setLineSpacing(i4, 1.0f);
        boolean zA0z = IP.A0z(ya);
        this.A03 = zA0z;
        int i5 = zA0z ? -2 : -1;
        addView(textView, new LinearLayout.LayoutParams(i5, -2));
        addView(textView2, new LinearLayout.LayoutParams(i5, -2));
        textView2.setVisibility(8);
        A02(c1m, z);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i5, -2);
        layoutParams.setMargins(0, i3, 0, 0);
        addView(textView3, layoutParams);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C1220No(YA ya, C1M c1m, boolean z, boolean z2, boolean z3) {
        int i = z2 ? 18 : 22;
        int i2 = z2 ? 14 : 16;
        int i3 = A07;
        this(ya, c1m, z, i, i2, z3 ? i3 / 2 : i3);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 69);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        if (A05[4].charAt(18) != 'y') {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[7] = "1IRXFHeJ8iEaedLhZkECOAxJLr3083z4";
        strArr[2] = "dqFSPFlearJtxV8PFi6iCQhpIdVpxh77";
        A04 = new byte[]{-33, -30, -30, -29, -14, -33, -25, -22, -15};
    }

    public final void A02(C1M c1m, boolean z) {
        this.A02.setTextColor(c1m.A06(z));
        this.A01.setTextColor(c1m.A04(z));
        this.A00.setTextColor(c1m.A05(z));
    }

    public final void A03(String str, String str2, String str3, boolean z, boolean z2) {
        boolean z3 = !TextUtils.isEmpty(str);
        boolean z4 = !TextUtils.isEmpty(str2);
        TextView textView = this.A02;
        if (!z3) {
            str = str2;
        }
        textView.setText(str);
        if (str3 != null) {
            this.A01.setText(str3);
        }
        TextView textView2 = this.A00;
        if (!z3) {
            str2 = A00(0, 0, 28);
        }
        textView2.setText(str2);
        if (A05[4].charAt(18) != 'y') {
            throw new RuntimeException();
        }
        A05[4] = "cGsHRNQKRzUTXMDBZCyzngEN4Bg1pclE";
        int i = 3;
        if (z3 && z4) {
            this.A02.setMaxLines(z ? 1 : 2);
            this.A00.setMaxLines(z ? 1 : z2 ? 3 : 2);
            return;
        }
        TextView textView3 = this.A02;
        if (z) {
            i = 2;
        } else if (z2) {
            i = 4;
        }
        textView3.setMaxLines(i);
    }

    public TextView getDescriptionTextView() {
        return this.A00;
    }

    public TextView getTitleTextView() {
        return this.A02;
    }

    public void setAlignment(int i) {
        if (this.A03) {
            setGravity(i);
        }
        this.A02.setGravity(i);
        this.A00.setGravity(i);
    }

    public void setCTAClickListener(T3 t3) {
        ViewOnClickListenerC1224Ns viewOnClickListenerC1224NsA03 = C1225Nt.A03(t3, A00(0, 9, 57));
        this.A02.setOnClickListener(viewOnClickListenerC1224NsA03);
        this.A00.setOnClickListener(viewOnClickListenerC1224NsA03);
        this.A01.setOnClickListener(viewOnClickListenerC1224NsA03);
    }

    public void setDescriptionVisibility(int i) {
        this.A00.setVisibility(i);
    }
}
