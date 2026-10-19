package com.tapjoy.internal;

import com.tapjoy.TJWebViewActivity;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class u7 implements Runnable {
    public final /* synthetic */ TJWebViewActivity a;

    public u7(TJWebViewActivity tJWebViewActivity) {
        this.a = tJWebViewActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tapjoy.k kVar = this.a.h;
        if (kVar == null || !kVar.j) {
            return;
        }
        TapjoyLog.d("TJWebViewActivity", "Did not receive callback from content. Closing ad.");
        this.a.finish();
    }
}
