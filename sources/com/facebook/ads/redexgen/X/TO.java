package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class TO extends MR {
    public static final int A03 = (int) (C1148Ku.A02 * 8.0f);
    public final RelativeLayout A00;
    public final C2G A01;
    public final YA A02;

    public TO(YA ya, InterfaceC1086If interfaceC1086If, String str, C1X c1x, InterfaceC1174Lu interfaceC1174Lu, InterfaceC1173Lt interfaceC1173Lt) {
        super(ya, interfaceC1086If, str, c1x, interfaceC1174Lu, interfaceC1173Lt);
        this.A02 = ya;
        this.A01 = C2H.A00(ya.A01());
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.A00 = relativeLayout;
        addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        LV.A0M(relativeLayout, -1728053248);
        relativeLayout.setOnClickListener(new MW(this));
    }

    public static RelativeLayout.LayoutParams A0B(boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, z ? -1 : -2);
        layoutParams.addRule(12);
        return layoutParams;
    }

    private void A0C() {
        if (Build.VERSION.SDK_INT < 21) {
            LV.A0T(this);
            return;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
        LV.A0V(this, transitionSet);
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final void A0L() {
        C2K c2kA0A = this.A01.A0A();
        C1186Mg c1186Mg = new C1186Mg(this.A02);
        c1186Mg.setInfo(EnumC1157Ld.HIDE_AD, this.A01.A0H(), this.A01.A0G());
        c1186Mg.setOnClickListener(new MX(this));
        C2K c2kA0B = this.A01.A0B();
        C1186Mg c1186Mg2 = new C1186Mg(this.A02);
        c1186Mg2.setInfo(EnumC1157Ld.REPORT_AD, this.A01.A0L(), this.A01.A0K());
        c1186Mg2.setOnClickListener(new MY(this));
        C1186Mg c1186Mg3 = new C1186Mg(this.A02);
        c1186Mg3.setInfo(EnumC1157Ld.AD_CHOICES_ICON, this.A01.A0M(), "");
        c1186Mg3.setOnClickListener(new MZ(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        int i = A03;
        linearLayout.setPadding(i * 2, i, i * 2, i);
        LV.A0M(linearLayout, -1);
        if (!c2kA0A.A05().isEmpty()) {
            linearLayout.addView(c1186Mg, layoutParams);
        }
        if (!c2kA0B.A05().isEmpty()) {
            linearLayout.addView(c1186Mg2, layoutParams);
        }
        linearLayout.addView(c1186Mg3, layoutParams);
        A0C();
        this.A00.removeAllViews();
        this.A00.addView(linearLayout, A0B(false));
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final void A0M() {
        LV.A0I(this);
        this.A00.removeAllViews();
        LV.A0J(this);
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final void A0N(C2K c2k, C2I c2i) {
        if (c2i == C2I.A04) {
            return;
        }
        boolean z = c2i == C2I.A05;
        MQ mqA0M = new MP(this.A02, this.A0B).A0I(z ? this.A01.A0F() : this.A01.A0E()).A0H(this.A01.A0D()).A0F(c2k.A04()).A0E(z ? EnumC1157Ld.REPORT_AD : EnumC1157Ld.HIDE_AD).A0D(z ? -552389 : -13272859).A0G(this.A0A != null ? this.A0A.A01() : "").A0M();
        LV.A0M(mqA0M, -1);
        LV.A0T(this);
        this.A00.removeAllViews();
        this.A00.addView(mqA0M, A0B(true));
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final void A0O(C2K c2k, C2I c2i) {
        boolean z = c2i == C2I.A05;
        C1189Mj c1189Mj = new C1189Mj(this.A02, c2k, this.A0B, z ? this.A01.A0L() : this.A01.A0H(), z ? EnumC1157Ld.REPORT_AD : EnumC1157Ld.HIDE_AD);
        c1189Mj.setClickable(true);
        LV.A0M(c1189Mj, -1);
        int i = A03;
        c1189Mj.setPadding(i * 2, i, i * 2, i);
        A0C();
        this.A00.removeAllViews();
        this.A00.addView(c1189Mj, A0B(false));
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final boolean A0P() {
        return false;
    }
}
