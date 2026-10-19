package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1426Vn implements EY {
    public static String[] A05 = {MBridgeConstans.API_REUQEST_CATEGORY_APP, "A1R5XmGNdue", "Xf2fF", "2MZr802CwBgh98iwI2LX9r8AFH0stAP", "PWtCslqWMOhLlWMecFeGOSMcL", "Nab9jbcw8W2RSLeSFi8qaY40Uhnm56i", "UlYKNWRAV2IAyBS", "QHLbHyQnMMy3J3Z"};
    public XT A00;
    public AbstractC08939z A01;
    public Object A02;
    public final ArrayList<EX> A04 = new ArrayList<>(1);
    public final C0988Ej A03 = new C0988Ej();

    public final C0988Ej A00(EW ew) {
        return this.A03.A02(0, ew, 0L);
    }

    public final void A01(AbstractC08939z abstractC08939z, Object obj) {
        this.A01 = abstractC08939z;
        this.A02 = obj;
        Iterator<EX> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().ACz(this, abstractC08939z, obj);
        }
    }

    public abstract void A02();

    public abstract void A03(XT xt, boolean z);

    @Override // com.facebook.ads.redexgen.X.EY
    public final void A3K(Handler handler, InterfaceC0991Em interfaceC0991Em) {
        this.A03.A07(handler, interfaceC0991Em);
    }

    @Override // com.facebook.ads.redexgen.X.EY
    public final void ADx(XT xt, boolean z, EX ex) {
        XT xt2 = this.A00;
        HI.A03(xt2 == null || xt2 == xt);
        this.A04.add(ex);
        if (this.A00 == null) {
            this.A00 = xt;
            A03(xt, z);
        } else {
            AbstractC08939z abstractC08939z = this.A01;
            if (abstractC08939z != null) {
                ex.ACz(this, abstractC08939z, this.A02);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.EY
    public final void AEV(EX ex) {
        this.A04.remove(ex);
        if (this.A04.isEmpty()) {
            this.A00 = null;
            this.A01 = null;
            if (A05[2].length() == 23) {
                throw new RuntimeException();
            }
            A05[2] = "TEgrTEJPhaeJK53iaQZF";
            this.A02 = null;
            A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.EY
    public final void AEX(InterfaceC0991Em interfaceC0991Em) {
        this.A03.A0D(interfaceC0991Em);
    }
}
