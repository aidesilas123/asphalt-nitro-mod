package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.facebook.ads.RewardData;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ng, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1212Ng extends FrameLayout {
    public static String[] A07 = {"Lu0oG19N", "JNY", "Ev6F9eDhg42RHlCeRuJfEtiFO07AluFn", "qSbaO4FE34QcNqD1YWxCxyT8wr5s9kWw", "hZddA1hSD7Y", "v9TnLSaOxYneacolptRVdRHaZQ0ab06L", "iyW9tyIIQvF7WQz3LOxNHXxa074IcWbN", "vzh"};
    public AbstractC1172Ls A00;
    public final AbstractC1566aS A01;
    public final YA A02;
    public final InterfaceC1173Lt A03;
    public final InterfaceC1211Nf A04;
    public final RX A05;
    public final View[] A06;

    public C1212Ng(C1231Nz c1231Nz, AbstractC1566aS abstractC1566aS, RX rx, C1108Jb c1108Jb, NR nr, InterfaceC1173Lt interfaceC1173Lt, InterfaceC1211Nf interfaceC1211Nf) {
        this(c1231Nz, abstractC1566aS, rx, interfaceC1173Lt, interfaceC1211Nf, c1108Jb, nr);
    }

    public C1212Ng(C1231Nz c1231Nz, AbstractC1566aS abstractC1566aS, RX rx, InterfaceC1173Lt interfaceC1173Lt, InterfaceC1211Nf interfaceC1211Nf, View... viewArr) {
        this(c1231Nz.A05(), c1231Nz.A08(), abstractC1566aS, rx, interfaceC1173Lt, interfaceC1211Nf, viewArr);
    }

    public C1212Ng(YA ya, AbstractC1172Ls abstractC1172Ls, AbstractC1566aS abstractC1566aS, RX rx, InterfaceC1173Lt interfaceC1173Lt, InterfaceC1211Nf interfaceC1211Nf, View... viewArr) {
        super(ya);
        this.A02 = ya;
        this.A00 = abstractC1172Ls;
        this.A01 = abstractC1566aS;
        this.A06 = viewArr;
        this.A03 = interfaceC1173Lt;
        this.A05 = rx;
        this.A04 = interfaceC1211Nf;
        A03();
    }

    private void A03() {
        RewardData rewardDataA0J = this.A01.A0J();
        M3 m3 = new M3(this.A02, -1, ViewCompat.MEASURED_STATE_MASK, rewardDataA0J == null ? this.A01.A0y().A05() : this.A01.A0y().A06(rewardDataA0J.getCurrency(), rewardDataA0J.getQuantity()), null, this.A01.A0y().A04(), this.A01.A0y().A03(), C1158Le.A01(EnumC1157Ld.REWARD_ICON));
        m3.A02.setOnClickListener(new ViewOnClickListenerC1209Nd(this));
        m3.A01.setOnClickListener(new ViewOnClickListenerC1210Ne(this));
        addView(m3, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        RX rx = this.A05;
        if (rx != null) {
            rx.A0a(EnumC1262Pe.A07);
        }
        this.A04.AAS();
        if (this.A01.A0v().A0O()) {
            return;
        }
        this.A01.A14(this.A03);
    }

    public final void A07(ViewGroup viewGroup) {
        RX rx = this.A05;
        if (rx != null && !rx.A0j()) {
            this.A05.A0f(false, false, 11);
            LV.A0N(this.A05, 4);
        }
        AbstractC1172Ls abstractC1172Ls = this.A00;
        String[] strArr = A07;
        if (strArr[7].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A07[0] = "vGH3jzSu";
        if (abstractC1172Ls != null) {
            LV.A0H(abstractC1172Ls);
        }
        for (View view : this.A06) {
            view.clearAnimation();
            LV.A0N(view, 4);
        }
        viewGroup.addView(this, new RelativeLayout.LayoutParams(-1, -1));
        this.A04.AC0();
    }
}
