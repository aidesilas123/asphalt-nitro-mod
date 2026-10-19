package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.gameloft.adsmanager.JavaUtils;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1360Sy extends AbstractC1227Nv {
    public static byte[] A06;
    public static String[] A07 = {"1qM0UqBuKeNFs4931PZdKXfB5ZchECK5", "3ZSmcCEAG5Dz0dWrJNlp2MNszP7YT25A", "Vrvau7r1HMpQKQXhvyVkTfJZAsfHOW4A", "oVRoE2FdK0le1s2SfNIozg00Kc9sH4MP", "npYoVlwUwM4clRwIxvjz9nauDkw8jySV", "7Yuh663Y", "kkRlGGIMUj7iwn7pYEfT9Vq54HRzcbQk", "UynwTjbvMY6JmtelA"};
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    public K2 A00;
    public JX A01;
    public JT A02;
    public final AbstractC1566aS A03;
    public final C1D A04;
    public final NR A05;

    static {
        A0D();
        A0B = (int) (C1148Ku.A02 * 48.0f);
        A0F = (int) (C1148Ku.A02 * 16.0f);
        A08 = (int) (C1148Ku.A02 * 4.0f);
        A0E = (int) (C1148Ku.A02 * 44.0f);
        A0C = (int) (C1148Ku.A02 * 8.0f);
        A0D = (int) (C1148Ku.A02 * 12.0f);
        A0H = (int) (C1148Ku.A02 * 12.0f);
        A0G = (int) (C1148Ku.A02 * 26.0f);
        int iA01 = C07052d.A01(-1, 77);
        A09 = iA01;
        A0A = C07052d.A01(iA01, 90);
    }

    public AbstractC1360Sy(C1231Nz c1231Nz, boolean z) {
        super(c1231Nz, z);
        AbstractC1566aS abstractC1566aSA04 = c1231Nz.A04();
        this.A03 = abstractC1566aSA04;
        this.A04 = abstractC1566aSA04.A0v();
        this.A05 = A0B(c1231Nz);
        AbstractC1172Ls abstractC1172LsA08 = c1231Nz.A08();
        if (abstractC1172LsA08 != null) {
            abstractC1172LsA08.setLayoutParams(new RelativeLayout.LayoutParams(-1, abstractC1172LsA08.getToolbarHeight()));
            abstractC1172LsA08.setPageDetailsVisible(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.facebook.ads.redexgen.X.C1361Sz A0B(com.facebook.ads.redexgen.X.C1231Nz r19) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC1360Sy.A0B(com.facebook.ads.redexgen.X.Nz):com.facebook.ads.redexgen.X.Sz");
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0D() {
        A06 = new byte[]{9, 5, 7, 68, Ascii.FF, Ascii.VT, 9, Ascii.SI, 8, 5, 5, 1, 68, Ascii.VT, Ascii.SO, Ascii.EM, 68, 3, 4, Ascii.RS, Ascii.SI, Ascii.CAN, Ascii.EM, Ascii.RS, 3, Ascii.RS, 3, Ascii.VT, 6, 68, 9, 6, 3, 9, 1, Ascii.SI, Ascii.SO, 92, 75, 89, 79, 92, 74, 75, 74, 113, 88, 71, 74, 75, 65};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
    public void A0z(C1D c1d, String str, double d2, Bundle bundle) {
        super.A0z(c1d, str, d2, bundle);
        this.A05.setInfo(c1d.A0E(), c1d.A0F(), str, this.A03.A0z().A01(), null);
    }

    public final int A12(AbstractC1172Ls abstractC1172Ls) {
        return abstractC1172Ls == null ? AbstractC1172Ls.A00 : abstractC1172Ls.getToolbarHeight();
    }

    public void A13() {
        View expandableLayout = getAdDetailsView().getExpandableLayout();
        if (expandableLayout != null) {
            K2 k2 = new K2(true);
            this.A00 = k2;
            JX jx = this.A01;
            if (jx != null) {
                k2.A0I(jx);
            }
            C1M c1mA01 = this.A03.A0u().A01();
            this.A00.A0I(new JV(getAdDetailsView().getCTAButton(), JavaUtils.Constants.NATIVE_HEIGHT_DP_300, -1, c1mA01.A09(true)));
            int i = A09;
            int i2 = A0A;
            int i3 = A08;
            this.A00.A0I(new JY(getAdDetailsView().getCTAButton(), JavaUtils.Constants.NATIVE_HEIGHT_DP_300, LV.A08(i, i2, i3), LV.A05(c1mA01.A08(true), i3)));
            this.A00.A0I(new JW(expandableLayout, 150, false));
            this.A00.A0H(IronSourceConstants.IS_AUCTION_FAILED);
        }
    }

    public AbstractC1566aS getAdDataBundle() {
        return this.A03;
    }

    public JT getAdDetailsAnimation() {
        return this.A02;
    }

    public NR getAdDetailsView() {
        return this.A05;
    }

    public C1D getAdInfo() {
        return this.A04;
    }

    public K2 getAnimationPlugin() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getAdDetailsView().A0C(configuration.orientation);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View expandableLayout = getAdDetailsView().getExpandableLayout();
        if (expandableLayout == null || !z) {
            return;
        }
        JX jx = this.A01;
        if (A07[2].charAt(30) != '4') {
            throw new RuntimeException();
        }
        A07[0] = "AO2Vor543jhYYkt1oYijcT7buZTkR3eI";
        if (jx == null) {
            JX jx2 = new JX(expandableLayout, JavaUtils.Constants.NATIVE_HEIGHT_DP_300, expandableLayout.getHeight(), 0);
            this.A01 = jx2;
            this.A00.A0I(jx2);
            this.A00.A0G();
        }
    }
}
