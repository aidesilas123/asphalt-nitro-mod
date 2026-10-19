package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class NX {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.29] */
    public static AnonymousClass29 A00(final C1231Nz c1231Nz, final UJ uj, final String str, final C08789j c08789j) {
        final boolean z = true;
        return new C9G(c1231Nz, uj, z, str, c08789j) { // from class: com.facebook.ads.redexgen.X.29
            public T3 A00;
            public PC A01;
            public final InterfaceC1086If A02 = this.A0I.A05().A01().A09();
            public final UJ A03;
            public final C08789j A04;
            public final String A05;
            public static final int A07 = (int) (C1148Ku.A02 * (-4.0f));
            public static final int A06 = (int) (C1148Ku.A02 * 6.0f);

            {
                this.A03 = uj;
                this.A05 = str;
                this.A04 = c08789j;
                uj.A1K(this);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1346Sk
            public void setupNativeCtaExtension(PC pc) {
                this.A01 = pc;
                int iA0M = IP.A0M(this.A0I.A05());
                C1M c1mA01 = this.A03.A0z().A0u().A01();
                T3 t3 = new T3(this.A0I.A05(), this.A03.A0z().A0K(), c1mA01, this.A02, N9.getDummyListener(), this.A04.A0c(), this.A03.A19(), this.A03.A0z() == null ? null : this.A03.A0z().A0x());
                this.A00 = t3;
                t3.setCta(pc.A03().A0F(), this.A05, new HashMap());
                this.A03.A1K(this.A00);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (iA0M == 1) {
                    layoutParams.addRule(12);
                    LV.A0P(this.A00, A06, 5, c1mA01.A09(false));
                    ((C9G) this).A06.addView(this.A00, layoutParams);
                } else if (iA0M == 2) {
                    layoutParams.addRule(3, ((C9G) this).A06.getId());
                    layoutParams.setMargins(0, A07, 0, 0);
                    addView(this.A00, 0, layoutParams);
                    ((C9G) this).A06.bringToFront();
                }
            }
        };
    }

    public static C9G A01(C1231Nz c1231Nz, String str, S0 s0) {
        return new C9G(c1231Nz, true, str, s0);
    }
}
