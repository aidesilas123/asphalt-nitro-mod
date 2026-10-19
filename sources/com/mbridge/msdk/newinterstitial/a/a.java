package com.mbridge.msdk.newinterstitial.a;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.r;
import com.mbridge.msdk.newinterstitial.out.NewInterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.util.HashMap;

/* JADX INFO: compiled from: DecoratorInterstitialListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a implements InterVideoOutListener {
    private NewInterstitialListener a;
    private String b;
    private boolean c;

    public a(NewInterstitialListener newInterstitialListener) {
        this.a = newInterstitialListener;
    }

    public a(NewInterstitialListener newInterstitialListener, String str, boolean z) {
        this.a = newInterstitialListener;
        this.b = str;
        this.c = z;
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onAdClose(String str, MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdClose(mBridgeIds, rewardInfo);
            try {
                HashMap map = new HashMap();
                if (TextUtils.isEmpty(str)) {
                    map.put(MBridgeConstans.PROPERTIES_UNIT_ID, mBridgeIds.getUnitId());
                }
                m.a().a("2000152", str, map);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onAdCloseWithIVReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdCloseWithNIReward(mBridgeIds, rewardInfo);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onAdShow(String str, MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdShow(mBridgeIds);
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().g(this.b, "niv", this.c);
            try {
                HashMap map = new HashMap();
                if (TextUtils.isEmpty(str)) {
                    map.put(MBridgeConstans.PROPERTIES_UNIT_ID, mBridgeIds.getUnitId());
                }
                m.a().a("2000130", str, map);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onEndcardShow(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onEndcardShow(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onLoadSuccess(String str, MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onLoadCampaignSuccess(mBridgeIds);
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().b(this.b, "niv", this.c);
            try {
                String localRequestId = TextUtils.isEmpty(str) ? mBridgeIds.getLocalRequestId() : str;
                HashMap map = new HashMap();
                if (TextUtils.isEmpty(str)) {
                    map.put(MBridgeConstans.PROPERTIES_UNIT_ID, mBridgeIds.getUnitId());
                }
                m.a().a("2000127", localRequestId, map);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onShowFail(String str, MBridgeIds mBridgeIds, String str2) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onShowFail(mBridgeIds, str2);
            if (!TextUtils.isEmpty(this.b)) {
                r.a().b(this.b, str2, "niv", this.c);
            }
            try {
                HashMap map = new HashMap();
                map.put("code", "");
                map.put("reason", str2);
                map.put("failingURL", "");
                if (TextUtils.isEmpty(str)) {
                    map.put(MBridgeConstans.PROPERTIES_UNIT_ID, mBridgeIds.getUnitId());
                }
                m.a().a("2000131", str, map);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoAdClicked(boolean z, MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onAdClicked(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoComplete(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onVideoComplete(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onResourceLoadFail(mBridgeIds, str);
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().a(this.b, str, "niv", this.c);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        NewInterstitialListener newInterstitialListener = this.a;
        if (newInterstitialListener != null) {
            newInterstitialListener.onResourceLoadSuccess(mBridgeIds);
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().c(this.b, "niv", this.c);
        }
    }
}
