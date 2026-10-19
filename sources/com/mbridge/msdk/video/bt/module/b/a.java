package com.mbridge.msdk.video.bt.module.b;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.r;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.util.HashMap;

/* JADX INFO: compiled from: DecoratorRewardVideoListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a implements InterVideoOutListener {
    private g a;
    private String b;
    private boolean c;

    public a(g gVar) {
        this.a = gVar;
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onAdClose(String str, MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onAdClose(mBridgeIds, rewardInfo);
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
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onAdShow(String str, MBridgeIds mBridgeIds) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onAdShow(mBridgeIds);
            try {
                HashMap map = new HashMap();
                if (TextUtils.isEmpty(str)) {
                    map.put(MBridgeConstans.PROPERTIES_UNIT_ID, mBridgeIds.getUnitId());
                }
                m.a().a("2000130", str, map);
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().g(this.b, "rv", this.c);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onEndcardShow(MBridgeIds mBridgeIds) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onEndcardShow(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onLoadSuccess(String str, MBridgeIds mBridgeIds) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onLoadSuccess(mBridgeIds);
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
            if (TextUtils.isEmpty(this.b)) {
                return;
            }
            r.a().b(this.b, "rv", this.c);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onShowFail(String str, MBridgeIds mBridgeIds, String str2) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onShowFail(mBridgeIds, str2);
            if (!TextUtils.isEmpty(this.b)) {
                r.a().b(this.b, str2, "rv", this.c);
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
        g gVar = this.a;
        if (gVar != null) {
            gVar.onVideoAdClicked(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoComplete(MBridgeIds mBridgeIds) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onVideoComplete(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onVideoLoadFail(mBridgeIds, str);
            if (mBridgeIds != null) {
                try {
                    if (TextUtils.isEmpty(mBridgeIds.getUnitId())) {
                        return;
                    }
                    r.a().a(mBridgeIds.getUnitId(), str, "rv", this.c);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public final void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        g gVar = this.a;
        if (gVar != null) {
            gVar.onVideoLoadSuccess(mBridgeIds);
            if (mBridgeIds != null) {
                try {
                    if (TextUtils.isEmpty(mBridgeIds.getUnitId())) {
                        return;
                    }
                    r.a().c(mBridgeIds.getUnitId(), "rv", this.c);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }
}
