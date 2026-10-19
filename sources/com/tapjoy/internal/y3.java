package com.tapjoy.internal;

import com.tapjoy.TJAdUnit;
import com.tapjoy.TJCacheListener;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class y3 implements TJCacheListener {
    public final /* synthetic */ com.tapjoy.v0 a;

    public y3(com.tapjoy.v0 v0Var) {
        this.a = v0Var;
    }

    @Override // com.tapjoy.TJCacheListener
    public final void onCachingComplete(int i) {
        if (i8.c) {
            this.a.f8049e.h.i().a("load", (HashMap) null);
        }
        com.tapjoy.o oVar = this.a.f8049e;
        TJAdUnit tJAdUnitH = oVar.h();
        com.tapjoy.o oVar2 = this.a.f8049e;
        oVar.j = tJAdUnitH.t(oVar2.f8037d, oVar2.b);
    }
}
