package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Q1 implements View.OnClickListener {
    public final /* synthetic */ C6E A00;

    public Q1(C6E c6e) {
        this.A00 = c6e;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
        }
        try {
            if (this.A00.getVideoView() == null) {
                return;
            }
            if (this.A00.A02 != null) {
                this.A00.A02.A04(EnumC1093Im.A0p, null);
            }
            this.A00.A01.A0E().A31();
            switch (Q2.A00[this.A00.getVideoView().getState().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    this.A00.getVideoView().A0b(EnumC1267Pj.A04, 12);
                    break;
                case 5:
                    this.A00.getVideoView().A0e(true, 8);
                    break;
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
