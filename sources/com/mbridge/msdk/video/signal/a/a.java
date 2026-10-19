package com.mbridge.msdk.video.signal.a;

import android.content.res.Configuration;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: DefaultJSActivity.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements com.mbridge.msdk.video.signal.a {
    @Override // com.mbridge.msdk.video.signal.a
    public void a() {
        aa.a("js", "DefaultJSActivity-onPause");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(int i) {
        aa.a("js", "setSystemResume,isResume:" + i);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void a(Configuration configuration) {
        aa.a("js", "DefaultJSActivity-onConfigurationChanged:" + configuration.orientation);
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void b() {
        aa.a("js", "DefaultJSActivity-onResume");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public final void c() {
        aa.a("js", "DefaultJSActivity-onStop");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public final void d() {
        aa.a("js", "DefaultJSActivity-onStart");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public final void e() {
        aa.a("js", "DefaultJSActivity-onRestart");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void f() {
        aa.a("js", "DefaultJSActivity-onDestory");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public void g() {
        aa.a("js", "DefaultJSActivity-onBackPressed");
    }

    @Override // com.mbridge.msdk.video.signal.a
    public int h() {
        aa.a("js", "isSystemResume");
        return 0;
    }
}
