package com.bytedance.sdk.openadsdk.core.e;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.pgl.ssdk.ces.out.PglSSManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: MSSdkImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class a {
    private PglSSManager a;
    private volatile boolean b;
    private volatile boolean c = true;

    public a() {
        a();
    }

    private boolean d() {
        if (!this.b && this.c) {
            a();
        }
        return this.b;
    }

    private void e() {
        if (this.a == null) {
            this.a = PglSSManager.getInstance();
        }
    }

    private Class f() {
        Class<?> cls = null;
        try {
            cls = Class.forName("com.pgl.ssdk.ces.out.PglSSManager");
            this.c = true;
            l.c("mssdk", "class found");
            return cls;
        } catch (Throwable unused) {
            l.c("mssdk", "class not found ");
            this.c = false;
            return cls;
        }
    }

    public Map<String, String> a(String str, byte[] bArr) {
        Map<String, String> featureHash;
        return (!d() || (featureHash = this.a.getFeatureHash(str, bArr)) == null) ? new HashMap() : featureHash;
    }

    public synchronized void a() {
        if (!this.b) {
            try {
                Context contextA = o.a();
                String strD = h.b().d();
                if (TextUtils.isEmpty(strD)) {
                    strD = h.a("app_id", Long.MAX_VALUE);
                }
                if (TextUtils.isEmpty(strD)) {
                    return;
                }
                PglSSManager.init(contextA, PglSSConfig.builder().setAppId(strD).setOVRegionType(0).setAdsdkVersionCode(BuildConfig.VERSION_CODE).build(), null, null, j.a(contextA), com.com.bytedance.overseas.sdk.b.a.a().b());
                e();
                l.c("mssdk", "init: success");
                this.b = true;
            } catch (Throwable th) {
                l.c("mssdk", "init: fail");
                l.b("MSSdkImpl", "appid is empty, initialization failed! or without the mssdk module", th);
                f();
                this.b = false;
            }
        }
    }

    public void a(String str) {
        if (d()) {
            e();
            PglSSManager pglSSManager = this.a;
            if (pglSSManager != null) {
                pglSSManager.setGaid(str);
            }
        }
    }

    public void b(final String str) {
        if (d()) {
            e();
            if (this.a != null) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    aa.b(new com.bytedance.sdk.component.g.h("updateDid") { // from class: com.bytedance.sdk.openadsdk.core.e.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.a != null) {
                                a.this.a.setDeviceId(str);
                            }
                        }
                    });
                } else {
                    this.a.setDeviceId(str);
                }
            }
        }
    }

    public boolean b() {
        return this.b;
    }

    public String c() {
        if (!d()) {
            return "";
        }
        e();
        PglSSManager pglSSManager = this.a;
        return pglSSManager != null ? pglSSManager.getToken() : "";
    }

    public void c(String str) {
        if (d()) {
            e();
            PglSSManager pglSSManager = this.a;
            if (pglSSManager != null) {
                pglSSManager.reportNow(str);
            }
        }
    }
}
