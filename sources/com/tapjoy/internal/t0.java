package com.tapjoy.internal;

import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes4.dex */
public final class t0 implements Observer {
    public final /* synthetic */ aa a;

    public t0(aa aaVar) {
        this.a = aaVar;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        aa aaVar;
        o1 o1Var;
        a3.b.deleteObserver(this);
        if (Boolean.valueOf(Boolean.TRUE.equals(obj)).booleanValue() || (o1Var = (aaVar = this.a).f7861g) == null || o1Var.a == null) {
            return;
        }
        aaVar.f7859e = new x2(aaVar);
        new Thread(this.a.f7859e).start();
    }
}
