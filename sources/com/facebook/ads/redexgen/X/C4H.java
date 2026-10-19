package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4H, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C4H {
    public int A00;
    public int A01;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public boolean A09;
    public boolean A0B = true;
    public int A02 = 0;
    public boolean A0A = false;
    public List<AbstractC07714u> A08 = null;

    private View A00() {
        int size = this.A08.size();
        for (int i = 0; i < size; i++) {
            View view = this.A08.get(i).A0H;
            C07554d c07554d = (C07554d) view.getLayoutParams();
            if (!c07554d.A02() && this.A01 == c07554d.A00()) {
                A02(view);
                return view;
            }
        }
        return null;
    }

    private final View A01(View view) {
        int iA00;
        int size = this.A08.size();
        View view2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = this.A08.get(i2).A0H;
            C07554d c07554d = (C07554d) view3.getLayoutParams();
            if (view3 != view && !c07554d.A02() && (iA00 = (c07554d.A00() - this.A01) * this.A03) >= 0 && iA00 < i) {
                view2 = view3;
                i = iA00;
                if (iA00 == 0) {
                    break;
                }
            }
        }
        return view2;
    }

    private final void A02(View view) {
        View viewA01 = A01(view);
        if (viewA01 == null) {
            this.A01 = -1;
        } else {
            this.A01 = ((C07554d) viewA01.getLayoutParams()).A00();
        }
    }

    public final View A03(C07614k c07614k) {
        if (this.A08 != null) {
            return A00();
        }
        View viewA0G = c07614k.A0G(this.A01);
        this.A01 += this.A03;
        return viewA0G;
    }

    public final void A04() {
        A02(null);
    }

    public final boolean A05(C07684r c07684r) {
        int i = this.A01;
        return i >= 0 && i < c07684r.A03();
    }
}
