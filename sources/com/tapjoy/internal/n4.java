package com.tapjoy.internal;

import com.tapjoy.TJPlacementManager;

/* JADX INFO: loaded from: classes4.dex */
public final class n4 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        TJPlacementManager.dismissContentShowing(false);
    }
}
