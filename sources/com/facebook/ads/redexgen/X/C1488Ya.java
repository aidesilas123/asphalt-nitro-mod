package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ya, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1488Ya extends AbstractRunnableC1125Jv {
    public final /* synthetic */ YX A00;
    public final /* synthetic */ JG A01;

    public C1488Ya(YX yx, JG jg) {
        this.A00 = yx;
        this.A01 = jg;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1125Jv
    public final void A01() {
        if (this.A00.A00.A00() != null) {
            this.A00.A00.A00().onAdError(C1135Kf.A00(this.A01));
        }
    }
}
