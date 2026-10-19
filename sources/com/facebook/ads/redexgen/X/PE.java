package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class PE extends FrameLayout {
    public static final int A08 = (int) (C1148Ku.A02 * 16.0f);
    public AE A00;
    public C1258Pa A01;
    public AnonymousClass76 A02;
    public C1122Jr A03;
    public C08086j A04;
    public C6E A05;
    public final YA A06;
    public final C1094In A07;

    public PE(YA ya, C1094In c1094In) {
        super(ya);
        this.A07 = c1094In;
        this.A06 = ya;
        setUpView(ya);
    }

    private void setUpPlugins(YA ya) {
        this.A00.A0X();
        C08086j c08086j = new C08086j(ya);
        this.A04 = c08086j;
        this.A00.A0c(c08086j);
        this.A03 = new C1122Jr(ya, this.A07);
        this.A00.A0c(new C08146r(ya));
        this.A00.A0c(this.A03);
        C6E c6e = new C6E(ya, true, this.A07);
        this.A05 = c6e;
        this.A00.A0c(c6e);
        this.A00.A0c(new C1124Ju(this.A05, EnumC1280Pw.A03, true, true));
        if (this.A00.A0g() || IP.A2H(ya)) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            int i = A08;
            layoutParams.setMargins(i, i, i, i);
            this.A03.setLayoutParams(layoutParams);
            this.A00.addView(this.A03);
        }
    }

    private void setUpVideo(YA ya) {
        AE ae = new AE(ya);
        this.A00 = ae;
        ae.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        LV.A0K(this.A00);
        addView(this.A00);
        setOnClickListener(new PD(this));
    }

    private void setUpView(YA ya) {
        setUpVideo(ya);
        setUpPlugins(ya);
    }

    public final void A01() {
        this.A00.A0e(true, 10);
    }

    public final void A02() {
        C1258Pa c1258Pa = this.A01;
        if (c1258Pa != null) {
            c1258Pa.A0A();
            this.A01 = null;
        }
        AnonymousClass76 anonymousClass76 = this.A02;
        if (anonymousClass76 != null) {
            anonymousClass76.A0g();
            this.A02 = null;
        }
    }

    public final void A03(AbstractC08448a abstractC08448a) {
        this.A00.getEventBus().A05(abstractC08448a);
    }

    public final void A04(InterfaceC1086If interfaceC1086If, String str, Map<String, String> map) {
        A02();
        this.A02 = new AnonymousClass76(this.A06, interfaceC1086If, this.A00, str, map);
        if (IP.A1Y(this.A06)) {
            this.A01 = new C1258Pa(this.A06, interfaceC1086If, this.A00, str, map);
        } else {
            this.A01 = null;
        }
    }

    public final void A05(EnumC1267Pj enumC1267Pj) {
        this.A00.A0b(enumC1267Pj, 13);
    }

    public final boolean A06() {
        return this.A00.A0k();
    }

    public RX getSimpleVideoView() {
        return this.A00;
    }

    public float getVolume() {
        return this.A00.getVolume();
    }

    public void setPlaceholderUrl(String str) {
        this.A04.setImage(str);
    }

    public void setVideoURI(String str) {
        this.A00.setVideoURI(str);
    }

    public void setVolume(float f2) {
        this.A00.setVolume(f2);
        this.A03.A09();
    }
}
