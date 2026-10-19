package com.mbridge.msdk.video.signal.a;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultJSBTModule.java */
/* JADX INFO: loaded from: classes4.dex */
public class b implements com.mbridge.msdk.video.signal.b {
    private static final String a = "b";

    @Override // com.mbridge.msdk.video.signal.d
    public void click(int i, String str) {
        aa.a(a, CampaignEx.JSON_NATIVE_VIDEO_CLICK);
    }

    @Override // com.mbridge.msdk.video.signal.d
    public void handlerH5Exception(int i, String str) {
        aa.a(a, "handlerH5Exception");
    }

    @Override // com.mbridge.msdk.video.signal.b
    public void reactDeveloper(Object obj, String str) {
        aa.a(a, "reactDeveloper");
    }

    @Override // com.mbridge.msdk.video.signal.b
    public void reportUrls(Object obj, String str) {
        aa.a(a, "reportUrls");
    }
}
