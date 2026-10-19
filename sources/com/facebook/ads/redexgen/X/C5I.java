package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5I, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C5I implements View.OnLongClickListener {
    public final /* synthetic */ C5J A00;

    public C5I(C5J c5j) {
        this.A00 = c5j;
    }

    public /* synthetic */ C5I(C5J c5j, C5F c5f) {
        this(c5j);
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (this.A00.A0A != null && this.A00.A06 != null) {
            this.A00.A0A.setBounds(0, 0, this.A00.A06.getWidth(), this.A00.A06.getHeight());
            this.A00.A0A.A0D(!this.A00.A0A.A0E());
        }
        return true;
    }
}
