package com.mbridge.msdk.video.signal.a;

import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.video.module.MBridgeVideoView;

/* JADX INFO: compiled from: DefaultJSNotifyProxy.java */
/* JADX INFO: loaded from: classes4.dex */
public class e implements com.mbridge.msdk.video.signal.f {
    @Override // com.mbridge.msdk.video.signal.f
    public void a(int i) {
        aa.a("DefaultJSNotifyProxy", "onVideoStatusNotify:" + i);
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void a(int i, int i2, int i3, int i4) {
        aa.a("DefaultJSNotifyProxy", "showDataInfo");
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void a(int i, String str) {
        aa.a("DefaultJSNotifyProxy", "onClick:" + i + ",pt:" + str);
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void a(MBridgeVideoView.a aVar) {
        aa.a("DefaultJSNotifyProxy", "onProgressNotify:" + aVar.toString());
    }

    @Override // com.mbridge.msdk.video.signal.f
    public void a(Object obj) {
        aa.a("DefaultJSNotifyProxy", "onWebviewShow:" + obj);
    }
}
