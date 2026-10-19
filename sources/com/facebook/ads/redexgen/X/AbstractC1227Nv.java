package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.RelativeLayout;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1227Nv extends RelativeLayout {
    public static final int A07 = (int) (C1148Ku.A02 * 16.0f);
    public static final int A08 = (int) (C1148Ku.A02 * 28.0f);
    public C1M A00;
    public boolean A01;
    public final YA A02;
    public final InterfaceC1086If A03;
    public final T3 A04;
    public final C1220No A05;
    public final C1231Nz A06;

    public AbstractC1227Nv(C1231Nz c1231Nz, boolean z) {
        super(c1231Nz.A05());
        this.A06 = c1231Nz;
        YA yaA05 = c1231Nz.A05();
        this.A02 = yaA05;
        this.A03 = c1231Nz.A06();
        this.A00 = c1231Nz.A00() == 1 ? c1231Nz.A04().A0u().A01() : c1231Nz.A04().A0u().A00();
        this.A01 = z;
        T3 t3 = new T3(c1231Nz.A05(), c1231Nz.A04().A0K(), this.A00, c1231Nz.A04().A0v().A0F().A06(), c1231Nz.A06(), c1231Nz.A09(), c1231Nz.A0B(), c1231Nz.A07(), c1231Nz.A04().A0x());
        this.A04 = t3;
        t3.setRoundedCornersEnabled(A00());
        t3.setViewShowsOverMedia(A0D());
        LV.A0G(1001, t3);
        C1220No c1220No = new C1220No(yaA05, this.A00, this.A01, A01(), A02());
        this.A05 = c1220No;
        LV.A0K(c1220No);
    }

    public boolean A00() {
        return true;
    }

    public boolean A01() {
        return true;
    }

    public boolean A02() {
        return true;
    }

    public void A0B(AnonymousClass75 anonymousClass75) {
    }

    public void A0C(AnonymousClass71 anonymousClass71) {
    }

    public boolean A0D() {
        return true;
    }

    public void A0u() {
    }

    public void A0v() {
    }

    public void A0w() {
    }

    public void A0x() {
    }

    public void A0y() {
    }

    public void A0z(C1D c1d, String str, double d2, Bundle bundle) {
        this.A05.A03(c1d.A0E().A05(), c1d.A0E().A01(), null, false, !A10() && d2 > 0.0d && d2 < 1.0d);
        this.A04.setCta(c1d.A0F(), str, new HashMap());
    }

    public abstract boolean A10();

    public boolean A11(boolean z) {
        return false;
    }

    public YA getAdContextWrapper() {
        return this.A02;
    }

    public InterfaceC1086If getAdEventManager() {
        return this.A03;
    }

    public int getCloseButtonStyle() {
        return 0;
    }

    public C1M getColors() {
        return this.A00;
    }

    public T3 getCtaButton() {
        return this.A04;
    }

    public C1220No getTitleDescContainer() {
        return this.A05;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A00 = configuration.orientation == 1 ? this.A06.A04().A0u().A01() : this.A06.A04().A0u().A00();
        this.A04.setViewShowsOverMedia(A0D());
        this.A04.setUpButtonColors(this.A00);
        this.A05.A02(this.A00, this.A01);
    }
}
