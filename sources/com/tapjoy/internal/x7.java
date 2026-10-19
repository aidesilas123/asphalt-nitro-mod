package com.tapjoy.internal;

import android.os.Handler;

/* JADX INFO: loaded from: classes4.dex */
public final class x7 implements u3 {
    public final /* synthetic */ Handler a;

    public x7(Handler handler) {
        this.a = handler;
    }

    @Override // com.tapjoy.internal.u3
    public final boolean a(Runnable runnable) {
        return this.a.post(runnable);
    }
}
