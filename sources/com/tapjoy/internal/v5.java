package com.tapjoy.internal;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes4.dex */
public final class v5 implements Runnable {
    public final /* synthetic */ o7 a;

    public v5(o7 o7Var) {
        this.a = o7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap = this.a.b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        o7 o7Var = this.a;
        o7Var.setImageBitmap(o7Var.b);
    }
}
