package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Z0 extends C07222v {
    public static String[] A01 = {"Aypyv0FACfsPQTq8B8UFxLSJIGYFzsCC", "O7nTze5knL3NcSr2rovnk7vqxWhLtUKF", "w8KDuB7m9FBYOy6hiJzio9ilRX5MSLSp", "Kqe5H6YPSeJrA9PRZ2BXFN4qonyjjTB9", "VPpNE9vsyh3HxU94PoFE47DnBqUfoC5Y", "VSW3ZMLcugYKNhiURlJ0g5uJ7Smp29SS", "AB", "JpT6Sbfy0irMNtnKFHDBnJ8tZotKHb"};
    public final C1513Yz A00;

    public Z0(C1513Yz c1513Yz) {
        this.A00 = c1513Yz;
    }

    @Override // com.facebook.ads.redexgen.X.C07222v
    public final void A08(View view, C07333g c07333g) {
        super.A08(view, c07333g);
        if (this.A00.A0B() || this.A00.A01.getLayoutManager() == null) {
            return;
        }
        this.A00.A01.getLayoutManager().A1C(view, c07333g);
    }

    @Override // com.facebook.ads.redexgen.X.C07222v
    public final boolean A09(View view, int i, Bundle bundle) {
        if (super.A09(view, i, bundle)) {
            if (A01[2].charAt(3) == 'j') {
                throw new RuntimeException();
            }
            A01[6] = "SRS22nAnXgHfwC2qheyHP9Kgc2YZ";
            return true;
        }
        if (this.A00.A0B() || this.A00.A01.getLayoutManager() == null) {
            return false;
        }
        return this.A00.A01.getLayoutManager().A1b(view, i, bundle);
    }
}
