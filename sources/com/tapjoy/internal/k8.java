package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJEventOptimizer;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class k8 implements Runnable {
    public final /* synthetic */ Context a;

    public k8(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            TJEventOptimizer.a = new TJEventOptimizer(this.a);
        } catch (Exception e2) {
            TapjoyLog.w("TJEventOptimizer", e2.getMessage());
        }
        TJEventOptimizer.b.countDown();
    }
}
