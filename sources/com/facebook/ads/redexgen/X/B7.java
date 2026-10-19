package com.facebook.ads.redexgen.X;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class B7 {
    public final CopyOnWriteArrayList<B6> A00 = new CopyOnWriteArrayList<>();

    public final void A00() {
        for (B6 b6 : this.A00) {
            b6.A00.post(new B2(this, b6.A01));
        }
    }

    public final void A01() {
        for (B6 b6 : this.A00) {
            b6.A00.post(new B5(this, b6.A01));
        }
    }

    public final void A02() {
        for (B6 b6 : this.A00) {
            b6.A00.post(new B4(this, b6.A01));
        }
    }

    public final void A03(Handler handler, B8 b8) {
        HI.A03((handler == null || b8 == null) ? false : true);
        this.A00.add(new B6(handler, b8));
    }

    public final void A04(Exception exc) {
        for (B6 b6 : this.A00) {
            b6.A00.post(new B3(this, b6.A01, exc));
        }
    }
}
