package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.NativeAdScrollView;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.internal.api.NativeAdScrollViewApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5X, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C5X implements NativeAdScrollViewApi {
    public static byte[] A07;
    public final int A00;
    public final NativeAdScrollView.AdViewProvider A01;
    public final NativeAdView.Type A02;
    public final NativeAdViewAttributes A03;
    public final NativeAdsManager A04;
    public final C1489Yb A05;
    public final YA A06;

    static {
        A07();
    }

    public C5X(NativeAdScrollView nativeAdScrollView, Context context, NativeAdsManager nativeAdsManager, NativeAdScrollView.AdViewProvider adViewProvider, int i, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes, int i2) {
        if (!nativeAdsManager.isLoaded()) {
            throw new IllegalStateException(A06(74, 27, 39));
        }
        if (type == null && adViewProvider == null && i <= 0) {
            throw new IllegalArgumentException(A06(0, 74, 85));
        }
        this.A06 = C5Q.A02(context);
        this.A04 = nativeAdsManager;
        this.A03 = nativeAdViewAttributes;
        this.A01 = adViewProvider;
        this.A02 = type;
        this.A00 = i2;
        C1490Yc c1490Yc = new C1490Yc(this);
        C1489Yb c1489Yb = new C1489Yb(context);
        this.A05 = c1489Yb;
        if (type != null) {
            c1489Yb.A00((int) (C1148Ku.A02 * type.getHeight()));
        } else if (i > 0) {
            c1489Yb.A00(((int) C1148Ku.A02) * i);
        }
        c1489Yb.setAdapter(c1490Yc);
        setInset(20);
        c1490Yc.A0D();
        nativeAdScrollView.addView(c1489Yb);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 33);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A07 = new byte[]{-61, -21, -23, -22, -106, -26, -24, -27, -20, -33, -38, -37, -106, -41, -106, -60, -41, -22, -33, -20, -37, -73, -38, -52, -33, -37, -19, -92, -54, -17, -26, -37, -94, -106, -73, -38, -52, -33, -37, -19, -58, -24, -27, -20, -33, -38, -37, -24, -106, -27, -24, -106, -41, -106, -28, -41, -22, -33, -20, -37, -73, -38, -52, -33, -37, -19, -66, -37, -33, -35, -34, -22, -70, -26, -106, -87, -68, -79, -66, -83, -119, -84, -69, -107, -87, -74, -87, -81, -83, -70, 104, -74, -73, -68, 104, -76, -73, -87, -84, -83, -84};
    }

    @Override // com.facebook.ads.internal.api.NativeAdScrollViewApi
    public final void setInset(int i) {
        if (i > 0) {
            float f2 = C1148Ku.A02;
            int iRound = Math.round(i * f2);
            this.A05.setPadding(iRound, 0, iRound, 0);
            this.A05.setPageMargin(Math.round((i / 2) * f2));
            this.A05.setClipToPadding(false);
        }
    }
}
