package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class E3 {
    public final GZ A00;
    public final InterfaceC1032Gb A01;
    public final InterfaceC1032Gb A02;
    public final H2 A03;
    public final C1066Hl A04;

    public E3(H2 h2, InterfaceC1032Gb interfaceC1032Gb) {
        this(h2, interfaceC1032Gb, null, null, null);
    }

    public E3(H2 h2, InterfaceC1032Gb interfaceC1032Gb, InterfaceC1032Gb interfaceC1032Gb2, GZ gz, C1066Hl c1066Hl) {
        HI.A01(interfaceC1032Gb);
        this.A03 = h2;
        this.A02 = interfaceC1032Gb;
        this.A01 = interfaceC1032Gb2;
        this.A00 = gz;
        this.A04 = c1066Hl;
    }

    public final H2 A00() {
        return this.A03;
    }

    public final V0 A01(boolean z) {
        InterfaceC1032Gb interfaceC1032Gb = this.A01;
        InterfaceC1033Gc interfaceC1033GcA4U = interfaceC1032Gb != null ? interfaceC1032Gb.A4U() : new VD();
        if (z) {
            return new V0(this.A03, VE.A02, interfaceC1033GcA4U, null, 1, null);
        }
        GZ gz = this.A00;
        V1 v1CreateDataSink = gz != null ? gz.createDataSink() : new V1(this.A03, 2097152L);
        InterfaceC1033Gc interfaceC1033GcA4U2 = this.A02.A4U();
        C1066Hl c1066Hl = this.A04;
        if (c1066Hl != null) {
            interfaceC1033GcA4U2 = new V5(interfaceC1033GcA4U2, c1066Hl, -1000);
        }
        return new V0(this.A03, interfaceC1033GcA4U2, interfaceC1033GcA4U, v1CreateDataSink, 1, null);
    }

    public final C1066Hl A02() {
        C1066Hl c1066Hl = this.A04;
        return c1066Hl != null ? c1066Hl : new C1066Hl();
    }
}
