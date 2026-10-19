package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class BA extends Handler {
    public final /* synthetic */ XA A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BA(XA xa, Looper looper) {
        super(looper);
        this.A00 = xa;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            byte[] bArr = (byte[]) message.obj;
            for (XB xb : this.A00.A09) {
                if (xb.A0N(bArr)) {
                    xb.A0J(message.what);
                    return;
                }
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
