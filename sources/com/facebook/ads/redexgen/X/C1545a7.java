package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.a7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1545a7 extends K8 {
    public final /* synthetic */ C1583aj A00;
    public final /* synthetic */ C06941s A01;
    public final /* synthetic */ C1001Ew A02;

    public C1545a7(C1001Ew c1001Ew, C06941s c06941s, C1583aj c1583aj) {
        this.A02 = c1001Ew;
        this.A01 = c06941s;
        this.A00 = c1583aj;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        this.A02.A0P(this.A01);
        this.A02.A0M(this.A00);
        this.A02.A00 = null;
        JG jgA00 = JG.A00(AdErrorType.INTERSTITIAL_AD_TIMEOUT);
        this.A02.A0B.A0E().A4p(jgA00.A03().getErrorCode(), jgA00.A04());
        this.A02.A06.A0G(jgA00);
    }
}
