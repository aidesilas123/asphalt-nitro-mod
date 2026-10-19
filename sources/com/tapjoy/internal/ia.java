package com.tapjoy.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes4.dex */
public final class ia extends BroadcastReceiver {
    public final /* synthetic */ x2 a;

    public ia(x2 x2Var) {
        this.a = x2Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        aa aaVar = this.a.f8019d;
        aaVar.a.lock();
        try {
            aaVar.f7860f = 1000L;
            aaVar.b.signal();
        } finally {
            aaVar.a.unlock();
        }
    }
}
