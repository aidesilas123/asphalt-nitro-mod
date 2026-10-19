package com.facebook.ads.redexgen.X;

import android.os.ConditionVariable;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class HF extends Thread {
    public final /* synthetic */ ConditionVariable A00;
    public final /* synthetic */ C1409Uw A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HF(C1409Uw c1409Uw, String str, ConditionVariable conditionVariable) {
        super(str);
        this.A01 = c1409Uw;
        this.A00 = conditionVariable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            synchronized (this.A01) {
                try {
                    this.A00.open();
                    this.A01.A04();
                } finally {
                    th = th;
                    while (true) {
                        try {
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            K0.A00(th2, this);
        }
    }
}
