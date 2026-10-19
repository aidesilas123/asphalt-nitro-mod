package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Io, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnAttachStateChangeListenerC1095Io implements View.OnAttachStateChangeListener {
    public final /* synthetic */ EnumC1093Im A00;
    public final /* synthetic */ C1094In A01;

    public ViewOnAttachStateChangeListenerC1095Io(C1094In c1094In, EnumC1093Im enumC1093Im) {
        this.A01 = c1094In;
        this.A00 = enumC1093Im;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.A01.A04(this.A00, null);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
