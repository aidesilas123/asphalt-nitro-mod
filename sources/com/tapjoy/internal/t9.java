package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJEventOptimizer;
import com.tapjoy.TapjoyCache;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class t9 extends com.tapjoy.n {
    public final /* synthetic */ Context a;
    public final /* synthetic */ com.tapjoy.n b;
    public final /* synthetic */ com.tapjoy.o0 c;

    public t9(com.tapjoy.o0 o0Var, Context context, b1 b1Var) {
        this.c = o0Var;
        this.a = context;
        this.b = b1Var;
    }

    @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
    public final void onConnectFailure(int i, String str) {
        com.tapjoy.n nVar = this.b;
        if (nVar != null) {
            nVar.onConnectFailure(i, str);
            this.b.onConnectFailure();
        }
    }

    @Override // com.tapjoy.n, com.tapjoy.TJConnectInterface
    public final void onConnectSuccess() {
        this.c.f8042e = new com.tapjoy.p(this.a);
        com.tapjoy.o0 o0Var = this.c;
        new TapjoyCache(this.a);
        o0Var.getClass();
        try {
            TJEventOptimizer.init(this.a);
            this.c.b = true;
            com.tapjoy.n nVar = this.b;
            if (nVar != null) {
                nVar.onConnectSuccess();
            }
        } catch (InterruptedException e2) {
            onConnectFailure(2, e2.getMessage());
        } catch (RuntimeException e3) {
            TapjoyLog.w("TapjoyAPI", e3.getMessage());
            onConnectFailure(2, e3.getMessage());
        }
    }
}
