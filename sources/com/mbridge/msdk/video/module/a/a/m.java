package com.mbridge.msdk.video.module.a.a;

import android.os.Handler;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import java.util.Timer;

/* JADX INFO: compiled from: VideoViewDefaultListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class m extends o {
    private MBridgeVideoView l;
    private MBridgeContainerView m;
    private int n;
    private Timer o;
    private Handler p;
    private boolean q;
    private boolean r;
    private int s;
    private int t;

    public m(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.b.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, int i, int i2, com.mbridge.msdk.video.module.a.a aVar2, int i3, boolean z, int i4) {
        super(campaignEx, cVar, aVar, str, str2, aVar2, i3, z);
        this.p = new Handler();
        this.q = false;
        this.r = false;
        this.s = 1;
        this.l = mBridgeVideoView;
        this.m = mBridgeContainerView;
        this.t = i;
        this.n = i2;
        this.s = i4;
        if (mBridgeVideoView != null) {
            this.q = mBridgeVideoView.getVideoSkipTime() == 0;
        }
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.a = false;
        }
    }

    private void i() {
        try {
            Timer timer = this.o;
            if (timer != null) {
                timer.cancel();
                this.o = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void j() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || campaignEx.getDynamicTempCode() != 5) {
            return;
        }
        CampaignEx campaignEx2 = null;
        MBridgeVideoView mBridgeVideoView = this.l;
        if (mBridgeVideoView != null && mBridgeVideoView.mCampOrderViewData != null) {
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 < this.l.mCampOrderViewData.size()) {
                    if (this.l.mCampOrderViewData.get(i2) != null && this.l.mCampOrderViewData.get(i2).getId() == this.b.getId()) {
                        i = i2 - 1;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
            if (i >= 0 && this.l.mCampOrderViewData.get(i) != null) {
                campaignEx2 = this.l.mCampOrderViewData.get(i);
            }
        }
        if (campaignEx2 != null) {
            MBridgeVideoView mBridgeVideoView2 = this.l;
            if (mBridgeVideoView2 != null) {
                mBridgeVideoView2.setCampaign(campaignEx2);
            }
            MBridgeContainerView mBridgeContainerView = this.m;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.setCampaign(campaignEx2);
            }
            a(campaignEx2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x027d  */
    @Override // com.mbridge.msdk.video.module.a.a.o, com.mbridge.msdk.video.module.a.a.k, com.mbridge.msdk.video.module.a.a.f, com.mbridge.msdk.video.module.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(int r8, java.lang.Object r9) {
        /*
            Method dump skipped, instruction units count: 754
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.a.a.m.a(int, java.lang.Object):void");
    }
}
