package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdListener;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1528Zp extends AbstractC06650p {
    public static byte[] A01;
    public static String[] A02 = {"7kSkrPID5YMo1WnvaMIgpKB6WIhQPZTc", "kYnVnFR0h3Yv", "", "4OZGrpocgzJPR2XOpe36kiptmUtlR1IY", "AELVZqmE3v", "ezzX0t3o6v3ClFiCUOYeN27kq8G", "mBbxV2ZqaJcWXY", "eL94qTtIFL"};
    public final /* synthetic */ C1526Zn A00;

    static {
        A01();
    }

    public C1528Zp(C1526Zn c1526Zn) {
        this.A00 = c1526Zn;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-28, -13, -20, -53, -41, -42, -36, -38, -41, -44, -44, -51, -38, -120, -47, -37, -120, -42, -35, -44, -44};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A06() {
        this.A00.A0A.onRewardServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A07() {
        this.A00.A0A.onRewardServerSuccess();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A08() {
        if (this.A00.A03 == null) {
            this.A00.A0A.onRewardedVideoCompleted();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A09() {
        if (this.A00.A03 == null) {
            this.A00.A0A.onRewardedVideoActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0A() {
        if (this.A00.A03 == null) {
            this.A00.A0A.onRewardedVideoClosed();
            this.A00.A07.A05();
        } else {
            C07905n c07905n = (C07905n) this.A00.A03.buildShowAdConfig();
            c07905n.A02(System.currentTimeMillis() - this.A00.A02);
            this.A00.A03.show(c07905n.build());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0C() {
        this.A00.A09.A0E().A2f();
        this.A00.A0A.onAdClicked(this.A00.A0B.A00());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0D() {
        this.A00.A0A.onLoggingImpression(this.A00.A0B.A00());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0F(InterfaceC06640o interfaceC06640o) {
        if (this.A00.A05 == null) {
            this.A00.A09.A07().A9M(A00(0, 3, 70), C08417x.A0N, new C08427y(A00(3, 18, 43)));
            return;
        }
        AbstractC1570aW abstractC1570aW = (AbstractC1570aW) interfaceC06640o;
        if (this.A00.A0B.A03 != null) {
            abstractC1570aW.A02(this.A00.A0B.A03);
        }
        AnonymousClass27 anonymousClass27 = this.A00.A0B;
        int iA0G = abstractC1570aW.A0G();
        String[] strArr = A02;
        if (strArr[4].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "61YjDYRNNN";
        strArr2[7] = "vT3ubuaNP5";
        anonymousClass27.A00 = iA0G;
        this.A00.A08 = true;
        C1526Zn c1526Zn = this.A00;
        c1526Zn.A04 = c1526Zn.A05.A0F();
        if (this.A00.A04 != null) {
            int iA0t = this.A00.A04.A0h() ? 0 : ((AbstractC1566aS) this.A00.A04).A0t();
            if (iA0t > 0) {
                C1133Kd c1133Kd = new C1133Kd();
                if (c1133Kd.A09(this.A00.A09, this.A00.A0B.A06, iA0t)) {
                    c1133Kd.A08(this.A00.A09, true);
                    C1526Zn c1526Zn2 = this.A00;
                    c1526Zn2.A03 = c1133Kd.A07(c1526Zn2.A09, this.A00.A0B.A0C, this.A00.A0B.A06);
                } else {
                    C1526Zn c1526Zn3 = this.A00;
                    String[] strArr3 = A02;
                    if (strArr3[4].length() != strArr3[7].length()) {
                        String[] strArr4 = A02;
                        strArr4[4] = "df15N9yr5s";
                        strArr4[7] = "rrfEFjVt4q";
                        c1133Kd.A08(c1526Zn3.A09, false);
                    } else {
                        String[] strArr5 = A02;
                        strArr5[1] = "7AaEv1vCH3bw";
                        strArr5[5] = "Y1uo0lYkjhkOAjcvNvodbhiOq3C";
                        c1133Kd.A08(c1526Zn3.A09, false);
                    }
                }
            }
        }
        if (this.A00.A03 == null) {
            this.A00.A0A.onAdLoaded(this.A00.A0B.A00());
        } else {
            ((AbstractC1566aS) this.A00.A04).A16(true);
            this.A00.A03.loadAd(this.A00.A03.buildLoadAdConfig().withFailOnCacheFailureEnabled(true).withRewardData(this.A00.A04.A0J()).withAdExperience(this.A00.A0B.A02).withAdListener(new RewardedVideoAdListener() { // from class: com.facebook.ads.redexgen.X.22
                @Override // com.facebook.ads.AdListener
                public final void onAdClicked(com.facebook.ads.Ad ad) {
                }

                @Override // com.facebook.ads.AdListener
                public final void onAdLoaded(com.facebook.ads.Ad ad) {
                    this.A00.A00.A0A.onAdLoaded(this.A00.A00.A0B.A00());
                }

                @Override // com.facebook.ads.AdListener
                public final void onError(com.facebook.ads.Ad ad, AdError adError) {
                    this.A00.A00.A03 = null;
                    ((AbstractC1566aS) this.A00.A00.A04).A16(false);
                    this.A00.A00.A0A.onAdLoaded(this.A00.A00.A0B.A00());
                }

                @Override // com.facebook.ads.AdListener
                public final void onLoggingImpression(com.facebook.ads.Ad ad) {
                }

                @Override // com.facebook.ads.RewardedVideoAdListener
                public final void onRewardedVideoClosed() {
                    this.A00.A00.A0A.onRewardedVideoClosed();
                    this.A00.A00.A07.A05();
                }

                @Override // com.facebook.ads.RewardedVideoAdListener
                public final void onRewardedVideoCompleted() {
                    this.A00.A00.A0A.onRewardedVideoCompleted();
                }
            }).build());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0G(JG jg) {
        this.A00.A0E(true);
        this.A00.A0B.A0B.A0E().A2i(LM.A01(this.A00.A01), jg.A03().getErrorCode(), jg.A04());
        this.A00.A0A.onError(this.A00.A0B.A00(), C1135Kf.A00(jg));
    }
}
