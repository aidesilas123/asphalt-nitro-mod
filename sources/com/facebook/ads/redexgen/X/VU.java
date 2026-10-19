package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VU implements FW {
    public final C1024Ft A00;
    public final Map<String, C1030Fz> A01;
    public final Map<String, C1025Fu> A02;
    public final long[] A03;

    public VU(C1024Ft c1024Ft, Map<String, C1030Fz> map, Map<String, C1025Fu> map2) {
        this.A00 = c1024Ft;
        this.A02 = map2;
        this.A01 = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.A03 = c1024Ft.A0F();
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final List<FV> A6T(long j) {
        return this.A00.A0D(j, this.A01, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final long A6t(int i) {
        return this.A03[i];
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final int A6u() {
        return this.A03.length;
    }

    @Override // com.facebook.ads.redexgen.X.FW
    public final int A7L(long j) {
        int iA0A = C1078Hx.A0A(this.A03, j, false, false);
        if (iA0A < this.A03.length) {
            return iA0A;
        }
        return -1;
    }
}
