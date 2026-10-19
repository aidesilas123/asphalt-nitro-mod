package com.tapjoy.internal;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        if (na.a) {
            e7.b.countDown();
            return;
        }
        f7 f7Var = new f7();
        boolean z = true;
        if (f7Var.b((int) 20000)) {
            long j = f7Var.a;
            long j2 = f7Var.b;
            long j3 = f7Var.c / 2;
            synchronized (na.class) {
                na.a = true;
                na.b = j;
                na.c = j2;
                na.f7947d = na.b - na.c;
                na.a();
                System.currentTimeMillis();
            }
        } else {
            z = false;
        }
        if (z) {
            e7.b.countDown();
        } else {
            e7.a.schedule(this, 300L, TimeUnit.SECONDS);
        }
    }
}
