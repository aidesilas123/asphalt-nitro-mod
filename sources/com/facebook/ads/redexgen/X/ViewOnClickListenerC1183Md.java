package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Md, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1183Md implements View.OnClickListener {
    public final /* synthetic */ MV A00;
    public final /* synthetic */ TN A01;

    public ViewOnClickListenerC1183Md(TN tn, MV mv) {
        this.A01 = tn;
        this.A00 = mv;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.A9A();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
