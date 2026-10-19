package com.tapjoy.internal;

import com.tapjoy.TJActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class o5 implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ TJActivity b;

    public o5(TJActivity tJActivity, boolean z) {
        this.b = tJActivity;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a) {
            this.b.f7785d.setVisibility(0);
        } else {
            this.b.f7785d.setVisibility(4);
        }
    }
}
