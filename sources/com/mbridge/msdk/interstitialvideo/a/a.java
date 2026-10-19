package com.mbridge.msdk.interstitialvideo.a;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.r;
import com.mbridge.msdk.interstitialvideo.out.InterstitialVideoListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.util.HashMap;

/* JADX INFO: compiled from: DecoratorInterstitialListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a implements InterVideoOutListener {
    private InterstitialVideoListener a;
    private String b;
    private boolean c;

    public a(InterstitialVideoListener interstitialVideoListener) {
        this.a = interstitialVideoListener;
    }

    public a(InterstitialVideoListener interstitialVideoListener, String str, boolean z) {
        this.a = interstitialVideoListener;
        this.b = str;
        this.c = z;
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onAdClose(String str, MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdClose(mBridgeIds, rewardInfo);
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
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdCloseWithIVReward(mBridgeIds, rewardInfo);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onAdShow(String str, MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onAdShow(mBridgeIds);
            if (!TextUtils.isEmpty(this.b)) {
                r.a().g(this.b, "iv", this.c);
            }
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
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onEndcardShow(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onLoadSuccess(String str, MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onLoadSuccess(mBridgeIds);
            if (!TextUtils.isEmpty(this.b)) {
                r.a().b(this.b, "iv", this.c);
            }
            try {
                if (TextUtils.isEmpty(str)) {
                    str = mBridgeIds.getLocalRequestId();
                }
                HashMap map = new HashMap();
                if (TextUtils.isEmpty(str)) {
                    map.put(MBridgeConstans.PROPERTIES_UNIT_ID, mBridgeIds.getUnitId());
                }
                m.a().a("2000127", str, map);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onShowFail(String str, MBridgeIds mBridgeIds, String str2) {
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onShowFail(mBridgeIds, str2);
            if (!TextUtils.isEmpty(this.b)) {
                r.a().b(this.b, str2, "iv", this.c);
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
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoAdClicked(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoComplete(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoComplete(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoLoadFail(mBridgeIds, str);
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().a(this.b, str, "iv", this.c);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        InterstitialVideoListener interstitialVideoListener = this.a;
        if (interstitialVideoListener != null) {
            interstitialVideoListener.onVideoLoadSuccess(mBridgeIds);
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().c(this.b, "iv", this.c);
        }
    }
}
