package com.tapjoy.internal;

import android.app.Activity;

/* JADX INFO: loaded from: classes4.dex */
public final class w8 implements Runnable {
    public final /* synthetic */ Activity a;

    public w8(Activity activity) {
        this.a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ba baVar = h9.a;
        Activity activity = this.a;
        baVar.getClass();
        e.a();
        t1.b(activity);
    }
}
