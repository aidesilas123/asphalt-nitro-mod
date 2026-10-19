package com.facebook.ads.redexgen.X;

import android.view.View;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1531Zs extends AbstractC06650p {
    public static byte[] A01;
    public static String[] A02 = {"", "lR4UvBki6PSdVcLREjEHAbqRd1OmLUQf", "DjKPGQUWmMf7x", "ODfaPUPPzX7KhktdCz15RADFZIjUcUTH", "SOtQhTlfKwNvvZXzwoqU2I3z2iEV30z7", "BHtVd6ktyCMEATMZK8J5wjGrCvXYI9tG", "P8UTzFKpwpJ94", "IxNcf87J3g"};
    public final /* synthetic */ C1529Zq A00;

    static {
        A01();
    }

    public C1531Zs(C1529Zq c1529Zq) {
        this.A00 = c1529Zq;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{99, 114, 107, Ascii.GS, 17, Ascii.DLE, 10, Ascii.FF, 17, Ascii.DC2, Ascii.DC2, Ascii.ESC, Ascii.FF, 94, Ascii.ETB, Ascii.CR, 94, Ascii.DLE, Ascii.VT, Ascii.DC2, Ascii.DC2};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A02() {
        if (this.A00.A01 == null) {
            this.A00.A06 = false;
            this.A00.A09.onInterstitialActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A04() {
        if (this.A00.A01 != null) {
            this.A00.A01.show();
            return;
        }
        this.A00.A06 = false;
        if (this.A00.A03 != null) {
            this.A00.A03.A0O(new Zt(this));
            this.A00.A03.A0J();
            this.A00.A03 = null;
        }
        this.A00.A09.onInterstitialDismissed(this.A00.A0A.A01());
        this.A00.A05.A05();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A05() {
        this.A00.A09.onInterstitialDisplayed(this.A00.A0A.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A06() {
        this.A00.A09.onRewardedAdServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A07() {
        this.A00.A09.onRewardedAdServerSucceeded();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A08() {
        this.A00.A09.onRewardedAdCompleted();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0C() {
        this.A00.A08.A0E().A2f();
        this.A00.A09.onAdClicked(this.A00.A0A.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0D() {
        this.A00.A09.onLoggingImpression(this.A00.A0A.A01());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0E(View view) {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0098  */
    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0F(com.facebook.ads.redexgen.X.InterfaceC06640o r8) {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1531Zs.A0F(com.facebook.ads.redexgen.X.0o):void");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC06650p
    public final void A0G(JG jg) {
        this.A00.A08.A0E().A2i(LM.A01(this.A00.A00), jg.A03().getErrorCode(), jg.A04());
        this.A00.A09.onError(this.A00.A0A.A01(), C1135Kf.A00(jg));
    }
}
