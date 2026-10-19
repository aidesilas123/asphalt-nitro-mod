package com.tapjoy.internal;

import com.tapjoy.FiveRocksIntegration;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TapjoyConnectCore;

/* JADX INFO: loaded from: classes4.dex */
public final class k9 implements a2 {
    @Override // com.tapjoy.internal.a2
    public final void a(String str) {
    }

    @Override // com.tapjoy.internal.a2
    public final void a(String str, a aVar) {
        TJPlacement tJPlacement;
        TJPlacementListener tJPlacementListener;
        TJPlacement tJPlacement2;
        TJPlacementListener tJPlacementListener2;
        if (aVar != null) {
            Object obj = (b) aVar;
            if (obj instanceof x5) {
                o9 o9Var = (o9) ((x5) obj);
                String str2 = o9Var.b;
                String str3 = o9Var.c;
                o8 o8Var = FiveRocksIntegration.a;
                synchronized (o8Var) {
                    tJPlacement2 = (TJPlacement) o8Var.get(str);
                }
                if (tJPlacement2 == null || (tJPlacementListener2 = tJPlacement2.c) == null) {
                    return;
                }
                tJPlacementListener2.onPurchaseRequest(tJPlacement2, new e8(str2), str3);
                return;
            }
            if (obj instanceof m6) {
                x4 x4Var = (x4) ((m6) obj);
                String str4 = x4Var.b;
                String str5 = x4Var.c;
                int i = x4Var.f8020d;
                String str6 = x4Var.f8021e;
                o8 o8Var2 = FiveRocksIntegration.a;
                synchronized (o8Var2) {
                    tJPlacement = (TJPlacement) o8Var2.get(str);
                }
                if (tJPlacement == null || (tJPlacementListener = tJPlacement.c) == null) {
                    return;
                }
                tJPlacementListener.onRewardRequest(tJPlacement, new q8(str4, str6), str5, i);
            }
        }
    }

    @Override // com.tapjoy.internal.a2
    public final void a(String str, String str2, a aVar) {
        TJPlacement tJPlacement;
        if (aVar != null) {
            ((b) aVar).b(new z8(str));
        }
        o8 o8Var = FiveRocksIntegration.a;
        synchronized (o8Var) {
            tJPlacement = (TJPlacement) o8Var.get(str);
        }
        if (tJPlacement != null) {
            TapjoyConnectCore.viewDidClose(str2);
            TJPlacementListener tJPlacementListener = tJPlacement.c;
            if (tJPlacementListener != null) {
                tJPlacementListener.onContentDismiss(tJPlacement);
            }
        }
    }

    @Override // com.tapjoy.internal.a2
    public final void b(String str) {
        TJPlacement tJPlacement;
        TJPlacementListener tJPlacementListener;
        o8 o8Var = FiveRocksIntegration.a;
        synchronized (o8Var) {
            tJPlacement = (TJPlacement) o8Var.get(str);
        }
        if (tJPlacement == null || (tJPlacementListener = tJPlacement.c) == null) {
            return;
        }
        tJPlacementListener.onContentShow(tJPlacement);
    }
}
