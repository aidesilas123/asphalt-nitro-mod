package com.mbridge.msdk.video.signal.a;

import android.content.res.Configuration;
import android.util.Base64;
import android.webkit.WebView;
import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: compiled from: JSActivityProxy.java */
/* JADX INFO: loaded from: classes4.dex */
public final class h extends a {
    private WebView a;
    private int b = 0;

    public h(WebView webView) {
        this.a = webView;
    }

    @Override // com.mbridge.msdk.video.signal.a.a, com.mbridge.msdk.video.signal.a
    public final void a() {
        super.a();
        this.b = 1;
        com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(this.a, "onSystemPause", "");
    }

    @Override // com.mbridge.msdk.video.signal.a.a, com.mbridge.msdk.video.signal.a
    public final void a(int i) {
        super.a(i);
        this.b = i;
    }

    @Override // com.mbridge.msdk.video.signal.a.a, com.mbridge.msdk.video.signal.a
    public final void a(Configuration configuration) {
        super.a(configuration);
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put("orientation", o2.h.C);
            } else {
                jSONObject.put("orientation", o2.h.D);
            }
            com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(this.a, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.a, com.mbridge.msdk.video.signal.a
    public final void b() {
        super.b();
        this.b = 0;
        com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(this.a, "onSystemResume", "");
    }

    @Override // com.mbridge.msdk.video.signal.a.a, com.mbridge.msdk.video.signal.a
    public final void f() {
        super.f();
        com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(this.a, "onSystemDestory", "");
    }

    @Override // com.mbridge.msdk.video.signal.a.a, com.mbridge.msdk.video.signal.a
    public final void g() {
        super.g();
        com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(this.a, "onSystemBackPressed", "");
    }

    @Override // com.mbridge.msdk.video.signal.a.a, com.mbridge.msdk.video.signal.a
    public final int h() {
        return this.b;
    }
}
