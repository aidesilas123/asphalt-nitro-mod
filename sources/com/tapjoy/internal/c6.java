package com.tapjoy.internal;

import android.content.Intent;

/* JADX INFO: loaded from: classes4.dex */
public final class c6 implements Runnable {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ com.tapjoy.o b;

    public c6(com.tapjoy.o oVar, Intent intent) {
        this.b = oVar;
        this.a = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.b.startActivity(this.a);
    }
}
