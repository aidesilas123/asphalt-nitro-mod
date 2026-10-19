package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementManager;

/* JADX INFO: loaded from: classes4.dex */
public final class o6 extends y4 {
    @Override // com.tapjoy.internal.y4
    public final TJPlacement a(Context context, TJPlacementListener tJPlacementListener, Object obj) {
        return TJPlacementManager.createPlacement(context, "AppLaunch", true, tJPlacementListener);
    }

    @Override // com.tapjoy.internal.y4
    public final /* bridge */ /* synthetic */ String b(Object obj) {
        return "AppLaunch";
    }

    @Override // com.tapjoy.internal.y4
    public final boolean d() {
        if (super.d()) {
            y0 y0Var = y0.a;
            if (!(y0Var != null && y0Var.a())) {
                return true;
            }
        }
        return false;
    }
}
