package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Su, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1356Su extends AbstractC1227Nv {
    public static final int A02 = Resources.getSystem().getDisplayMetrics().widthPixels;
    public final OJ A00;
    public final PB A01;

    public C1356Su(C1231Nz c1231Nz, boolean z) {
        int id;
        int iA01;
        super(c1231Nz, z);
        OJ oj = new OJ(c1231Nz.A05(), c1231Nz.A02());
        this.A00 = oj;
        oj.A01(getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC1227Nv.A07, AbstractC1227Nv.A07, AbstractC1227Nv.A07, AbstractC1227Nv.A07);
        getCtaButton().setLayoutParams(layoutParams);
        if (c1231Nz.A0C()) {
            PB pb = new PB(c1231Nz.A05());
            this.A01 = pb;
            pb.setPageDetails(c1231Nz.A04().A0z());
            LV.A0G(1007, pb);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(2, getCtaButton().getId());
            layoutParams2.setMargins(AbstractC1227Nv.A07, AbstractC1227Nv.A07 - (AbstractC1227Nv.A07 / 2), AbstractC1227Nv.A07, 0);
            pb.setLayoutParams(layoutParams2);
            id = pb.getId();
            iA01 = c1231Nz.A01() - (AbstractC1227Nv.A07 / 2);
        } else {
            id = getCtaButton().getId();
            iA01 = c1231Nz.A01();
            this.A01 = null;
        }
        FrameLayout frameLayout = new FrameLayout(c1231Nz.A05());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(10);
        layoutParams3.addRule(2, id);
        layoutParams3.setMargins(0, iA01, 0, 0);
        frameLayout.setLayoutParams(layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.gravity = 17;
        layoutParams4.setMargins(AbstractC1227Nv.A07, 0, AbstractC1227Nv.A07, 0);
        frameLayout.addView(oj, layoutParams4);
        addView(frameLayout);
        View view = this.A01;
        if (view != null) {
            addView(view);
        }
        addView(getCtaButton());
        getCtaButton().A0A(c1231Nz.A04(), c1231Nz.A08());
        View viewA02 = c1231Nz.A02();
        if (viewA02 != null && IP.A17(getAdContextWrapper())) {
            NO.A00(viewA02, IP.A18(getAdContextWrapper()), new O3(this));
        }
        if (IP.A0z(c1231Nz.A05())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1231Nz.A08() != null) {
                c1231Nz.A08().setCTAClickListener(getCtaButton());
            }
        }
        if (this.A01 == null || !IP.A10(c1231Nz.A05())) {
            return;
        }
        this.A01.setOnClickListener(getCtaButton());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A02() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A0D() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final void A0z(C1D c1d, String str, double d2, Bundle bundle) {
        super.A0z(c1d, str, d2, bundle);
        if (d2 > 0.0d) {
            this.A00.A00((int) (((double) (A02 - (AbstractC1227Nv.A07 * 2))) / d2));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public final boolean A10() {
        return false;
    }
}
