package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.util.u0;

/* JADX INFO: loaded from: classes2.dex */
public class a0 implements u0.b {
    public final /* synthetic */ z a;

    public a0(z zVar) {
        this.a = zVar;
    }

    @Override // com.fyber.inneractive.sdk.util.u0.b
    public void a(u0 u0Var) {
        Runnable runnable = this.a.o;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.post(runnable);
        }
        z zVar = this.a;
        u0 u0Var2 = zVar.p;
        if (u0Var2 != null) {
            u0Var2.f2745e = null;
            zVar.p = null;
        }
    }
}
