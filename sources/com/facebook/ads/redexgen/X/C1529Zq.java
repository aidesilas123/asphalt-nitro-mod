package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.internal.api.AdCompanionView;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1529Zq implements AnonymousClass20 {
    public static byte[] A0B;
    public static String[] A0C = {"Q9RghtL5kPMxXUG2hlpmHrVaJwYYGwGq", "TIO3FaU0Mikock0w3rckrPhiuYRMfGhJ", "k6SAISDvmHdOF1rkjeEeymm6HvDlJVR0", "eDRhFd25R2oFsFg27vb0d5UADzs1KoZv", "MaVPWgska1IH7XOKtPwNB8GdxIWUIxDt", "dS1g8OO0fBonmOwqVSSlXi39LbvMIXQb", "JdFW5Fpsu4G", "QGzwgj8zvaLwI8"};
    public static final String A0D;
    public InterstitialAd A01;
    public C1C A02;
    public C1001Ew A03;
    public C1509Yv A04;
    public boolean A06;
    public boolean A07;
    public final YA A08;
    public final InterstitialAdExtendedListener A09;
    public final AnonymousClass23 A0A;
    public long A00 = -1;
    public LN A05 = new LN();

    static {
        A0B();
        A0D = C1529Zq.class.getSimpleName();
    }

    public C1529Zq(AnonymousClass23 anonymousClass23, C2A c2a, String str) {
        this.A0A = anonymousClass23;
        this.A08 = anonymousClass23.A05();
        this.A09 = new C1521Zh(str, c2a, this);
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 110);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A0B = new byte[]{-59, -14, -92, -27, -24, -92, -16, -13, -27, -24, -92, -19, -9, -92, -27, -16, -10, -23, -27, -24, -3, -92, -19, -14, -92, -12, -10, -13, -21, -10, -23, -9, -9, -78, -92, -35, -13, -7, -92, -9, -20, -13, -7, -16, -24, -92, -5, -27, -19, -8, -92, -22, -13, -10, -92, -27, -24, -48, -13, -27, -24, -23, -24, -84, -83, -92, -8, -13, -92, -26, -23, -92, -25, -27, -16, -16, -23, -24, -4, 33, 39, Ascii.CAN, 37, 38, 39, Ascii.FS, 39, Ascii.FS, Ascii.DC4, Ascii.US, -45, Ascii.US, 34, Ascii.DC4, Ascii.ETB, -45, Ascii.SYN, Ascii.DC4, Ascii.US, Ascii.US, Ascii.CAN, Ascii.ETB, -45, 42, Ascii.ESC, Ascii.FS, Ascii.US, Ascii.CAN, -45, 38, Ascii.ESC, 34, 42, Ascii.FS, 33, Ascii.SUB, -45, Ascii.FS, 33, 39, Ascii.CAN, 37, 38, 39, Ascii.FS, 39, Ascii.FS, Ascii.DC4, Ascii.US, -31, Ascii.CR, Ascii.FS, Ascii.NAK};
    }

    public final long A0E() {
        C1001Ew c1001Ew = this.A03;
        if (c1001Ew != null) {
            return c1001Ew.A0D();
        }
        return -1L;
    }

    public final void A0F() {
        C1001Ew c1001Ew = this.A03;
        if (c1001Ew != null) {
            c1001Ew.A0O(new C1530Zr(this));
            this.A03.A0T(true);
            this.A03 = null;
            this.A07 = false;
            this.A06 = false;
        }
    }

    public final void A0G() {
        C1509Yv c1509Yv = this.A04;
        if (c1509Yv != null) {
            c1509Yv.A02();
        }
    }

    public final void A0H(AdCompanionView adCompanionView) {
        C1C c1c;
        C1509Yv c1509Yv = (C1509Yv) adCompanionView.getAdCompanionViewApi();
        this.A04 = c1509Yv;
        YA ya = this.A08;
        if (ya == null || (c1c = this.A02) == null || !(c1c instanceof AbstractC1566aS)) {
            return;
        }
        c1509Yv.A03(ya, (AbstractC1566aS) c1c);
    }

    public final void A0I(EnumSet<CacheFlag> enumSet, String str) {
        String strA02;
        this.A00 = System.currentTimeMillis();
        if (!this.A07 && this.A03 != null) {
            Log.w(A0D, A0A(0, 78, 22));
        }
        this.A07 = false;
        if (this.A06 && !IP.A0h(this.A08)) {
            this.A08.A07().A9M(A0A(130, 3, 62), C08417x.A0L, new C08427y(A0A(78, 52, 69)));
            AdErrorType adErrorType = AdErrorType.LOAD_CALLED_WHILE_SHOWING_AD;
            this.A08.A0E().A2i(LM.A01(this.A00), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
            this.A09.onError(this.A0A.A01(), new AdError(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage()));
            return;
        }
        C1001Ew c1001Ew = this.A03;
        if (c1001Ew != null) {
            c1001Ew.A0O(new C1533Zv(this));
            this.A03.A0J();
            this.A03 = null;
        }
        C06931r c06931r = new C06931r(this.A0A.A09(), JN.A00(this.A08.getResources().getDisplayMetrics()), AdPlacementType.INTERSTITIAL, JJ.A07, 1, enumSet);
        if (IP.A24(this.A08) && (strA02 = C1133Kd.A02(this.A08, this.A0A.A07())) != null) {
            AnonymousClass23 anonymousClass23 = this.A0A;
            if (A0C[6].length() != 11) {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[3] = "6YCA3PHZSlLj0jmN2b2hvaW99ZyRMwjh";
            strArr[5] = "7PoIPIeUN8KAt8vfreK3c69iBAU82q7R";
            anonymousClass23.A0H(strA02);
        }
        c06931r.A06(this.A0A.A07());
        c06931r.A07(this.A0A.A08());
        c06931r.A04(this.A0A.A03());
        C1001Ew c1001Ew2 = new C1001Ew(this.A08, c06931r);
        this.A03 = c1001Ew2;
        c1001Ew2.A0O(new C1531Zs(this));
        this.A03.A0R(str);
    }

    public final boolean A0J() {
        C1001Ew c1001Ew = this.A03;
        return c1001Ew == null || c1001Ew.A0U();
    }

    public final boolean A0K() {
        return this.A07;
    }

    public final boolean A0L() {
        AdError adError = AdError.SHOW_CALLED_BEFORE_LOAD_ERROR;
        if (!this.A07) {
            this.A08.A0E().A2i(LM.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
            this.A09.onError(this.A0A.A01(), adError);
            return false;
        }
        C1001Ew c1001Ew = this.A03;
        if (c1001Ew != null) {
            c1001Ew.A0I();
            this.A06 = true;
            this.A07 = false;
            return true;
        }
        this.A08.A07().A9M(A0A(130, 3, 62), C08417x.A0S, new C08427y(AdErrorType.INTERSTITIAL_CONTROLLER_IS_NULL.getDefaultErrorMessage()));
        this.A08.A0E().A2i(LM.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
        this.A09.onError(this.A0A.A01(), adError);
        return false;
    }
}
