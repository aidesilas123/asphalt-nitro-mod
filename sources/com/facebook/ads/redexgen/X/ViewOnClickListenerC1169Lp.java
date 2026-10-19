package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1169Lp implements View.OnClickListener {
    public final /* synthetic */ C1X A00;
    public final /* synthetic */ C1094In A01;
    public final /* synthetic */ C1170Lq A02;
    public final /* synthetic */ InterfaceC1173Lt A03;
    public final /* synthetic */ String A04;

    public ViewOnClickListenerC1169Lp(C1170Lq c1170Lq, C1094In c1094In, InterfaceC1173Lt interfaceC1173Lt, String str, C1X c1x) {
        this.A02 = c1170Lq;
        this.A01 = c1094In;
        this.A03 = interfaceC1173Lt;
        this.A04 = str;
        this.A00 = c1x;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A01.A04(EnumC1093Im.A0A, null);
            if (this.A02.A02.A0O(this.A02.A03.A01(), true)) {
                this.A03.A98(this.A04, this.A00);
            } else {
                if (TextUtils.isEmpty(this.A00.A00())) {
                    return;
                }
                KZ.A0L(new KZ(), this.A02.A03, C1132Kc.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
