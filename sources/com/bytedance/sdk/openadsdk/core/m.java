package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import com.bytedance.sdk.openadsdk.ApmHelper;

/* JADX INFO: compiled from: InitLifecycleHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class m {
    private final com.bytedance.sdk.openadsdk.utils.a a = new com.bytedance.sdk.openadsdk.utils.a();
    private boolean b;

    /* JADX INFO: compiled from: InitLifecycleHelper.java */
    private static class a {
        private static final m a = new m();
    }

    public static m a() {
        return a.a;
    }

    public boolean a(boolean z) {
        return this.a.a(z);
    }

    public void b() {
        try {
            Context contextA = o.a();
            if (contextA instanceof Application) {
                ((Application) contextA).registerActivityLifecycleCallbacks(this.a);
                this.b = true;
            } else if (contextA != null && contextA.getApplicationContext() != null) {
                ((Application) contextA.getApplicationContext()).registerActivityLifecycleCallbacks(this.a);
                this.b = true;
            }
        } catch (Throwable th) {
            ApmHelper.reportCustomError("registerActivityLifecycleError", "registerActivityLifecycle", th);
        }
    }

    public boolean c() {
        return this.b;
    }

    public boolean d() {
        return this.a.a();
    }

    public com.bytedance.sdk.openadsdk.utils.a e() {
        return this.a;
    }
}
