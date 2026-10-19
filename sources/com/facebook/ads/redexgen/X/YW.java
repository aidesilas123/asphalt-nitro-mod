package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class YW implements InterfaceC07795c {
    public final /* synthetic */ ImageView A00;
    public final /* synthetic */ C07815e A01;
    public final /* synthetic */ UJ A02;

    public YW(C07815e c07815e, ImageView imageView, UJ uj) {
        this.A01 = c07815e;
        this.A00 = imageView;
        this.A02 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07795c
    public final void ABY(Drawable drawable) {
        UJ.A0e(drawable, this.A00);
        this.A02.A1J(drawable);
    }
}
