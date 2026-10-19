package com.tapjoy.internal;

import android.app.Activity;

/* JADX INFO: loaded from: classes4.dex */
public final class m8 implements Runnable {
    public final /* synthetic */ Activity a;

    public m8(Activity activity) {
        this.a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ba baVar = h9.a;
        Activity activity = this.a;
        baVar.getClass();
        e.a();
        v1.a.m = true;
        t1.a(activity);
    }
}
