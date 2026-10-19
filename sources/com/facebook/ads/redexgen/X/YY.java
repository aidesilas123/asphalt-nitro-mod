package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class YY implements C6I {
    public final List<C1581ah> A00;
    public final /* synthetic */ YX A01;

    public YY(YX yx, List<C1581ah> list) {
        this.A01 = yx;
        this.A00 = list;
    }

    private void A00() {
        this.A01.A00.A05(true);
        this.A01.A00.A02();
        this.A01.A00.A03(0);
        Iterator<C1581ah> it = this.A00.iterator();
        while (it.hasNext()) {
            UJ uj = new UJ(this.A01.A01, it.next(), null, UJ.A0K(), this.A01.A00.A01());
            if (uj.A0y() != null && uj.A0y().A0F() != null) {
                ((AbstractC1541a3) uj.A0y().A0F()).A00(uj);
            }
            this.A01.A00.A04(new NativeAd(this.A01.A01, uj));
        }
        C1129Jz.A00(new YZ(this));
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAn() {
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAw() {
        A00();
    }
}
