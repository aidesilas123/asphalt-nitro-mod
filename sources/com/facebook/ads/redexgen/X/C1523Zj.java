package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.facebook.ads.S2SRewardedVideoAdListener;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1523Zj implements AnonymousClass25 {
    public static byte[] A04;
    public static String[] A05 = {"l1o30ubgNMqwIxdsvAhdwl", "uEolzpc8zYF03u8DLAeDfs0A9wQx2vsd", "zKwy", "mFz9Za5MD8BXE4Lkxv", "Wms6Ep20", "", "s6yiLC", "izOiniaIEQHycLDhhOkzL"};
    public final AbstractC1534Zw A00;
    public final InterfaceC07001y A01;
    public final AnonymousClass27 A02;
    public final YA A03;

    static {
        A01();
    }

    public C1523Zj(YA ya, AnonymousClass27 anonymousClass27, InterfaceC07001y interfaceC07001y, AbstractC1534Zw abstractC1534Zw) {
        this.A03 = ya;
        this.A02 = anonymousClass27;
        this.A01 = interfaceC07001y;
        this.A00 = abstractC1534Zw;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{57, Ascii.FS, 88, Ascii.ETB, Ascii.SUB, Ascii.DC2, Ascii.GS, Ascii.ESC, Ascii.FF, 88, 17, Ascii.VT, 88, Ascii.SYN, Ascii.CR, Ascii.DC4, Ascii.DC4, 56, 47, 52, 62, 54, 63, 37, 63, 34, 46, 40, 59, 41, 37, 49, 63, 35, 9, Ascii.CR, Ascii.SO, 58, 43, 38, 42, 33, 44, 42, 1, 42, 59, 56, 32, 61, 36, 98, 101, Ascii.DEL, 116, 110, 121, 121, 100, 121, 116, 104, 100, 111, 110, 116, 96, 110, 114, Ascii.SO, 9, 19, Ascii.CAN, Ascii.NAK, 17, Ascii.CAN, 17, Ascii.SO, 3, 2, 8, Ascii.CAN, 3, Ascii.DC2, Ascii.NAK, 6, 19, Ascii.SO, 8, 9, Ascii.CAN, Ascii.FF, 2, Ascii.RS, 111, 108, 109, 100, 124, 106, 109, 117, 98, 111, 106, 103, 98, 119, 106, 108, 109, 124, 119, 106, 110, 102, 124, 104, 102, 122, 59, 19, 5, 5, Ascii.ETB, 17, 19, 76, 86, 96, 68, 94, 94, 68, 67, 74, Ascii.CR, 79, 88, 67, 73, 65, 72, Ascii.CR, 75, 66, 95, Ascii.CR, 64, 72, 94, 94, 76, 74, 72, 8, 44, 54, 54, 44, 43, 34, 101, 39, 48, 43, 33, 41, 32, 101, 35, 42, 55, 101, 40, 32, 54, 54, 36, 34, 32, 107, 90, 93, 91, 86, 76, 91, 91, 70, 91, 86, 68, 76, 90, 90, 72, 78, 76, 86, 66, 76, 80, 5, Ascii.DC4, Ascii.CR};
        String[] strArr = A05;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[1] = "11z8nLjTbJ8kXGgkHyQ0qsLYj80GB6ec";
        strArr2[2] = "E5wc";
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass25
    public final void A8M(Message message) {
        com.facebook.ads.Ad adA00 = this.A02.A00();
        String strA00 = A00(203, 3, 16);
        if (adA00 == null) {
            this.A03.A07().A9M(strA00, C08417x.A0K, new C08427y(A00(0, 17, 12)));
            return;
        }
        int i = message.what;
        String strA002 = A00(120, 9, 2);
        String strA003 = A00(17, 17, 14);
        switch (i) {
            case 10:
            case IronSourceConstants.IS_CHECK_CAPPED_TRUE /* 2103 */:
                Bundle bundle = message.getData().getBundle(strA003);
                if (bundle != null) {
                    int i2 = bundle.getInt(A00(51, 18, 95));
                    String string = bundle.getString(A00(182, 21, 125));
                    AdError adError = new AdError(i2, string);
                    this.A01.AFG(adError);
                    if (this.A02.A04 != null) {
                        this.A02.A04.onError(adA00, adError);
                    } else {
                        Log.e(A00(34, 17, 59), string);
                    }
                } else {
                    this.A01.AFC(EnumC06991x.A05);
                    this.A03.A07().A9M(strA00, C08417x.A0V, new C08427y(A00(155, 27, 49), strA002 + message));
                }
                this.A02.A01(null);
                return;
            case 2100:
                this.A01.AFK();
                Bundle bundle2 = message.getData().getBundle(strA003);
                if (bundle2 != null) {
                    this.A02.A01 = bundle2.getLong(A00(94, 26, 87));
                    AnonymousClass27 anonymousClass27 = this.A02;
                    int i3 = bundle2.getInt(A00(69, 25, 51));
                    String[] strArr = A05;
                    if (strArr[6].length() == strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A05;
                    strArr2[6] = "eimvHB";
                    strArr2[7] = "9nAYjps8XJWkdVKe7ORqJ";
                    anonymousClass27.A00 = i3;
                } else {
                    this.A03.A07().A9M(strA00, C08417x.A0V, new C08427y(A00(129, 26, 89), strA002 + message));
                }
                this.A02.A01(null);
                break;
            case 2106:
                this.A02.A01(null);
                break;
            case IronSourceConstants.IS_CALLBACK_LOAD_ERROR /* 2110 */:
                this.A01.AFU();
                break;
        }
        if (this.A02.A04 == null) {
            return;
        }
        switch (message.what) {
            case 2100:
                this.A02.A04.onAdLoaded(adA00);
                return;
            case 2104:
                this.A02.A04.onAdClicked(adA00);
                return;
            case 2105:
                this.A02.A04.onLoggingImpression(adA00);
                return;
            case 2106:
                if (this.A02.A04 instanceof RewardedVideoAdExtendedListener) {
                    ((RewardedVideoAdExtendedListener) this.A02.A04).onRewardedVideoActivityDestroyed();
                    return;
                }
                return;
            case IronSourceConstants.IS_CALLBACK_LOAD_ERROR /* 2110 */:
                this.A02.A04.onRewardedVideoClosed();
                return;
            case 3000:
                this.A02.A04.onRewardedVideoCompleted();
                return;
            case 3001:
                if (this.A02.A04 instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) this.A02.A04).onRewardServerSuccess();
                    return;
                }
                return;
            case 3002:
                if (this.A02.A04 instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) this.A02.A04).onRewardServerFailed();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
