package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class XY implements InterfaceC08578o {
    public final List<C08628t> A00 = new ArrayList();
    public final boolean A01;
    public final /* synthetic */ XX A02;

    public XY(XX xx, List<C08538k> list, boolean z) throws IOException {
        this.A02 = xx;
        this.A01 = z;
        for (C08538k c08538k : list) {
            C8j c8jA01 = c08538k.A01();
            this.A00.add(new C08628t(new C08518h(c08538k.A00(), c8jA01.A01()), c8jA01.A00() - c8jA01.A01(), c8jA01.A00()));
        }
    }

    public final C08628t A00() {
        return this.A00.get(0);
    }

    public final C08628t A01() {
        return this.A00.get(r1.size() - 1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08578o
    public final void A4y() throws C08678y {
        this.A02.A03(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08578o
    public final synchronized int A5b() {
        int i;
        i = 0;
        Iterator<C08628t> it = this.A00.iterator();
        while (it.hasNext()) {
            i += it.next().A01;
        }
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08578o
    public final boolean AA0() {
        return this.A01;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A02.A06(this);
    }
}
