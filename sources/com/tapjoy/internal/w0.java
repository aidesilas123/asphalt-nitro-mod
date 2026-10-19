package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementManager;

/* JADX INFO: loaded from: classes4.dex */
public final class w0 extends y4 {
    @Override // com.tapjoy.internal.y4
    public final TJPlacement a(Context context, TJPlacementListener tJPlacementListener, Object obj) {
        return TJPlacementManager.createPlacement(context, "InsufficientCurrency", true, tJPlacementListener);
    }

    @Override // com.tapjoy.internal.y4
    public final /* bridge */ /* synthetic */ String b(Object obj) {
        return "InsufficientCurrency";
    }
}
