package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdExperienceType;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class EO extends AbstractC1534Zw {
    public static String[] A02 = {"6CKGqR2K2MH05agWbJN3ka4F1ij3xhtD", "25gFyXHUhXKi43K8KJ4chgoS7w07JQQZ", "vjdmG7Wc53PSGoj25veSMfUO8xL7SxfR", "TQa00i6LjIP9KGMZzj8Rx2HUQjG1dRa1", "ap4e45gngLG", "PTi4Abr85pNMPfkRgyZo1NxbOs1aDg0f", "O7pu2EfbMgektne8Y3vUNLOEHbflJ4Uv", "IlEhKaiOmMN"};
    public C1526Zn A00;
    public final AnonymousClass27 A01;

    public EO(AnonymousClass27 anonymousClass27) {
        super(anonymousClass27.A0B, A00(anonymousClass27));
        this.A01 = anonymousClass27;
    }

    public static C1522Zi A00(AnonymousClass27 anonymousClass27) {
        return new C1522Zi(anonymousClass27);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1534Zw
    public final void A05() {
        C1526Zn c1526Zn = this.A00;
        if (c1526Zn != null) {
            c1526Zn.A0H();
        }
        super.A00.AFC(EnumC06991x.A04);
    }

    public final C1526Zn A07() {
        return this.A00;
    }

    public final void A08() {
        C1526Zn c1526Zn = new C1526Zn(this.A01, this, this.A02);
        this.A00 = c1526Zn;
        c1526Zn.A0L(this.A01.A05, this.A01.A02, this.A01.A08);
    }

    public final void A09(com.facebook.ads.Ad ad, String str, AdExperienceType adExperienceType, boolean z) {
        if (super.A00.A5Y()) {
            return;
        }
        this.A01.A01(ad);
        C1526Zn c1526Zn = this.A00;
        if (c1526Zn == null) {
            this.A01.A05 = str;
            this.A01.A02 = adExperienceType;
            this.A01.A08 = z;
            A08();
            return;
        }
        c1526Zn.A0L(str, adExperienceType, z);
        String[] strArr = A02;
        if (strArr[7].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[5] = "snzzAybKLkKRz85P4BzzU6VwJ24uwEo8";
        strArr2[1] = "iwkpZYLOXs3iYxZlCgOD0Nxy0vDnSGoK";
    }

    public final void A0A(RewardData rewardData) {
        this.A01.A03 = rewardData;
        C1526Zn c1526Zn = this.A00;
        if (c1526Zn != null) {
            c1526Zn.A0J(rewardData);
        }
    }

    public final boolean A0B() {
        C1526Zn c1526Zn = this.A00;
        return c1526Zn != null ? c1526Zn.A0M() : this.A01.A01 > 0 && LM.A00() > this.A01.A01;
    }

    public final boolean A0C() {
        C1526Zn c1526Zn = this.A00;
        return c1526Zn != null ? c1526Zn.A0N() : super.A00.A5r() == EnumC06991x.A06;
    }

    public final boolean A0D(com.facebook.ads.Ad ad, RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig) {
        int iA00 = ((C07905n) rewardedVideoShowAdConfig).A00();
        long jA01 = ((C07905n) rewardedVideoShowAdConfig).A01();
        if (super.A00.A5Z()) {
            return false;
        }
        this.A01.A01(ad);
        C1526Zn c1526Zn = this.A00;
        if (c1526Zn != null) {
            return c1526Zn.A0O(iA00, jA01);
        }
        C1526Zn c1526Zn2 = new C1526Zn(this.A01, this, this.A02);
        this.A00 = c1526Zn2;
        c1526Zn2.A0O(iA00, jA01);
        return false;
    }
}
