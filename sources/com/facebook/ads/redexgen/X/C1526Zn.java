package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AdError;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.facebook.ads.internal.api.AdCompanionView;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1526Zn implements AnonymousClass20 {
    public static byte[] A0C;
    public static String[] A0D = {"gd6Snq8TqC5qGLc", "5Vo8FrFWo5Fl4YG5W1yHT6ZfMsOXSACT", "HYpFHiAeuVvng5d4eXQK0awgijL0SEef", "zgL9OdntC9Jt", "c4pha1QVXZPHNWU", "oPtBq8V8zceab2K03f0YSkruz1vfGvQp", "tGZii7gSURWSZ1CI0FSKqsks", "YmWpveYB3lCv"};
    public static final String A0E;
    public long A02;
    public RewardedVideoAd A03;
    public C1C A04;
    public EV A05;
    public C1509Yv A06;
    public final YA A09;
    public final S2SRewardedVideoAdExtendedListener A0A;
    public final AnonymousClass27 A0B;
    public int A00 = 0;
    public boolean A08 = false;
    public long A01 = -1;
    public LN A07 = new LN();

    static {
        A0B();
        A0E = C1526Zn.class.getSimpleName();
    }

    public C1526Zn(AnonymousClass27 anonymousClass27, C2A c2a, String str) {
        this.A0B = anonymousClass27;
        this.A09 = anonymousClass27.A0B;
        this.A0A = new C1520Zg(str, c2a, this, anonymousClass27);
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A0C = new byte[]{120, 87, Ascii.EM, 88, 93, Ascii.EM, 85, 86, 88, 93, Ascii.EM, 80, 74, Ascii.EM, 88, 85, 75, 92, 88, 93, 64, Ascii.EM, 80, 87, Ascii.EM, 73, 75, 86, 94, 75, 92, 74, 74, Ascii.ETB, Ascii.EM, 96, 86, 76, Ascii.EM, 74, 81, 86, 76, 85, 93, Ascii.EM, 78, 88, 80, 77, Ascii.EM, 95, 86, 75, Ascii.EM, 88, 93, 117, 86, 88, 93, 92, 93, 17, Ascii.DLE, Ascii.EM, 77, 86, Ascii.EM, 91, 92, Ascii.EM, 90, 88, 85, 85, 92, 93, 47, Ascii.CAN, Ascii.CAN, 5, Ascii.CAN, 74, 6, 5, Ascii.VT, Ascii.SO, 3, 4, Ascii.CR, 74, Ascii.CAN, Ascii.SI, Ascii.GS, Ascii.VT, Ascii.CAN, Ascii.SO, Ascii.SI, Ascii.SO, 74, Ascii.FS, 3, Ascii.SO, Ascii.SI, 5, 74, Ascii.VT, Ascii.SO, 92, 77, 84};
        if (A0D[6].length() != 24) {
            throw new RuntimeException();
        }
        String[] strArr = A0D;
        strArr[4] = "OGOVhUIoezz1oHK";
        strArr[0] = "xl2MkcRK0CWEWUY";
    }

    private void A0D(String str, AdExperienceType adExperienceType, boolean z) {
        String strA02;
        if (!this.A08 && this.A05 != null) {
            Log.w(A0E, A0A(0, 78, 100));
        }
        A0E(false);
        this.A08 = false;
        C06931r c06931r = new C06931r(this.A0B.A0C, JL.A06, AdPlacementType.REWARDED_VIDEO, JJ.A07, 1);
        c06931r.A08(z);
        if (IP.A24(this.A09) && (strA02 = C1133Kd.A02(this.A09, this.A0B.A06)) != null) {
            AnonymousClass27 anonymousClass27 = this.A0B;
            String[] strArr = A0D;
            if (strArr[2].charAt(28) != strArr[1].charAt(28)) {
                throw new RuntimeException();
            }
            A0D[6] = "NRWBzlFLQPOGySbiiYXSLDN6";
            anonymousClass27.A06 = strA02;
        }
        c06931r.A06(this.A0B.A06);
        c06931r.A07(this.A0B.A07);
        EV ev = new EV(this.A0B.A0B, c06931r);
        this.A05 = ev;
        ev.A0O(new C1528Zp(this));
        this.A05.A0S(str, adExperienceType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E(boolean z) {
        EV ev = this.A05;
        if (ev != null) {
            ev.A0O(new C1527Zo(this));
            this.A05.A0T(z);
            this.A05 = null;
        }
    }

    public final long A0G() {
        EV ev = this.A05;
        if (ev != null) {
            return ev.A0D();
        }
        return -1L;
    }

    public final void A0H() {
        A0E(true);
    }

    public final void A0I() {
        C1509Yv c1509Yv = this.A06;
        if (c1509Yv != null) {
            c1509Yv.A02();
        }
    }

    public final void A0J(RewardData rewardData) {
        EV ev;
        this.A0B.A03 = rewardData;
        if (!this.A08 || (ev = this.A05) == null) {
            return;
        }
        ev.A0V(rewardData);
    }

    public final void A0K(AdCompanionView adCompanionView) {
        C1C c1c;
        C1509Yv c1509Yv = (C1509Yv) adCompanionView.getAdCompanionViewApi();
        this.A06 = c1509Yv;
        YA ya = this.A09;
        if (ya == null || (c1c = this.A04) == null) {
            return;
        }
        c1509Yv.A03(ya, (AbstractC1566aS) c1c);
    }

    public final void A0L(String str, AdExperienceType adExperienceType, boolean z) {
        this.A01 = System.currentTimeMillis();
        try {
            A0D(str, adExperienceType, z);
        } catch (Exception e2) {
            Log.e(A0E, A0A(78, 31, 55), e2);
            this.A0B.A0B.A07().A9M(A0A(109, 3, 96), C08417x.A0b, new C08427y(e2));
            AdError adErrorInternalError = AdError.internalError(2004);
            this.A0B.A0B.A0E().A2i(LM.A01(this.A01), adErrorInternalError.getErrorCode(), adErrorInternalError.getErrorMessage());
            this.A0A.onError(this.A0B.A00(), adErrorInternalError);
        }
    }

    public final boolean A0M() {
        EV ev = this.A05;
        return ev == null || ev.A0U();
    }

    public final boolean A0N() {
        return this.A08;
    }

    public final boolean A0O(int i, long j) {
        if (!this.A08) {
            this.A0A.onError(this.A0B.A00(), AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
            return false;
        }
        if (this.A05 == null) {
            this.A08 = false;
            return false;
        }
        this.A02 = System.currentTimeMillis();
        this.A05.A07.A02(i);
        this.A05.A07.A03(j);
        this.A05.A0I();
        this.A08 = false;
        return true;
    }
}
