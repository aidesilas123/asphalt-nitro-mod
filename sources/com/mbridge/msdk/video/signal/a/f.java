package com.mbridge.msdk.video.signal.a;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultJSRewardVideoV1.java */
/* JADX INFO: loaded from: classes4.dex */
public class f implements com.mbridge.msdk.video.signal.h {
    @Override // com.mbridge.msdk.video.signal.h
    public String a() {
        aa.a("js", "getEndScreenInfo");
        return JsonUtils.EMPTY_JSON;
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void a(String str) {
        aa.a("js", "triggerCloseBtn,state=" + str);
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void b(String str) {
        aa.a("js", "setOrientation,landscape=" + str);
    }

    @Override // com.mbridge.msdk.video.signal.h
    public void c(String str) {
        aa.a("js", "handlerPlayableException，msg=" + str);
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void notifyCloseBtn(int i) {
        aa.a("js", "notifyCloseBtn,state=" + i);
    }

    @Override // com.mbridge.msdk.video.signal.g
    public void toggleCloseBtn(int i) {
        aa.a("js", "toggleCloseBtn,state=" + i);
    }
}
