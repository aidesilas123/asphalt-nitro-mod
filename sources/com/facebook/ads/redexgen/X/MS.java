package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class MS {
    public static String[] A00 = {"Mh7OQPY25mJ4xZdJdnJU4lIWxnSb2W80", "uMvQGqYS2R9kLiwAhxbB5gyg9uPLoFmG", "JD8RnvPxGeaTxsc34jN0O6vhnDfoaLvm", "v", "yiVoJ6", "bh6EDcFJy1WMlrC6ew5uNV", "HsXTYL", CampaignEx.JSON_KEY_AD_K};
    public static final int A01 = (int) (C1148Ku.A02 * 200.0f);
    public static final int A03 = (int) (C1148Ku.A02 * 200.0f);
    public static final int A02 = (int) (C1148Ku.A02 * 50.0f);

    public static AnonymousClass11 A00(NativeAdLayout nativeAdLayout) {
        return nativeAdLayout == null ? AnonymousClass11.A05 : A03(nativeAdLayout) ? AnonymousClass11.A06 : AnonymousClass11.A04;
    }

    public static MR A01(YA ya, InterfaceC1086If interfaceC1086If, String str, NativeAdLayout nativeAdLayout) {
        if (nativeAdLayout == null) {
            return null;
        }
        int width = nativeAdLayout.getWidth();
        int height = nativeAdLayout.getHeight();
        int i = A01;
        if (width >= i && height >= i) {
            return new TM(ya, interfaceC1086If, str);
        }
        if (width < A03 || height < A02) {
            return null;
        }
        return new TN(ya, interfaceC1086If, str);
    }

    public static TO A02(YA ya, InterfaceC1086If interfaceC1086If, String str, C1X c1x, InterfaceC1174Lu interfaceC1174Lu, InterfaceC1173Lt interfaceC1173Lt) {
        return new TO(ya, interfaceC1086If, str, c1x, interfaceC1174Lu, interfaceC1173Lt);
    }

    public static boolean A03(NativeAdLayout nativeAdLayout) {
        int width = nativeAdLayout.getWidth();
        int height = nativeAdLayout.getHeight();
        int i = A01;
        if (width < i || height < i) {
            if (width >= A03) {
                int i2 = A02;
                if (A00[5].length() != 22) {
                    throw new RuntimeException();
                }
                A00[5] = "hhrIY4o6fKEkU42z4UVpb3";
                if (height < i2) {
                }
            }
            return true;
        }
        return false;
    }
}
