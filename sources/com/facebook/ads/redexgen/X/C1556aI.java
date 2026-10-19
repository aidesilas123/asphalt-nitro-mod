package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1556aI implements C6I {
    public static String[] A05 = {"udExhBBZigXHD765", "VCbgsgLtwNII3DWSf3Df", "sJ3cSki5Ts1gkpIy0", "hudoenMQ7OfQJqKUwYviTAHkC5956B", "3GiDDKpH2PPu7", "VAV0OzmNbR17K1ZAu", "eIBPlY8UdwZIA15YBWaPzTw3Re1i6Niv", "w6ShnqqW6c5InpRu2fdQvGfdyx0XiT7r"};
    public final /* synthetic */ AbstractC1566aS A00;
    public final /* synthetic */ InterfaceC06801e A01;
    public final /* synthetic */ C06811f A02;
    public final /* synthetic */ YA A03;
    public final /* synthetic */ boolean A04;

    public C1556aI(C06811f c06811f, YA ya, boolean z, AbstractC1566aS abstractC1566aS, InterfaceC06801e interfaceC06801e) {
        this.A02 = c06811f;
        this.A03 = ya;
        this.A04 = z;
        this.A00 = abstractC1566aS;
        this.A01 = interfaceC06801e;
    }

    private void A00(boolean z) {
        if (!z) {
            this.A01.AAP(AdError.CACHE_ERROR);
            return;
        }
        YA ya = this.A03;
        String[] strArr = A05;
        if (strArr[7].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[5] = "ua1Hqbcww3qJrVJ6O";
        strArr2[2] = "2U70GzBDbPON7gkn8";
        if (IP.A1P(ya) && this.A04) {
            this.A02.A02.add(C1240Oi.A01(this.A03, this.A00, 1, new C1557aJ(this)));
        } else {
            this.A01.AAQ();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAn() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAw() {
        A00(true);
    }
}
