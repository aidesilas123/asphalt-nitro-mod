package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1505Yr extends AbstractRunnableC1125Jv {
    public final /* synthetic */ C1501Yn A00;
    public final /* synthetic */ JG A01;

    public C1505Yr(C1501Yn c1501Yn, JG jg) {
        this.A00 = c1501Yn;
        this.A01 = jg;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1125Jv
    public final void A01() {
        if (this.A00.A01.A06() != null) {
            this.A00.A01.A06().onError(this.A00.A01.A07(), C1135Kf.A00(this.A01));
        }
    }
}
