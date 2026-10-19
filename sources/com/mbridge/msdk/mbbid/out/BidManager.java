package com.mbridge.msdk.mbbid.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.mbbid.common.a.b;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class BidManager {
    private b a;
    private BidListennning b;
    private boolean c;

    public <T extends CommonBidRequestParams> BidManager(T t) {
        this(t == null ? "" : t.getmPlacementId(), t == null ? "" : t.getmUnitId(), t != null ? t.getmFloorPrice() : "");
        if (!(t instanceof BannerBidRequestParams)) {
            if (t instanceof AdvancedNativeBidRequestParams) {
                AdvancedNativeBidRequestParams advancedNativeBidRequestParams = (AdvancedNativeBidRequestParams) t;
                this.a.a(advancedNativeBidRequestParams.getHeight());
                this.a.b(advancedNativeBidRequestParams.getWidth());
                this.a.b(298);
                return;
            }
            return;
        }
        BannerBidRequestParams bannerBidRequestParams = (BannerBidRequestParams) t;
        this.a.a(bannerBidRequestParams.getHeight());
        this.a.b(bannerBidRequestParams.getWidth());
        this.a.b(296);
        if (t instanceof SplashBidRequestParams) {
            SplashBidRequestParams splashBidRequestParams = (SplashBidRequestParams) t;
            this.a.a(splashBidRequestParams.a());
            this.a.a(splashBidRequestParams.getOrientation());
            this.a.b(297);
        }
    }

    public BidManager(String str, String str2) {
        this(str, str2, "0");
    }

    public BidManager(String str, String str2, String str3) {
        this.c = false;
        this.a = new b(str, str2, str3);
    }

    public static String getBuyerUid(Context context) {
        return com.mbridge.msdk.mbbid.common.b.a(context, "");
    }

    public static String getBuyerUid(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, str);
    }

    public static String getBuyerUid(Context context, Map<String, String> map) {
        return com.mbridge.msdk.mbbid.common.b.a(context, map);
    }

    public void bid() {
        b bVar = this.a;
        if (bVar != null) {
            bVar.b(this.c);
            return;
        }
        BidListennning bidListennning = this.b;
        if (bidListennning != null) {
            bidListennning.onFailed("you need init the class :BidManager");
        }
    }

    public void setBidListener(BidListennning bidListennning) {
        this.b = bidListennning;
        b bVar = this.a;
        if (bVar != null) {
            bVar.a(bidListennning);
        }
    }

    public void setRewardPlus(boolean z) {
        this.c = z;
    }
}
