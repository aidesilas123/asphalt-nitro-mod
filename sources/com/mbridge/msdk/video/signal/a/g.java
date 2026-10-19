package com.mbridge.msdk.video.signal.a;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultJSVideoModule.java */
/* JADX INFO: loaded from: classes4.dex */
public class g implements com.mbridge.msdk.video.signal.i {
    @Override // com.mbridge.msdk.video.signal.i
    public void alertWebViewShowed() {
        aa.a("js", "alertWebViewShowed:");
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void closeVideoOperate(int i, int i2) {
        aa.a("js", "closeOperte:close=" + i + "closeViewVisible=" + i2);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void dismissAllAlert() {
        aa.a("js", "dismissAllAlert");
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewHeight() {
        return 0;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewLeft() {
        return 0;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewRadius() {
        return 0;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewTop() {
        return 0;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewWidth() {
        return 0;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public String getCurrentProgress() {
        aa.a("js", "getCurrentProgress");
        return JsonUtils.EMPTY_JSON;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void hideAlertView(int i) {
        aa.a("js", "hideAlertView:");
    }

    @Override // com.mbridge.msdk.video.signal.i
    public boolean isH5Canvas() {
        return false;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void notifyCloseBtn(int i) {
        aa.a("js", "notifyCloseBtn:" + i);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void progressBarOperate(int i) {
        aa.a("js", "progressBarOperate:progressViewVisible=" + i);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void progressOperate(int i, int i2) {
        aa.a("js", "progressOperate:progress=" + i + "progressViewVisible=" + i2);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setCover(boolean z) {
        aa.a("js", "setCover:" + z);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setMiniEndCardState(boolean z) {
        aa.a("js", "setMiniEndCardState" + z);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setScaleFitXY(int i) {
        aa.a("js", "setScaleFitXY:" + i);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setVisible(int i) {
        aa.a("js", "setVisible:" + i);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void showAlertView() {
        aa.a("js", "showAlertView:");
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void showIVRewardAlertView(String str) {
        aa.a("js", "showAlertView:");
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void showVideoLocation(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        aa.a("js", "showVideoLocation:marginTop=" + i + ",marginLeft=" + i2 + ",width=" + i3 + ",height=" + i4 + ",radius=" + i5 + ",borderTop=" + i6 + ",borderTop=" + i6 + ",borderLeft=" + i7 + ",borderWidth=" + i8 + ",borderHeight=" + i9);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void soundOperate(int i, int i2) {
        aa.a("js", "soundOperate:mute=" + i + ",soundViewVisible=" + i2);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void soundOperate(int i, int i2, String str) {
        aa.a("js", "soundOperate:mute=" + i + ",soundViewVisible=" + i2 + ",pt=" + str);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void videoOperate(int i) {
        aa.a("js", "videoOperate:" + i);
    }
}
