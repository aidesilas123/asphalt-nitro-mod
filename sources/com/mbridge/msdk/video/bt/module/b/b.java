package com.mbridge.msdk.video.bt.module.b;

import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultShowRewardListener.java */
/* JADX INFO: loaded from: classes4.dex */
public class b implements h {
    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void a() {
        aa.a("ShowRewardListener", "onAdShow");
    }

    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void a(int i, String str, String str2) {
        aa.a("ShowRewardListener", "onAutoLoad: " + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void a(String str) {
        aa.a("ShowRewardListener", "onShowFail:" + str);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void a(String str, String str2) {
        aa.a("ShowRewardListener", "onVideoComplete: " + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void a(boolean z, int i) {
        aa.a("ShowRewardListener", "onAdCloseWithIVReward: " + z + "  " + i);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void a(boolean z, com.mbridge.msdk.videocommon.b.c cVar) {
        aa.a("ShowRewardListener", "onAdClose:isCompleteView:" + z + ",reward:" + cVar);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void a(boolean z, String str, String str2) {
        aa.a("ShowRewardListener", "onVideoAdClicked:" + str2);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.h
    public void b(String str, String str2) {
        aa.a("ShowRewardListener", "onEndcardShow: " + str2);
    }
}
