package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5D, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C5D implements AdViewApi {
    public static byte[] A0D;
    public static String[] A0E = {"of0bzA7MwNGTia9F31tAkieNA09H6OOQ", "TyTQj7xFBxvma6AaZ1TUwVS6lItsexiQ", "kN9yyhhGlFuDqh5wulKzoOOSsFZblOVu", "DXKKP4SSVuW5x9unPZpKCS00jdGSX4q", "ceBkREnsnDPWKQGMERGG6oDocc2kf8dJ", "ULZujO58Hn4sCnlurEwExiI5FfKtYml", "oBzM86F4GMvLYp6iWCqbmyfPVfF4ncm8", "8s2Qgj6JQYkd4IbFNTxV1lfTN5yJUxqm"};
    public long A00;
    public View A01;
    public AdListener A02;
    public C1002Ex A03;
    public NJ A04;
    public String A05;
    public String A06;
    public final DisplayMetrics A07;
    public final AdView A08;
    public final AdViewParentApi A09;
    public final C0978Dz A0A;
    public final JJ A0B;
    public final String A0C;

    static {
        A02();
    }

    public C5D(Context context, String str, AdSize adSize, AdViewParentApi adViewParentApi, AdView adView) {
        this.A00 = -1L;
        if (adSize == null || adSize == AdSize.INTERSTITIAL) {
            throw new IllegalArgumentException(A01(108, 6, 18));
        }
        this.A07 = adView.getContext().getResources().getDisplayMetrics();
        JJ jjA04 = C1137Kh.A04(adSize);
        this.A0B = jjA04;
        this.A0C = str;
        this.A09 = adViewParentApi;
        this.A08 = adView;
        C0978Dz c0978DzA06 = C5Q.A06(context);
        this.A0A = c0978DzA06;
        c0978DzA06.A0E().A2o(AdPlacementType.BANNER.toString(), str);
        C06931r c06931r = new C06931r(str, C1137Kh.A05(jjA04), AdPlacementType.BANNER, C1137Kh.A04(adSize), 1);
        c06931r.A06(this.A05);
        c06931r.A07(this.A06);
        C1002Ex c1002Ex = new C1002Ex(c0978DzA06, c06931r);
        this.A03 = c1002Ex;
        c1002Ex.A0O(new C1501Yn(this));
    }

    public C5D(Context context, String str, String str2, AdViewParentApi adViewParentApi, AdView adView) throws JH {
        this(context, str, A00(str2), adViewParentApi, adView);
        this.A0A.A0E().A3j();
    }

    public static AdSize A00(String str) throws JH {
        JL jlA00 = JQ.A00(str);
        if (jlA00 == null) {
            throw new JH(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A01(67, 41, 7), str));
        }
        JQ.A03(jlA00);
        return C1137Kh.A01(jlA00);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        byte[] bArr = {-78, -78, -79, -76, -70, -29, -30, -78, 118, 121, 118, 117, 117, 117, 126, -90, -12, -15, -12, -13, 33, -9, -11, -15, -17, Ascii.SO, Ascii.ESC, Ascii.ESC, Ascii.DC2, Ascii.US, -51, Ascii.SO, 17, -51, 17, Ascii.DC2, 32, 33, Ascii.US, Ascii.FS, 38, Ascii.DC2, 17, -14, 17, Ascii.RS, Ascii.RS, Ascii.NAK, 34, -48, 17, Ascii.DC4, -48, Ascii.FS, Ascii.US, 17, Ascii.DC4, -48, 34, Ascii.NAK, 33, 37, Ascii.NAK, 35, 36, Ascii.NAK, Ascii.DC4, -118, -88, -75, -75, -74, -69, 103, -83, -80, -75, -85, 103, -88, 103, -69, -84, -76, -73, -77, -88, -69, -84, 103, -69, -81, -88, -69, 103, -77, -74, -88, -85, 103, -87, -80, -85, 103, 110, 108, -70, 110, -77, -74, -91, -69, -52, -73, -20, -19, -5, -4, -6, -9, 1, -40, -37, -51, -48, -83, -48};
        if (A0E[2].charAt(11) != 'D') {
            throw new RuntimeException();
        }
        String[] strArr = A0E;
        strArr[7] = "i0zr3oWhaZ1ZQYjulO9yltnfKtDweGPM";
        strArr[6] = "f16HnFk6V4WfoRTY4RGQrwGHYb77b2mz";
        A0D = bArr;
    }

    private void A03(String str) {
        this.A00 = System.currentTimeMillis();
        if (str == null) {
            this.A0A.A0E().A2l();
        } else {
            this.A0A.A0E().A2k();
        }
        C1002Ex c1002Ex = this.A03;
        String[] strArr = A0E;
        if (strArr[3].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[3] = "8EJDtH9EjlwutgZO3WtzB3nx702AY4O";
        strArr2[5] = "dTiKD7UwUCw1SvcKYJrEphBgoR9CLtC";
        if (c1002Ex != null) {
            c1002Ex.A0R(str);
        }
        this.A0A.A0E().A2j();
    }

    public final long A04() {
        return this.A00;
    }

    public final DisplayMetrics A05() {
        return this.A07;
    }

    public final AdListener A06() {
        return this.A02;
    }

    public final AdView A07() {
        return this.A08;
    }

    public final C1002Ex A08() {
        return this.A03;
    }

    public final C0978Dz A09() {
        return this.A0A;
    }

    public final JJ A0A() {
        return this.A0B;
    }

    public final void A0B(RelativeLayout relativeLayout, View view) {
        PK pkA01;
        this.A0A.A0E().A3w(this.A06 != null);
        String str = this.A06;
        if (str == null || (pkA01 = PJ.A01(this.A0A, str)) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        relativeLayout.addView(pkA01, new RelativeLayout.LayoutParams(layoutParams.width, layoutParams.height));
    }

    public final void A0C(AdListener adListener) {
        this.A0A.A0E().A2h(adListener != null);
        this.A02 = adListener;
    }

    public final void A0D(NJ nj) {
        this.A04 = nj;
    }

    @Override // com.facebook.ads.internal.api.AdViewApi
    public final AdView.AdViewLoadConfigBuilder buildLoadAdConfig() {
        return new C1100It(this);
    }

    @Override // com.facebook.ads.Ad
    public final void destroy() {
        JU.A05(A01(114, 7, 72), A01(24, 19, 109), A01(0, 8, 65));
        this.A0A.A0E().A2p();
        C1002Ex c1002Ex = this.A03;
        if (c1002Ex != null) {
            c1002Ex.A0T(true);
            this.A03 = null;
        }
        if (Build.VERSION.SDK_INT >= 18 && this.A04 != null && IP.A12(this.A08.getContext())) {
            NJ nj = this.A04;
            String[] strArr = A0E;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[7] = "fmi4ltQko56R0Ot1hIU3uMuoiOam3SD1";
            strArr2[6] = "7H1g3sSDF1cZj7eOXlokIXc1uirRZwhG";
            nj.A07();
            View view = this.A01;
            if (view != null) {
                view.getOverlay().remove(this.A04);
            }
        }
        this.A08.removeAllViews();
        this.A01 = null;
        this.A02 = null;
    }

    @Override // com.facebook.ads.Ad
    public final String getPlacementId() {
        return this.A0C;
    }

    @Override // com.facebook.ads.Ad
    public final boolean isAdInvalidated() {
        C1002Ex c1002Ex = this.A03;
        boolean z = c1002Ex == null || c1002Ex.A0U();
        this.A0A.A0E().A4o(z);
        return z;
    }

    @Override // com.facebook.ads.Ad
    public final void loadAd() {
        JU.A05(A01(121, 6, 44), A01(43, 24, 112), A01(8, 8, 5));
        A03(null);
    }

    @Override // com.facebook.ads.internal.api.AdViewApi
    public final void loadAd(AdView.AdViewLoadConfig adViewLoadConfig) {
        JU.A05(A01(121, 6, 44), A01(43, 24, 112), A01(16, 8, 127));
        A03(((C1100It) adViewLoadConfig).A00());
    }

    @Override // com.facebook.ads.internal.api.AdViewApi, com.facebook.ads.internal.api.AdViewParentApi
    public final void onConfigurationChanged(Configuration configuration) {
        this.A09.onConfigurationChanged(configuration);
        View view = this.A01;
        if (view != null) {
            JN.A01(this.A07, view, this.A0B);
        }
    }

    @Override // com.facebook.ads.internal.api.AdViewApi, com.facebook.ads.Ad
    @Deprecated
    public final void setExtraHints(ExtraHints extraHints) {
        C1002Ex c1002Ex;
        this.A05 = extraHints.getHints();
        this.A06 = extraHints.getMediationData();
        if (!IP.A0j(this.A0A) || (c1002Ex = this.A03) == null) {
            return;
        }
        c1002Ex.A07.A06(this.A05);
        this.A03.A07.A07(this.A06);
    }
}
