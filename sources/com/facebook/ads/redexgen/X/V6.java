package com.facebook.ads.redexgen.X;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class V6 implements InterfaceC1050Gv {
    public HandlerC1044Gp<? extends InterfaceC1045Gq> A00;
    public IOException A01;
    public final ExecutorService A02;

    public V6(String str) {
        this.A02 = C1078Hx.A0T(str);
    }

    public final <T extends InterfaceC1045Gq> long A04(T t, InterfaceC1043Go<T> interfaceC1043Go, int i) {
        Looper looperMyLooper = Looper.myLooper();
        HI.A04(looperMyLooper != null);
        this.A01 = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC1044Gp(this, looperMyLooper, t, interfaceC1043Go, i, jElapsedRealtime).A06(0L);
        return jElapsedRealtime;
    }

    public final void A05() {
        this.A00.A07(false);
    }

    public final void A06(int i) throws IOException {
        IOException iOException = this.A01;
        if (iOException != null) {
            throw iOException;
        }
        HandlerC1044Gp<? extends InterfaceC1045Gq> handlerC1044Gp = this.A00;
        if (handlerC1044Gp != null) {
            if (i == Integer.MIN_VALUE) {
                i = handlerC1044Gp.A03;
            }
            handlerC1044Gp.A05(i);
        }
    }

    public final void A07(InterfaceC1046Gr interfaceC1046Gr) {
        HandlerC1044Gp<? extends InterfaceC1045Gq> handlerC1044Gp = this.A00;
        if (handlerC1044Gp != null) {
            handlerC1044Gp.A07(true);
        }
        if (interfaceC1046Gr != null) {
            this.A02.execute(new RunnableC1047Gs(interfaceC1046Gr));
        }
        this.A02.shutdown();
    }

    public final boolean A08() {
        return this.A00 != null;
    }
}
