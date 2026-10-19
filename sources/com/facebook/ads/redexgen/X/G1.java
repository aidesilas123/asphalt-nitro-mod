package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class G1 implements InterfaceC1639bk {
    public final List<InterfaceC1640bl> A00 = new ArrayList();

    @Override // com.facebook.ads.redexgen.X.InterfaceC1639bk
    public final InterfaceC1640bl A5m(int i) {
        return this.A00.get(i);
    }

    @Override // java.lang.Iterable
    public final Iterator<InterfaceC1640bl> iterator() {
        return this.A00.iterator();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1639bk
    public final int size() {
        return this.A00.size();
    }
}
