package com.tapjoy.internal;

import com.tapjoy.TJAdUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class l6 implements Runnable {
    public final /* synthetic */ TJAdUnit a;

    public l6(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int streamVolume = this.a.q.getStreamVolume(3);
        TJAdUnit tJAdUnit = this.a;
        if (tJAdUnit.r != streamVolume) {
            tJAdUnit.r = streamVolume;
            tJAdUnit.f7789f.s();
        }
    }
}
