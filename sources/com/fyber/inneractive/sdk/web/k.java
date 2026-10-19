package com.fyber.inneractive.sdk.web;

import android.content.Context;
import android.content.IntentFilter;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.web.i;

/* JADX INFO: loaded from: classes2.dex */
public class k implements Runnable {
    public final /* synthetic */ i a;

    public k(i iVar) {
        this.a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        i iVar = this.a;
        if (iVar.V == null) {
            try {
                IAlog.a("%sregistering orientation broadcast receiver", IAlog.a(iVar));
                this.a.V = new i.C0202i();
                if (this.a.l() != null) {
                    i iVar2 = this.a;
                    i<T>.C0202i c0202i = iVar2.V;
                    Context contextL = iVar2.l();
                    i iVar3 = i.this;
                    iVar3.getClass();
                    IAlog.a("%sregister screen broadcast receiver", IAlog.a(iVar3));
                    c0202i.a = contextL;
                    contextL.registerReceiver(c0202i, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
                }
            } catch (Exception e2) {
                i iVar4 = this.a;
                iVar4.getClass();
                IAlog.e("%sfailed registering orientation broadcast recevier", IAlog.a(iVar4));
                if (IAlog.a >= 3) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
