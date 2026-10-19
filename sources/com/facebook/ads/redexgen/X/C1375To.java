package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.To, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1375To implements C5H {
    public final /* synthetic */ C1372Tl A00;

    public C1375To(C1372Tl c1372Tl) {
        this.A00 = c1372Tl;
    }

    @Override // com.facebook.ads.redexgen.X.C5H
    public final boolean A8k() {
        if (!this.A00.A0B.canGoBack()) {
            return false;
        }
        this.A00.A0B.goBack();
        return true;
    }
}
