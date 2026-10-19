package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9j, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08789j extends S0 {
    public static String[] A00 = {"4DJOkXe9rib7uWc4nLa4kcuSPdxs7gf4", "Dyxr4XzeXsq4jjw5BU630cyoQdL32ISv", "MScpZjpz", "3XC0FNsyX3k6WX9dbHhU9IwCEOagJZ1X", "JEKgPGdFYfe9RoD8dW0t8x0Mvi1GtEmi", "N5tdloXdcly7PUtxD1ZshZXdUDk2Lr2A", "5elKCHWntj6O1Wqi1faAvLWvEV4yzp2T", "JBMx9492vmjOwkRP6"};

    public C08789j(C2O c2o, int i, List<PC> list, C1285Qb c1285Qb, Bundle bundle) {
        super(c2o, i, list, c1285Qb, bundle);
        c2o.A1k(this);
        this.A03 = new TI(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A00() {
        int iA27 = this.A0C.A27();
        if (this.A05 == null || iA27 == -1 || iA27 >= this.A05.size() - 1) {
            return;
        }
        A0V(iA27 + 1);
    }

    private void A01(int i) {
        int iA28 = this.A0C.A28();
        int iA29 = this.A0C.A29();
        int iA27 = this.A0C.A27();
        if (iA27 != iA28) {
            A0S(iA28);
        }
        if (iA27 != iA29) {
            A0S(iA29);
        }
        A0T(iA27);
        A0W(iA28, iA29, i);
    }

    @Override // com.facebook.ads.redexgen.X.S0, com.facebook.ads.redexgen.X.AbstractC07594h
    public final void A0L(ED ed, int i) {
    }

    @Override // com.facebook.ads.redexgen.X.S0, com.facebook.ads.redexgen.X.AbstractC07594h
    public final void A0M(ED ed, int i, int i2) {
        if (this.A0C.A27() != -1) {
            AbstractC1346Sk abstractC1346Sk = (AbstractC1346Sk) this.A0C.A1q(this.A0C.A27());
            if (A00[2].length() == 4) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[3] = "IxYVUA16uQkbjXwNztolao4gyOA0tKzF";
            strArr[6] = "jcO9EzcXxFOxyF2BSjZiD0vteRj0mA5y";
            if (abstractC1346Sk != null && abstractC1346Sk.A17() && !abstractC1346Sk.A16()) {
                abstractC1346Sk.A14();
            }
            A01(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void A0Y(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.8f);
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final void A0a(AbstractC1346Sk abstractC1346Sk, boolean z) {
        A0Y(abstractC1346Sk, z);
        if (z || !abstractC1346Sk.A16()) {
            return;
        }
        abstractC1346Sk.A13();
    }

    @Override // com.facebook.ads.redexgen.X.S0
    public final boolean A0b(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.75f;
    }

    public final C1285Qb A0c() {
        return this.A04;
    }

    public final void A0d(C1285Qb c1285Qb) {
        this.A04 = c1285Qb;
    }

    public final void A0e(List<PC> list) {
        this.A05 = list;
    }
}
