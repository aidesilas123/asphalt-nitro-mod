package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ri, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1318Ri extends C4Q<C1316Rg> {
    public final int A00;
    public final YA A01;
    public final T3 A02;
    public final List<String> A03;

    public C1318Ri(YA ya, List<String> list, int i, T3 t3) {
        this.A03 = list;
        this.A00 = i;
        this.A01 = ya;
        this.A02 = t3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final C1316Rg A0C(ViewGroup viewGroup, int i) {
        C1317Rh c1317Rh = new C1317Rh(this.A01);
        if (IP.A13(this.A01)) {
            c1317Rh.setOnClickListener(new PT(this));
        }
        return new C1316Rg(c1317Rh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1316Rg c1316Rg, int i) {
        String str = this.A03.get(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A00;
        int i3 = i2 * 4;
        if (i == 0) {
            i2 = i3;
        }
        marginLayoutParams.setMargins(i2, 0, i >= A0D() + (-1) ? this.A00 * 4 : this.A00, 0);
        c1316Rg.A0l().setLayoutParams(marginLayoutParams);
        c1316Rg.A0l().A00(str);
    }

    @Override // com.facebook.ads.redexgen.X.C4Q
    public final int A0D() {
        return this.A03.size();
    }
}
