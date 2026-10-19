package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class TS implements InterfaceC1174Lu {
    public static byte[] A0D;
    public int A00;
    public C1258Pa A01;
    public AnonymousClass76 A02;
    public String A03;
    public final YA A04;
    public final InterfaceC1086If A05;
    public final InterfaceC1173Lt A06;
    public final MH A07;
    public final RX A08;
    public final AbstractC1233Ob A09;
    public final AbstractC1219Nn A0A;
    public final MU A0B;
    public final MI A0C;

    static {
        A03();
    }

    public TS(YA ya, MH mh, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt) {
        AD ad = new AD(this);
        this.A0C = ad;
        A6 a6 = new A6(this);
        this.A0B = a6;
        AbstractC1233Ob abstractC1233Ob = new AbstractC1233Ob() { // from class: com.facebook.ads.redexgen.X.9r
            public static byte[] A01;
            public static String[] A02 = {"OtZHHid0c6Ryk9CDDBq47ngXcNldIUWH", "JwrlVwQ54E2WwwQvkywQUOYHwL6g1bho", "WFiM5IPZvaQ4xMZm5xgvQ3FNROoMY2Kr", "al6ZIECO6LO12zMiuvYELaWNpYKDhozx", "wYAPbQwhGVteNN6MGdL8gA6824n9AnKf", "jTihIhEYsz4XSFMEjn7OlZEBUOzI3KNS", "mXaQIkSzTCVxPQuz9HLogqhmhIjgMyMR", "pEgzTi4rZbqmTwficQat67UuNHBZNbaD"};

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                byte[] bArr = {17, 4, -1, 0, 10, -28, 9, Ascii.SI, 0, Ascii.CR, Ascii.SO, Ascii.SI, 4, Ascii.SI, -4, 7, -32, 17, 0, 9, Ascii.SI};
                String[] strArr = A02;
                if (strArr[6].charAt(4) != strArr[3].charAt(4)) {
                    throw new RuntimeException();
                }
                A02[2] = "e0kN46odqljBIthjpUkTXG9hdDsWHsKW";
                A01 = bArr;
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass75 anonymousClass75) {
                this.A00.A06.A40(A00(0, 21, 69), anonymousClass75);
            }
        };
        this.A09 = abstractC1233Ob;
        AbstractC1219Nn abstractC1219Nn = new AbstractC1219Nn() { // from class: com.facebook.ads.redexgen.X.9l
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(OK ok) {
                this.A00.A07.ABN();
            }
        };
        this.A0A = abstractC1219Nn;
        this.A04 = ya;
        this.A05 = interfaceC1086If;
        this.A07 = mh;
        RX rx = new RX(ya);
        this.A08 = rx;
        rx.A0c(new C08146r(ya));
        rx.getEventBus().A03(ad, a6, abstractC1233Ob, abstractC1219Nn);
        this.A06 = interfaceC1173Lt;
        rx.setIsFullScreen(true);
        rx.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        interfaceC1173Lt.A3Q(rx, layoutParams);
        C1177Lx c1177Lx = new C1177Lx(ya);
        c1177Lx.setOnClickListener(new MF(this));
        interfaceC1173Lt.A3Q(c1177Lx, c1177Lx.getDefaultLayoutParams());
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 38);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0D = new byte[]{-49, -29, -30, -35, -34, -38, -49, -25, -17, -8, -11, -15, -6, 0, -32, -5, -9, -15, -6, -68, -70, -84, -107, -88, -69, -80, -67, -84, -118, -69, -88, -119, -68, -69, -69, -74, -75, -73, -86, -91, -90, -80, -118, -81, -75, -90, -77, -76, -75, -86, -75, -94, -83, -122, -73, -90, -81, -75, -99, -112, -117, -116, -106, 115, -106, -114, -114, -116, -103, -2, -15, -20, -19, -9, -43, -40, -52, Ascii.CAN, Ascii.VT, 6, 7, 17, -11, 7, 7, Ascii.CR, -10, Ascii.VT, Ascii.SI, 7, -66, -79, -84, -83, -73, -99, -102, -108};
    }

    public final void A04(int i) {
        this.A08.setVideoProgressReportIntervalMs(i);
    }

    public final void A05(View view) {
        this.A08.setControlsAnchorView(view);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void A9C(Intent intent, Bundle bundle, C5J c5j) {
        String strA02 = A02(8, 11, 102);
        if (bundle == null) {
            this.A03 = intent.getStringExtra(strA02);
        } else {
            this.A03 = bundle.getString(strA02);
        }
        String stringExtra = intent.getStringExtra(A02(19, 18, 33));
        if (stringExtra != null && !stringExtra.isEmpty()) {
            PA pa = new PA(this.A04, stringExtra);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            int i = (int) (16.0f * C1148Ku.A02);
            layoutParams.setMargins(i, i, i, i);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            pa.setOnClickListener(new MG(this));
            this.A06.A3Q(pa, layoutParams);
        }
        this.A00 = intent.getIntExtra(A02(77, 13, 124), 0);
        this.A02 = new AnonymousClass76(this.A04, this.A05, this.A08, this.A03, intent.getBundleExtra(A02(58, 11, 1)));
        if (IP.A1Y(this.A04)) {
            this.A01 = new C1258Pa(this.A04, this.A05, this.A08, this.A03, null);
        } else {
            this.A01 = null;
        }
        this.A08.setVideoMPD(intent.getStringExtra(A02(69, 8, 98)));
        this.A08.setVideoURI(intent.getStringExtra(A02(90, 8, 34)));
        int i2 = this.A00;
        if (i2 > 0) {
            this.A08.A0Y(i2);
        }
        if (intent.getBooleanExtra(A02(0, 8, 72), false)) {
            this.A08.A0b(EnumC1267Pj.A04, 17);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACJ(boolean z) {
        this.A06.A40(A02(37, 21, 27), new NQ());
        this.A08.A0W();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACj(boolean z) {
        this.A06.A40(A02(37, 21, 27), new N3());
        if (this.A08.A0j()) {
            return;
        }
        this.A08.A0b(EnumC1267Pj.A04, 18);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void AEt(Bundle bundle) {
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
        this.A06.A40(A02(37, 21, 27), new M8(this.A00, this.A08.getCurrentPositionInMillis()));
        this.A02.A0d(this.A08.getCurrentPositionInMillis());
        C1258Pa c1258Pa = this.A01;
        if (c1258Pa != null) {
            c1258Pa.A09();
        }
        this.A08.A0Z(1);
        this.A08.A0V();
    }
}
