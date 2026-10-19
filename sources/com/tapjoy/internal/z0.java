package com.tapjoy.internal;

import com.tapjoy.TJAdUnitActivity;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class z0 implements Runnable {
    public final /* synthetic */ TJAdUnitActivity a;

    public z0(TJAdUnitActivity tJAdUnitActivity) {
        this.a = tJAdUnitActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.h.f()) {
            TapjoyLog.d("TJAdUnitActivity", "Did not receive callback from content. Closing ad.");
            this.a.finish();
        }
    }
}
