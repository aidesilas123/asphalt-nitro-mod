package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class J1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ UL A00;

    public J1(UL ul) {
        this.A00 = ul;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (this.A00.A01.A0a != null) {
            this.A00.A01.A0a.A0P(this.A00.A01());
        }
    }
}
