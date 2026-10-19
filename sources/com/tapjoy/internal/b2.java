package com.tapjoy.internal;

import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class b2 implements Observer {
    public final /* synthetic */ CountDownLatch a;
    public final /* synthetic */ x2 b;

    public b2(x2 x2Var, CountDownLatch countDownLatch) {
        this.b = x2Var;
        this.a = countDownLatch;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        a3.b.deleteObserver(this);
        this.b.a = Boolean.TRUE.equals(obj);
        this.a.countDown();
    }
}
