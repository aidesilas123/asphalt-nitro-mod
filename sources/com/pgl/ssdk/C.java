package com.pgl.ssdk;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class C implements Runnable {
    private final byte[] a;
    private final A b;
    private final Context c;

    public C(byte[] bArr, Context context, A a) {
        this.a = bArr;
        this.b = a;
        this.c = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object objMeta = com.pgl.ssdk.ces.a.meta(302, this.c, this.a);
        if ((objMeta instanceof Integer) && ((Integer) objMeta).intValue() == 0) {
            A a = this.b;
            a.b = 0;
            a.quit();
        } else if (!(objMeta instanceof String)) {
            A a2 = this.b;
            a2.b++;
            a2.f7704g.sendEmptyMessageDelayed(1, 10000L);
            return;
        } else {
            A a3 = this.b;
            a3.b = 0;
            a3.quit();
            y.c = (String) objMeta;
        }
        y.a = 200;
    }
}
