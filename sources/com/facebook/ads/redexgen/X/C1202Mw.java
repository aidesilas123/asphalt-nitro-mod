package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1202Mw extends LinearLayout {
    public static byte[] A0A;
    public static String[] A0B = {"knq4crm7fvqQP", "POuWJNR6FFtqsTvB6KeDXgsqVDDrfXB5", "10LYd3PkBnL3JTlwXO74lkb8laVhyfxM", "yGvyB2PsIdOlgSHN7xWAdIyeKrkcUuSJ", "30OsfDGqNeLBXhmKwxFpv8WuoKRgKdOB", "v4mwmIuaROl", "LuFvPWZsJ2RrZ", "py7QobRXpH9AZVstdVJJOkEIejHuBaN9"};
    public static final int A0C;
    public static final int A0D;
    public static final Uri A0E;
    public static final View.OnTouchListener A0F;
    public ImageView A00;
    public ImageView A01;
    public ImageView A02;
    public ImageView A03;
    public InterfaceC1201Mv A04;
    public N2 A05;
    public String A06;
    public boolean A07;
    public final WebView A08;
    public final N6 A09;

    static {
        A07();
        A0C = Color.rgb(224, 224, 224);
        A0E = C1132Kc.A00(A05(90, 23, 31));
        A0F = new ViewOnTouchListenerC1196Mq();
        A0D = Color.argb(34, 0, 0, 0);
    }

    public C1202Mw(YA ya, WebView webView) {
        super(ya);
        this.A09 = new TL(this);
        this.A08 = webView;
        this.A07 = IQ.A06(ya);
        A08(ya);
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
            String[] strArr = A0B;
            if (strArr[3].charAt(13) == strArr[1].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[6] = "2vQcPj1ELj1bu";
            strArr2[0] = "7aOELiI6quiDs";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A0A = new byte[]{80, 115, 113, 121, Ascii.ESC, 52, 55, 43, 61, 39, Ascii.SO, 19, Ascii.SYN, 0, 19, 5, Ascii.SO, 49, 36, 47, 97, 47, 32, 53, 40, 55, 36, 97, 35, 51, 46, 54, 50, 36, 51, 5, 6, Ascii.VT, 17, Ascii.DLE, 94, 6, 8, 5, 10, Ascii.SI, Ascii.DC2, Ascii.GS, Ascii.ETB, 1, Ascii.FS, Ascii.SUB, Ascii.ETB, 93, Ascii.SUB, Ascii.GS, 7, Ascii.SYN, Ascii.GS, 7, 93, Ascii.DC2, Ascii.DLE, 7, Ascii.SUB, Ascii.FS, Ascii.GS, 93, 37, 58, 54, 36, Ascii.ESC, Ascii.ETB, Ascii.NAK, 86, Ascii.EM, Ascii.SYN, Ascii.FS, 10, Ascii.ETB, 17, Ascii.FS, 86, Ascii.ESC, Ascii.DLE, 10, Ascii.ETB, Ascii.NAK, Ascii.GS, 80, 76, 76, 72, 2, Ascii.ETB, Ascii.ETB, 79, 79, 79, Ascii.SYN, 94, 89, 91, 93, 90, 87, 87, 83, Ascii.SYN, 91, 87, 85};
    }

    private void A08(YA ya) {
        int i = (int) (50.0f * getResources().getDisplayMetrics().density);
        LV.A0M(this, -1);
        setGravity(16);
        ImageView imageView = new ImageView(ya);
        this.A01 = imageView;
        imageView.setContentDescription(A05(4, 5, 127));
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        this.A01.setScaleType(ImageView.ScaleType.CENTER);
        this.A01.setImageBitmap(C1158Le.A01(EnumC1157Ld.BROWSER_CLOSE));
        ImageView imageView2 = this.A01;
        View.OnTouchListener onTouchListener = A0F;
        imageView2.setOnTouchListener(onTouchListener);
        this.A01.setOnClickListener(new ViewOnClickListenerC1197Mr(this));
        addView(this.A01, layoutParams);
        if (this.A07) {
            ImageView imageView3 = new ImageView(ya);
            this.A00 = imageView3;
            imageView3.setEnabled(false);
            this.A00.setAlpha(0.3f);
            this.A00.setContentDescription(A05(0, 4, 53));
            ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i, i);
            this.A00.setScaleType(ImageView.ScaleType.CENTER);
            this.A00.setImageBitmap(C1158Le.A01(EnumC1157Ld.BACK_ARROW));
            this.A00.setOnTouchListener(onTouchListener);
            this.A00.setOnClickListener(new ViewOnClickListenerC1198Ms(this));
            addView(this.A00, layoutParams2);
        }
        this.A05 = new N2(ya);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
        layoutParams3.weight = this.A07 ? 0.5f : 1.0f;
        this.A05.setGravity(17);
        addView(this.A05, layoutParams3);
        if (this.A07) {
            ImageView imageView4 = new ImageView(ya);
            this.A02 = imageView4;
            imageView4.setEnabled(false);
            this.A02.setAlpha(0.3f);
            this.A02.setContentDescription(A05(9, 7, 70));
            ViewGroup.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i, i);
            this.A02.setScaleType(ImageView.ScaleType.CENTER);
            this.A02.setImageBitmap(C1158Le.A02(EnumC1157Ld.BACK_ARROW));
            this.A02.setOnTouchListener(onTouchListener);
            this.A02.setOnClickListener(new ViewOnClickListenerC1199Mt(this));
            addView(this.A02, layoutParams4);
        }
        this.A03 = new ImageView(ya);
        ViewGroup.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(i, i);
        this.A03.setContentDescription(A05(16, 19, 102));
        this.A03.setScaleType(ImageView.ScaleType.CENTER);
        this.A03.setOnTouchListener(onTouchListener);
        this.A03.setOnClickListener(new ViewOnClickListenerC1200Mu(this, ya));
        addView(this.A03, layoutParams5);
        setupDefaultNativeBrowser(ya);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void setupDefaultNativeBrowser(com.facebook.ads.redexgen.X.YA r5) {
        /*
            r4 = this;
            android.content.pm.PackageManager r3 = r5.getPackageManager()
            r2 = 46
            r1 = 26
            r0 = 84
            java.lang.String r2 = A05(r2, r1, r0)
            android.net.Uri r0 = com.facebook.ads.redexgen.X.C1202Mw.A0E
            android.content.Intent r1 = new android.content.Intent
            r1.<init>(r2, r0)
            r0 = 65536(0x10000, float:9.1835E-41)
            java.util.List r2 = r3.queryIntentActivities(r1, r0)
            int r0 = r2.size()
            if (r0 != 0) goto L2f
            android.widget.ImageView r1 = r4.A03
            r0 = 8
            r1.setVisibility(r0)
            r1 = 0
        L29:
            android.widget.ImageView r0 = r4.A03
            r0.setImageBitmap(r1)
            return
        L2f:
            int r1 = r2.size()
            r0 = 1
            if (r1 != r0) goto L71
            r0 = 0
            java.lang.Object r0 = r2.get(r0)
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            java.lang.String r3 = r0.packageName
            r2 = 72
            r1 = 18
            r0 = 95
            java.lang.String r0 = A05(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L71
            com.facebook.ads.redexgen.X.Ld r3 = com.facebook.ads.redexgen.X.EnumC1157Ld.BROWSER_LAUNCH_CHROME
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1202Mw.A0B
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 31
            if (r1 == r0) goto L78
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1202Mw.A0B
            java.lang.String r1 = "ER9o4D5KfsgKq"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "PVCMoHz4n3Ffn"
            r0 = 0
            r2[r0] = r1
            android.graphics.Bitmap r1 = com.facebook.ads.redexgen.X.C1158Le.A01(r3)
            goto L29
        L71:
            com.facebook.ads.redexgen.X.Ld r0 = com.facebook.ads.redexgen.X.EnumC1157Ld.BROWSER_LAUNCH_NATIVE
            android.graphics.Bitmap r1 = com.facebook.ads.redexgen.X.C1158Le.A01(r0)
            goto L29
        L78:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1202Mw.setupDefaultNativeBrowser(com.facebook.ads.redexgen.X.YA):void");
    }

    public N6 getBrowserNavigationListener() {
        return this.A09;
    }

    public void setListener(InterfaceC1201Mv interfaceC1201Mv) {
        this.A04 = interfaceC1201Mv;
    }

    public void setTitle(String str) {
        this.A05.setTitle(str);
    }

    public void setUrl(String str) {
        this.A06 = str;
        if (TextUtils.isEmpty(str) || A05(35, 11, 67).equals(str)) {
            this.A05.setSubtitle(null);
            this.A03.setEnabled(false);
            this.A03.setColorFilter(new PorterDuffColorFilter(A0C, PorterDuff.Mode.SRC_IN));
        } else {
            this.A05.setSubtitle(str);
            this.A03.setEnabled(true);
            this.A03.setColorFilter((ColorFilter) null);
        }
    }
}
