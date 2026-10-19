package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class G3 implements RO {
    public final C1040Gl A00;
    public final RT A01;

    public G3(C1040Gl c1040Gl, RT rt) {
        this.A00 = c1040Gl;
        this.A01 = rt;
    }

    @Override // com.facebook.ads.redexgen.X.RO
    public void A3V(Map<R6, RT> map, Map<InterfaceC1036Gf, RG> map2) {
        map.put(this.A00, this.A01);
    }
}
