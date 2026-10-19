package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1558aK implements InterfaceC07925p {
    public static String[] A05 = {"SGxBKOT0PnlxeQ2jGccieZy3bFeI", "1PQaT", "uVEahNbfwTxCxKVGO7p", "rVPhbhRBlKfAg8fviAhE", "2ov", "KrP87Bn8e271VzBAE5Wi", "4No2VIB7eIWgh7ub8hExBeYUcY", "mEjh"};
    public final /* synthetic */ AbstractC1566aS A00;
    public final /* synthetic */ InterfaceC06801e A01;
    public final /* synthetic */ C06811f A02;
    public final /* synthetic */ YA A03;
    public final /* synthetic */ boolean A04;

    public C1558aK(C06811f c06811f, YA ya, boolean z, AbstractC1566aS abstractC1566aS, InterfaceC06801e interfaceC06801e) {
        this.A02 = c06811f;
        this.A03 = ya;
        this.A04 = z;
        this.A00 = abstractC1566aS;
        this.A01 = interfaceC06801e;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAW() {
        if (IP.A1P(this.A03) && this.A04) {
            this.A02.A02.add(C1240Oi.A01(this.A03, this.A00, 1, new C1559aL(this)));
            return;
        }
        InterfaceC06801e interfaceC06801e = this.A01;
        if (A05[2].length() != 19) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[5] = "X6BBoGIR5wPjpoFUlFYz";
        strArr[3] = "SlUPa0nBeexeGnx3tyWk";
        interfaceC06801e.AAQ();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAX() {
        this.A01.AAP(AdError.CACHE_ERROR);
    }
}
