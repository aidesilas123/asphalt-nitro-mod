package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8B, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C8B extends SH {
    public AbstractC1227Nv A00;
    public final ImageView A01;
    public final C5H A02;
    public final AtomicBoolean A03;
    public final AtomicBoolean A04;
    public final AtomicBoolean A05;

    public C8B(YA ya, MM mm, InterfaceC1086If interfaceC1086If, AbstractC1566aS abstractC1566aS, C6Q c6q, InterfaceC1173Lt interfaceC1173Lt) {
        super(ya, mm, interfaceC1086If, abstractC1566aS, c6q, interfaceC1173Lt);
        this.A02 = new SC(this);
        this.A04 = new AtomicBoolean(false);
        this.A03 = new AtomicBoolean(false);
        this.A05 = new AtomicBoolean(false);
        ImageView imageView = new ImageView(getContext());
        this.A01 = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setAdjustViewBounds(true);
        new T8(imageView, super.A03).A05(super.A01.A0v().A0D().A00(), super.A01.A0v().A0D().A01()).A06(new SB(this)).A07(super.A01.A0v().A0D().A07());
    }

    private AbstractC1227Nv A01(int i) {
        if (this.A01.getParent() != null) {
            LV.A0J(this.A01);
        }
        return C1228Nw.A00(new C1230Ny(super.A03, super.A04, this.A08, super.A01, this.A01, this.A0A, this.A06).A0E(this.A07.getToolbarHeight()).A0H(this.A07).A0D(i).A0K(), null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A04.get() && this.A03.get()) {
            A0P();
        }
    }

    private void A06(int i) {
        LV.A0J(this.A00);
        AbstractC1227Nv abstractC1227NvA01 = A01(i);
        this.A00 = abstractC1227NvA01;
        C1M colors = abstractC1227NvA01.getColors();
        AbstractC1227Nv abstractC1227Nv = this.A00;
        LV.A0M(this, colors.A07(abstractC1227Nv != null && (abstractC1227Nv.A10() || (this.A00 instanceof AbstractC1360Sy))));
        this.A07.setFullscreen(this.A00.A10());
        this.A07.A06(colors, T3.A08(super.A01));
        addView(this.A00, 0, SH.A0E);
        AbstractC1227Nv abstractC1227Nv2 = this.A00;
        setUpFullscreenMode(abstractC1227Nv2 != null && abstractC1227Nv2.A10());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCloseButtonStyle() {
        AbstractC1227Nv abstractC1227Nv = this.A00;
        if (abstractC1227Nv != null) {
            return abstractC1227Nv.getCloseButtonStyle();
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.SH
    public final void A0Q() {
        LV.A0L(this.A00);
        LV.A0L(this.A07);
        this.A03.set(true);
        A05();
        int iA03 = super.A01.A0v().A0D().A03();
        if (iA03 <= 0) {
            this.A05.set(true);
            this.A07.setToolbarActionMode(getCloseButtonStyle());
        } else {
            AbstractC1227Nv abstractC1227Nv = this.A00;
            if (abstractC1227Nv != null) {
                abstractC1227Nv.A0y();
            }
            A0R(iA03, new SA(this));
        }
    }

    @Override // com.facebook.ads.redexgen.X.SH
    public final void A0S(C5J c5j) {
        c5j.A0N(this.A02);
        A06(c5j.A0J().getResources().getConfiguration().orientation);
        addView(this.A07, new FrameLayout.LayoutParams(-1, this.A07.getToolbarHeight()));
        LV.A0H(this.A00);
        LV.A0H(this.A07);
    }

    @Override // com.facebook.ads.redexgen.X.SH
    public final boolean A0T() {
        AbstractC1227Nv abstractC1227Nv = this.A00;
        return abstractC1227Nv != null && abstractC1227Nv.A11(false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACJ(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void ACj(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.SH, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (super.A01.A0v().A0N()) {
            return;
        }
        A06(configuration.orientation);
    }

    @Override // com.facebook.ads.redexgen.X.SH, com.facebook.ads.redexgen.X.InterfaceC1174Lu
    public final void onDestroy() {
        if (IP.A1X(super.A03)) {
            super.A03.A0A().AFz(this.A01);
        }
        AbstractC1227Nv abstractC1227Nv = this.A00;
        if (abstractC1227Nv != null) {
            abstractC1227Nv.A0u();
        }
        super.onDestroy();
    }
}
