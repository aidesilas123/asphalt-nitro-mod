package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ew, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1001Ew extends AbstractC1547a9 {
    public C1001Ew(YA ya, C06931r c06931r) {
        super(ya, c06931r);
    }

    private C1544a6 A00(Runnable runnable) {
        return new C1544a6(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final C1C A0F() {
        C1583aj c1583aj = (C1583aj) this.A01;
        if (c1583aj != null) {
            return c1583aj.A09();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0L() {
        ((C1583aj) this.A01).A0B();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0N(InterfaceC06640o interfaceC06640o, C8F c8f, C8D c8d, C06941s c06941s) {
        C1583aj c1583aj = (C1583aj) interfaceC06640o;
        C1545a7 c1545a7 = new C1545a7(this, c06941s, c1583aj);
        A0E().postDelayed(c1545a7, c8f.A05().A05());
        c1583aj.A0A(this.A0B, A00(c1545a7), c06941s, this.A07.A0A, this.A07.A04, this.A07.A05, this.A07.A02);
    }
}
