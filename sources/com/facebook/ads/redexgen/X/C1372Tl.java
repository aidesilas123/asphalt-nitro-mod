package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1372Tl implements InterfaceC1174Lu {
    public static byte[] A0C;
    public static String[] A0D = {"VjNTozFJBHBTAbZvfj55MfAwGP9LBSf6", "Pq0aBOwFzXTv3d8c4kUbGJ29Dl7JaeBe", "6Jh9GB1FdSmhvo4jirjJmKwQUVM2B32M", "TGGBgusTs1FvyAgmLwAY3Gsc6eBuJSRW", "x90wDNv6CtBtNBa5WCDyDNAaFj8t5cCY", "GDNjvFSJPJLifqCEdIwxfegvvEeKItWd", "ZGbO0A4ZRQBBFZeQfXm02pkO19XETszh", "zRbEM6nv1u3uOOYe"};
    public static final String A0E;
    public long A00;
    public long A01;
    public String A02;
    public String A03;
    public boolean A04;
    public boolean A05;
    public final C5H A06;
    public final C5J A07;
    public final InterfaceC1086If A08;
    public final C1202Mw A09;
    public final C1203Mx A0A;
    public final TJ A0B;

    static {
        A04();
        A0E = C1372Tl.class.getSimpleName();
    }

    public C1372Tl(C5J c5j, YA ya, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt) {
        C1375To c1375To = new C1375To(this);
        this.A06 = c1375To;
        this.A05 = true;
        this.A01 = -1L;
        this.A04 = true;
        this.A07 = c5j;
        this.A08 = interfaceC1086If;
        int i = (int) (C1148Ku.A02 * 2.0f);
        C1374Tn c1374Tn = new C1374Tn(this, interfaceC1173Lt);
        if (ya.A0D() == null) {
            ya.A0E().A8U();
        }
        TJ tj = (IQ.A02(ya) || ya.A0D() == null) ? new TJ(ya, c1374Tn) : new TJ(ya, ya.A0D(), c1374Tn);
        this.A0B = tj;
        C1202Mw c1202Mw = new C1202Mw(ya, tj);
        this.A09 = c1202Mw;
        c1202Mw.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        c1202Mw.setListener(new C1373Tm(this, c5j));
        interfaceC1173Lt.A3Q(c1202Mw, layoutParams);
        tj.setBrowserNavigationListener(c1202Mw.getBrowserNavigationListener());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, c1202Mw.getId());
        layoutParams2.addRule(12);
        interfaceC1173Lt.A3Q(tj, layoutParams2);
        C1203Mx c1203Mx = new C1203Mx(ya, null, R.attr.progressBarStyleHorizontal);
        this.A0A = c1203Mx;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i);
        layoutParams3.addRule(3, c1202Mw.getId());
        c1203Mx.setProgress(0);
        interfaceC1173Lt.A3Q(c1203Mx, layoutParams3);
        c5j.A0N(c1375To);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0D;
            if (strArr[1].charAt(18) == strArr[4].charAt(18)) {
                throw new RuntimeException();
            }
            A0D[7] = "WrA4t0RN";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
            i4++;
        }
    }

    public static void A04() {
        A0C = new byte[]{114, -120, -120, -107, -120, -84, -41, -43, -120, -85, -41, -42, -36, -51, -42, -36, -120, -76, -41, -55, -52, -51, -52, -120, -68, -47, -43, -51, -94, -120, -70, -48, -48, -35, -48, -4, Ascii.US, 17, Ascii.DC4, -48, -10, Ascii.EM, Ascii.RS, Ascii.EM, 35, Ascii.CAN, -48, 4, Ascii.EM, Ascii.GS, Ascii.NAK, -22, -48, -98, -76, -76, -63, -76, -32, 3, -11, -8, -76, -25, 8, -11, 6, 8, -76, -24, -3, 1, -7, -50, -76, -101, -79, -79, -66, -79, -29, -10, 4, 1, 0, -1, 4, -10, -79, -42, -1, -11, -79, -27, -6, -2, -10, -53, -79, -57, -35, -35, -22, -35, Ascii.DLE, 32, 47, 44, 41, 41, -35, Ascii.SI, 34, Ascii.RS, 33, 54, -35, 17, 38, 42, 34, -9, -35, -112, -90, -90, -77, -90, -39, -21, -7, -7, -17, -11, -12, -90, -52, -17, -12, -17, -7, -18, -90, -38, -17, -13, -21, -64, -90, -116, 92, 114, 114, Ascii.DEL, 114, -102, -77, -64, -74, -66, -73, -60, 114, -90, -69, -65, -73, -116, 114, -90, -42, -45, -37, -41, -55, -42, -124, -41, -55, -41, -41, -51, -45, -46, -124, -56, -59, -40, -59, -124, -48, -45, -53, -53, -55, -56, -124, -92, -124, -58, -57, -44, -38, -39, -97, -57, -47, -58, -45, -48, 9, Ascii.EM, Ascii.SYN, Ascii.RS, Ascii.SUB, Ascii.FF, Ascii.EM, -4, -7, -13, Ascii.CAN, 33, Ascii.RS, Ascii.SUB, 35, 41, 9, 36, 32, Ascii.SUB, 35, -54, -61, -48, -58, -50, -57, -44, -74, -53, -49, -57};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void A9C(Intent intent, Bundle bundle, C5J c5j) {
        if (this.A01 < 0) {
            this.A01 = System.currentTimeMillis();
        }
        String strA03 = A03(231, 11, 36);
        String strA032 = A03(220, 11, 119);
        String strA033 = A03(210, 10, 105);
        if (bundle == null) {
            this.A02 = intent.getStringExtra(strA033);
            this.A03 = intent.getStringExtra(strA032);
            String[] strArr = A0D;
            if (strArr[0].charAt(28) != strArr[2].charAt(28)) {
                throw new RuntimeException();
            }
            A0D[5] = "h34ynCyxETZN0C4DuHOjqZ0ETc7IsjOt";
            this.A00 = intent.getLongExtra(strA03, -1L);
        } else {
            this.A02 = bundle.getString(strA033);
            this.A03 = bundle.getString(strA032);
            this.A00 = bundle.getLong(strA03, -1L);
        }
        String strA034 = this.A02;
        if (strA034 == null) {
            strA034 = A03(199, 11, 39);
        }
        this.A09.setUrl(strA034);
        this.A0B.loadUrl(strA034);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACJ(boolean z) {
        this.A0B.onPause();
        if (this.A04) {
            this.A04 = false;
            N0 n0A07 = new C1205Mz(this.A0B.getFirstUrl()).A01(this.A00).A03(this.A01).A04(this.A0B.getResponseEndMs()).A00(this.A0B.getDomContentLoadedMs()).A05(this.A0B.getScrollReadyMs()).A02(this.A0B.getLoadFinishMs()).A06(System.currentTimeMillis()).A07();
            this.A08.A9H(this.A03, n0A07.A02());
            if (BuildConfigApi.isDebug()) {
                String str = A03(169, 30, 38) + System.currentTimeMillis() + A03(149, 20, 20) + n0A07.A01 + A03(53, 22, 86) + n0A07.A03 + A03(75, 24, 83) + n0A07.A04 + A03(0, 30, 42) + n0A07.A00 + A03(99, 24, 127) + n0A07.A05 + A03(30, 23, 114) + n0A07.A02 + A03(123, 26, 72) + n0A07.A06;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACj(boolean z) {
        this.A0B.onResume();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void AEt(Bundle bundle) {
        bundle.putString(A03(210, 10, 105), this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final String getCurrentClientToken() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void onDestroy() {
        this.A07.A0O(this.A06);
        NH.A03(this.A0B);
        this.A0B.destroy();
    }
}
