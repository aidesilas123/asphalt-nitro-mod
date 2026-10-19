package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4z, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C07764z {
    public C07734w A00 = new C07734w();
    public final InterfaceC07744x A01;

    public C07764z(InterfaceC07744x interfaceC07744x) {
        this.A01 = interfaceC07744x;
    }

    public final View A00(int i, int i2, int i3, int i4) {
        int iA7T = this.A01.A7T();
        int iA7S = this.A01.A7S();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewA6H = this.A01.A6H(i);
            this.A00.A03(iA7T, iA7S, this.A01.A6K(viewA6H), this.A01.A6J(viewA6H));
            if (i3 != 0) {
                this.A00.A01();
                this.A00.A02(i3);
                if (this.A00.A04()) {
                    return viewA6H;
                }
            }
            if (i4 != 0) {
                this.A00.A01();
                this.A00.A02(i4);
                if (this.A00.A04()) {
                    view = viewA6H;
                }
            }
            i += i5;
        }
        return view;
    }
}
