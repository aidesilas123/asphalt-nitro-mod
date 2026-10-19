package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1359Sx extends AbstractC1227Nv {
    public C1359Sx(C1231Nz c1231Nz, boolean z) {
        super(c1231Nz, true);
        RelativeLayout relativeLayout = new RelativeLayout(c1231Nz.A05());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        LV.A0R(relativeLayout, getAdContextWrapper());
        LinearLayout linearLayout = new LinearLayout(c1231Nz.A05());
        linearLayout.setOrientation(!z ? 1 : 0);
        linearLayout.setGravity(80);
        LV.A0K(linearLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC1227Nv.A07, 0, AbstractC1227Nv.A07, AbstractC1227Nv.A07);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(z ? -2 : -1, -2);
        layoutParams3.setMargins(z ? AbstractC1227Nv.A07 : 0, z ? 0 : AbstractC1227Nv.A07, 0, 0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(z ? 0 : -1, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams4);
        if (c1231Nz.A0C() && !z) {
            PB pb = new PB(c1231Nz.A05());
            pb.setPageDetails(c1231Nz.A04().A0z());
            int iA04 = this.A06.A04().A0u().A00().A04(true);
            pb.A02(iA04, iA04);
            LV.A0G(1007, pb);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams5.setMargins(0, AbstractC1227Nv.A07, 0, 0);
            linearLayout.addView(pb, layoutParams5);
            if (IP.A10(c1231Nz.A05())) {
                pb.setOnClickListener(getCtaButton());
            }
        }
        linearLayout.addView(getCtaButton(), layoutParams3);
        relativeLayout.addView(linearLayout, layoutParams2);
        getCtaButton().A0A(c1231Nz.A04(), c1231Nz.A08());
        View viewA02 = c1231Nz.A02();
        if (viewA02 != null && IP.A17(getAdContextWrapper())) {
            FrameLayout.LayoutParams layoutParams6 = z ? new FrameLayout.LayoutParams(-2, -1) : new FrameLayout.LayoutParams(-1, -2);
            layoutParams6.gravity = 17;
            FrameLayout frameLayout = new FrameLayout(c1231Nz.A05());
            frameLayout.addView(viewA02, layoutParams6);
            addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
            NO.A00(viewA02, IP.A18(getAdContextWrapper()), new ViewOnClickListenerC1226Nu(this));
        } else if (viewA02 != null) {
            addView(viewA02, new RelativeLayout.LayoutParams(-1, -1));
        }
        addView(relativeLayout, layoutParams);
        if (IP.A0z(c1231Nz.A05())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1231Nz.A08() != null) {
                c1231Nz.A08().setCTAClickListener(getCtaButton());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0z(C1D c1d, String str, double d2, Bundle bundle) {
        super.A0z(c1d, str, d2, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A10() {
        return true;
    }
}
