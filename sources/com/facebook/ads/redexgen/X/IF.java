package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class IF implements Runnable {
    public final /* synthetic */ Format A00;
    public final /* synthetic */ IK A01;

    public IF(IK ik, Format format) {
        this.A01 = ik;
        this.A00 = format;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A01.A01.ADQ(this.A00);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
