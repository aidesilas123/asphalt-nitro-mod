package com.facebook.ads.redexgen.X;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VG implements InterfaceC1032Gb {
    public final Context A00;
    public final InterfaceC1032Gb A01;
    public final InterfaceC1053Gy<? super InterfaceC1033Gc> A02;

    public VG(Context context, InterfaceC1053Gy<? super InterfaceC1033Gc> interfaceC1053Gy, InterfaceC1032Gb interfaceC1032Gb) {
        this.A00 = context.getApplicationContext();
        this.A02 = interfaceC1053Gy;
        this.A01 = interfaceC1032Gb;
    }

    public VG(Context context, String str, InterfaceC1053Gy<? super InterfaceC1033Gc> interfaceC1053Gy) {
        this(context, interfaceC1053Gy, new C2P(str, interfaceC1053Gy));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1032Gb
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final VH A4U() {
        return new VH(this.A00, this.A02, this.A01.A4U());
    }
}
