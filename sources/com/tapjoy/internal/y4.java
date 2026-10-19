package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TapjoyConnectCore;
import java.util.Observer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y4 {
    public volatile m4 a;

    public abstract TJPlacement a(Context context, TJPlacementListener tJPlacementListener, Object obj);

    public abstract String b(Object obj);

    public final void c(m4 m4Var) {
        synchronized (this) {
            if (this.a == m4Var) {
                this.a = null;
            }
        }
    }

    public boolean d() {
        return !TapjoyConnectCore.isFullScreenViewOpen();
    }

    public boolean e(Observer observer) {
        if (TapjoyConnectCore.isFullScreenViewOpen()) {
            n2 n2Var = a3.f7852e;
            n2Var.addObserver(observer);
            if (TapjoyConnectCore.isFullScreenViewOpen()) {
                return false;
            }
            n2Var.deleteObserver(observer);
        }
        v1 v1Var = v1.a;
        e9 e9Var = v1Var.j;
        if (!(e9Var != null && e9Var.b.get())) {
            n2 n2Var2 = a3.c;
            n2Var2.addObserver(observer);
            e9 e9Var2 = v1Var.j;
            if (!(e9Var2 != null && e9Var2.b.get())) {
                return false;
            }
            n2Var2.deleteObserver(observer);
        }
        return true;
    }

    public m4 f() {
        return new m4(this, new a4(10000L));
    }

    public final boolean g() {
        if (!d()) {
            return false;
        }
        m4 m4VarF = null;
        synchronized (this) {
            if (this.a == null) {
                m4VarF = f();
                this.a = m4VarF;
            }
        }
        if (m4VarF == null) {
            return false;
        }
        m4VarF.a();
        return true;
    }
}
