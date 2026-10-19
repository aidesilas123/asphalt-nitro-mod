package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1482Xu implements InterfaceC1128Jy {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1128Jy
    public final void AEc(Throwable th, Object obj) {
        if (obj instanceof C7P) {
            YA yaA5p = ((C7P) obj).A5p();
            if (yaA5p != null) {
                yaA5p.A0I(th);
                return;
            }
            return;
        }
        if (obj instanceof View) {
            Context context = ((View) obj).getContext();
            if (context instanceof YA) {
                ((YA) context).A0I(th);
            }
        }
    }
}
