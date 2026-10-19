package com.mbridge.msdk.video.signal.a;

import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultJSContainerModule.java */
/* JADX INFO: loaded from: classes4.dex */
public class d implements com.mbridge.msdk.video.signal.e, com.mbridge.msdk.video.signal.g {
    @Override // com.mbridge.msdk.video.signal.e
    public void configurationChanged(int i, int i2, int i3) {
    }

    @Override // com.mbridge.msdk.video.signal.e
    public boolean endCardShowing() {
        aa.a("js", "endCardShowing");
        return true;
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void hideAlertWebview() {
        aa.a("js", "hideAlertWebview ,msg=");
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void ivRewardAdsWithoutVideo(String str) {
        aa.a("js", "ivRewardAdsWithoutVideo,params=");
    }

    @Override // com.mbridge.msdk.video.signal.e
    public boolean miniCardShowing() {
        aa.a("js", "miniCardShowing");
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void notifyCloseBtn(int i) {
        aa.a("js", "notifyCloseBtn:state = " + i);
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void readyStatus(int i) {
        aa.a("js", "readyStatus:isReady=" + i);
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void resizeMiniCard(int i, int i2, int i3) {
        aa.a("js", "showMiniCard width = " + i + " height = " + i2 + " radius = " + i3);
    }

    @Override // com.mbridge.msdk.video.signal.e
    public boolean showAlertWebView() {
        aa.a("js", "showAlertWebView ,msg=");
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void showEndcard(int i) {
        aa.a("js", "showEndcard,type=" + i);
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void showMiniCard(int i, int i2, int i3, int i4, int i5) {
        aa.a("js", "showMiniCard top = " + i + " left = " + i2 + " width = " + i3 + " height = " + i4 + " radius = " + i5);
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void showVideoClickView(int i) {
        aa.a("js", "showVideoClickView:" + i);
    }

    @Override // com.mbridge.msdk.video.signal.e
    public void showVideoEndCover() {
        aa.a("js", "showVideoEndCover");
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void toggleCloseBtn(int i) {
        aa.a("js", "toggleCloseBtn:state=" + i);
    }
}
