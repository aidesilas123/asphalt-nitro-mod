package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class s implements Runnable {
    public final /* synthetic */ r a;

    public s(r rVar) {
        this.a = rVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        r rVar = this.a;
        rVar.getClass();
        IAlog.a("%sRe-enabling clicks, grace period has passed", IAlog.a(rVar));
        this.a.f2025g = true;
        this.a.h = null;
    }
}
