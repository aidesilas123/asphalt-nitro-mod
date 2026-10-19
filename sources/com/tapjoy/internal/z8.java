package com.tapjoy.internal;

import com.tapjoy.FiveRocksIntegration;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;

/* JADX INFO: loaded from: classes4.dex */
public final class z8 {
    public final /* synthetic */ String a;

    public z8(String str) {
        this.a = str;
    }

    public final void a(String str, String str2, int i, String str3) {
        TJPlacement tJPlacement;
        TJPlacementListener tJPlacementListener;
        o8 o8Var = FiveRocksIntegration.a;
        synchronized (o8Var) {
            tJPlacement = (TJPlacement) o8Var.get(this.a);
        }
        if (tJPlacement == null || (tJPlacementListener = tJPlacement.c) == null) {
            return;
        }
        tJPlacementListener.onRewardRequest(tJPlacement, new q8(str, str3), str2, i);
    }
}
