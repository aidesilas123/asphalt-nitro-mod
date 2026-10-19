package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class DialogInterfaceOnClickListenerC1161Lh implements DialogInterface.OnClickListener {
    public final /* synthetic */ C1376Tp A00;

    public DialogInterfaceOnClickListenerC1161Lh(C1376Tp c1376Tp) {
        this.A00 = c1376Tp;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
