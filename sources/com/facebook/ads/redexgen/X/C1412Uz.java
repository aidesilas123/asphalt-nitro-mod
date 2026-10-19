package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1412Uz implements InterfaceC1032Gb {
    public final int A00;
    public final GZ A01;
    public final InterfaceC1032Gb A02;
    public final InterfaceC1032Gb A03;
    public final H2 A04;
    public final H4 A05;

    public C1412Uz(H2 h2, InterfaceC1032Gb interfaceC1032Gb, InterfaceC1032Gb interfaceC1032Gb2, GZ gz, int i, H4 h4) {
        this.A04 = h2;
        this.A03 = interfaceC1032Gb;
        this.A02 = interfaceC1032Gb2;
        this.A01 = gz;
        this.A00 = i;
        this.A05 = h4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1032Gb
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final V0 A4U() {
        H2 h2 = this.A04;
        InterfaceC1033Gc interfaceC1033GcA4U = this.A03.A4U();
        InterfaceC1033Gc interfaceC1033GcA4U2 = this.A02.A4U();
        GZ gz = this.A01;
        return new V0(h2, interfaceC1033GcA4U, interfaceC1033GcA4U2, gz != null ? gz.createDataSink() : null, this.A00, this.A05);
    }
}
