package com.tapjoy.internal;

import android.content.Context;
import android.content.IntentFilter;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class x2 implements Runnable {
    public boolean a;
    public Context b;
    public final ia c = new ia(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ aa f8019d;

    public x2(aa aaVar) {
        this.f8019d = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        this.f8019d.c(3);
        aa aaVar = this.f8019d;
        aaVar.a.lock();
        try {
            o1 o1Var = aaVar.h;
            if (o1Var != null) {
                aaVar.f7861g = o1Var;
                aaVar.h = null;
            }
            o1 o1Var2 = aaVar.f7861g;
            aaVar.a.unlock();
            this.b = o1Var2.a;
            this.b.registerReceiver(this.c, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            while (true) {
                try {
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    a3.b.addObserver(new b2(this, countDownLatch));
                    aaVar = this.f8019d;
                    aaVar.a.lock();
                    try {
                        o1 o1Var3 = aaVar.h;
                        if (o1Var3 != null) {
                            aaVar.f7861g = o1Var3;
                            aaVar.h = null;
                        }
                        o1 o1Var4 = aaVar.f7861g;
                        aaVar.a.unlock();
                        aa aaVar2 = this.f8019d;
                        if (!super/*com.tapjoy.o0*/.c(o1Var4.a, o1Var4.b, o1Var4.c, null)) {
                            this.f8019d.d(1, "Failed to connect");
                            this.b.unregisterReceiver(this.c);
                            aa aaVar3 = this.f8019d;
                            if (aaVar3.f7859e == this) {
                                aaVar3.f7859e = null;
                            }
                            if (aaVar3.c == 3) {
                                this.f8019d.c(1);
                                return;
                            }
                            return;
                        }
                        try {
                            countDownLatch.await();
                        } catch (InterruptedException unused) {
                        }
                        if (this.a) {
                            this.f8019d.c(5);
                            this.f8019d.b();
                            if (i == i) {
                                return;
                            } else {
                                return;
                            }
                        } else {
                            this.f8019d.d(3, "Failed to connect");
                            long jMax = Math.max(this.f8019d.f7860f, 1000L);
                            this.f8019d.f7860f = Math.min(jMax << 2, 3600000L);
                            this.f8019d.e(jMax);
                        }
                    } finally {
                    }
                } finally {
                    this.b.unregisterReceiver(this.c);
                    aa aaVar4 = this.f8019d;
                    if (aaVar4.f7859e == this) {
                        aaVar4.f7859e = null;
                    }
                    if (aaVar4.c == 3) {
                        this.f8019d.c(1);
                    }
                }
            }
        } finally {
        }
    }
}
