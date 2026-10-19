package com.fyber.inneractive.sdk.cache;

import android.app.Application;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.network.g0;
import com.fyber.inneractive.sdk.network.q0;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public long a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1919d;

    public void a() {
        if (TimeUnit.MILLISECONDS.toMinutes(System.currentTimeMillis() - this.a) >= 60) {
            IAConfigManager iAConfigManager = IAConfigManager.M;
            if (iAConfigManager.u.b.a("use_js_inline", false)) {
                Application application = l.a;
                if (application == null) {
                    IAlog.e("fetchJS() failed context null", new Object[0]);
                    return;
                }
                this.a = System.currentTimeMillis();
                g0 g0Var = new g0(new f(this), application, new e("https://cdn2.inner-active.mobi/client/ia-js-tags/dt-mraid-video-controller.js", "dt-mraid-video-controller.js"));
                iAConfigManager.s.a.offer(g0Var);
                q0 q0Var = q0.QUEUED;
                g0Var.a(q0Var);
                g0 g0Var2 = new g0(new g(this), application, new e("https://cdn2.inner-active.mobi/IA-JSTag/Production/centering_v1.css", "centering_v1.css"));
                iAConfigManager.s.a.offer(g0Var2);
                g0Var2.a(q0Var);
                g0 g0Var3 = new g0(new h(this), application, new e("https://cdn2.inner-active.mobi/IA-JSTag/Production/centering_v1.js", "centering_v1.js"));
                iAConfigManager.s.a.offer(g0Var3);
                g0Var3.a(q0Var);
            }
        }
    }
}
