package com.tapjoy.internal;

import com.tapjoy.TJCloseButton;

/* JADX INFO: loaded from: classes4.dex */
public final class g3 implements Runnable {
    public final /* synthetic */ TJCloseButton a;

    public g3(TJCloseButton tJCloseButton) {
        this.a = tJCloseButton;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.animate().alpha(1.0f).setDuration(500L).setListener(new u2(this));
    }
}
