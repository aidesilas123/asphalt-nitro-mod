package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ae, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C0898Ae extends Thread {
    public final /* synthetic */ AudioTrack A00;
    public final /* synthetic */ XL A01;

    public C0898Ae(XL xl, AudioTrack audioTrack) {
        this.A01 = xl;
        this.A00 = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.release();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
