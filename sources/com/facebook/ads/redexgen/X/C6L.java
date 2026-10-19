package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6L, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C6L implements Callable<Boolean> {
    public final BlockingQueue<Boolean> A00 = new LinkedBlockingQueue();
    public final /* synthetic */ C6Q A01;

    public C6L(C6Q c6q, C6M c6m) {
        this.A01 = c6q;
        new Handler(Looper.getMainLooper()).post(new YD(this, c6q, c6m));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        return this.A00.take();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(C6M c6m) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        QN qnA05 = QN.A05(this.A01.A04.A01());
        Uri uriA00 = C1132Kc.A00(c6m.A08);
        long jA0O = c6m.A00;
        if (jA0O == -1) {
            jA0O = IP.A0O(this.A01.A04);
        }
        qnA05.A0G(uriA00, new YC(this, c6m, jA0O, jCurrentTimeMillis), jA0O);
    }
}
