package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementManager;
import com.tapjoy.TapjoyConnectCore;
import java.util.Observer;

/* JADX INFO: loaded from: classes4.dex */
public final class x1 extends y4 {
    @Override // com.tapjoy.internal.y4
    public final TJPlacement a(Context context, TJPlacementListener tJPlacementListener, Object obj) {
        g6.a(obj);
        TapjoyConnectCore.getContext();
        throw null;
    }

    @Override // com.tapjoy.internal.y4
    public final /* bridge */ /* synthetic */ String b(Object obj) {
        g6.a(obj);
        return null;
    }

    @Override // com.tapjoy.internal.y4
    public final boolean d() {
        return true;
    }

    @Override // com.tapjoy.internal.y4
    public final boolean e(Observer observer) {
        if (TapjoyConnectCore.isViewOpen()) {
            TJPlacementManager.dismissContentShowing(true);
        }
        return super.e(observer);
    }

    @Override // com.tapjoy.internal.y4
    public final m4 f() {
        throw null;
    }
}
