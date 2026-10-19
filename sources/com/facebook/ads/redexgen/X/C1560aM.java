package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.EnumSet;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1560aM implements InterfaceC06801e {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC1566aS A01;
    public final /* synthetic */ C1564aQ A02;
    public final /* synthetic */ InterfaceC06801e A03;
    public final /* synthetic */ C06811f A04;
    public final /* synthetic */ YA A05;
    public final /* synthetic */ EnumSet A06;

    public C1560aM(C06811f c06811f, YA ya, AbstractC1566aS abstractC1566aS, C1564aQ c1564aQ, int i, InterfaceC06801e interfaceC06801e, EnumSet enumSet) {
        this.A04 = c06811f;
        this.A05 = ya;
        this.A01 = abstractC1566aS;
        this.A02 = c1564aQ;
        this.A00 = i;
        this.A03 = interfaceC06801e;
        this.A06 = enumSet;
    }

    private final void A00() {
        if (this.A00 + 1 >= this.A02.A0q()) {
            return;
        }
        C06811f c06811f = this.A04;
        YA ya = this.A05;
        EnumSet enumSet = this.A06;
        C1564aQ c1564aQ = this.A02;
        c06811f.A0A(ya, enumSet, c1564aQ, c1564aQ.A0t(this.A00 + 1), this.A00 + 1, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AAP(AdError adError) {
        if (this.A00 == 0) {
            this.A03.AAP(adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AAQ() {
        this.A05.A00().AF6(this.A01.A11(), this.A02.A0u());
        if (this.A00 == 0) {
            this.A03.AAQ();
        }
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AEL() {
        if (this.A00 == 0) {
            this.A03.AEL();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06801e
    public final void AG1() {
        if (this.A00 == 0) {
            this.A03.AG1();
        }
    }
}
