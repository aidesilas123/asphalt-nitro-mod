package com.tapjoy.internal;

import com.tapjoy.TJAdUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class s7 implements Runnable {
    public final /* synthetic */ TJAdUnit a;

    public s7(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tapjoy.k kVar = this.a.f7789f;
        if (kVar != null) {
            kVar.m("MEDIA_ERROR_TIMED_OUT");
        }
    }
}
