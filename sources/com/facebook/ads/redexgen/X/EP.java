package com.facebook.ads.redexgen.X;

import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class EP extends AbstractC1534Zw {
    public static String[] A02 = {"Wdifh5HSN4RyvogFUrIVqQJQULlKdEei", "S34yOHPbjBOZXrhEKXqsFwPvtnd1qciy", "vu9eRI", "x0OqZ", "VYF0eZRg0jpnLcLhIoRoBnoO3djZf6SI", "33GTCt01Ki3rQT8tpwoWMPFpMqFvVQrj", "pa13jV0ykdfTm6Oo414mEZE7qu5xzGka", "tj8XsVszyFe6dIsjKXzcwTwgC3z6jHVp"};
    public static final AnonymousClass24 A03 = new C1525Zl();
    public C1529Zq A00;
    public final AnonymousClass23 A01;

    public EP(AnonymousClass23 anonymousClass23) {
        super(anonymousClass23.A05(), A03.A4d(anonymousClass23));
        this.A01 = anonymousClass23;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1534Zw
    public final void A05() {
        C1529Zq c1529Zq = this.A00;
        if (c1529Zq != null) {
            c1529Zq.A0F();
        }
        InterfaceC07001y interfaceC07001y = super.A00;
        EnumC06991x enumC06991x = EnumC06991x.A04;
        if (A02[1].charAt(8) == 'f') {
            throw new RuntimeException();
        }
        A02[4] = "bjBCaQy28rNQq0pISHtZZouKJ3cbndZJ";
        interfaceC07001y.AFC(enumC06991x);
    }

    public final C1529Zq A07() {
        return this.A00;
    }

    public final void A08() {
        C1529Zq c1529Zq = new C1529Zq(this.A01, this, this.A02);
        this.A00 = c1529Zq;
        c1529Zq.A0I(this.A01.A0A(), this.A01.A06());
    }

    public final void A09(InterstitialAd interstitialAd, EnumSet<CacheFlag> enumSet, String str) {
        if (super.A00.A5Y()) {
            return;
        }
        this.A01.A0C(interstitialAd);
        C1529Zq c1529Zq = this.A00;
        if (c1529Zq != null) {
            c1529Zq.A0I(enumSet, str);
            return;
        }
        this.A01.A0J(enumSet);
        this.A01.A0G(str);
        A08();
    }

    public final boolean A0A() {
        C1529Zq c1529Zq = this.A00;
        if (c1529Zq != null) {
            return c1529Zq.A0J();
        }
        if (this.A01.A00() > 0) {
            long jA00 = LM.A00();
            long jA002 = this.A01.A00();
            if (A02[0].charAt(6) == 'y') {
                throw new RuntimeException();
            }
            A02[4] = "spPOKGUnJm6foAMMjUQWH3rPbfiGZlB3";
            if (jA00 > jA002) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0B() {
        C1529Zq c1529Zq = this.A00;
        return c1529Zq != null ? c1529Zq.A0K() : super.A00.A5r() == EnumC06991x.A06;
    }

    public final boolean A0C(InterstitialAd interstitialAd, InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        if (super.A00.A5Z()) {
            return false;
        }
        this.A01.A0C(interstitialAd);
        C1529Zq c1529Zq = this.A00;
        if (c1529Zq != null) {
            return c1529Zq.A0L();
        }
        C1529Zq c1529Zq2 = new C1529Zq(this.A01, this, this.A02);
        this.A00 = c1529Zq2;
        c1529Zq2.A0L();
        return false;
    }
}
