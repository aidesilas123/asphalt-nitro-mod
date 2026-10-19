package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1423Vk implements InterfaceC1045Gq {
    public static String[] A0C = {"G7jWD6ulf4YNSZyKFTHtDKYEexnehBFD", "eAcypqsPfTTSG9tYkNPVa4Ur1OSgM6nM", "x", "tNQG44GENbPBCr6MlCIr3t4n4NF0MmxZ", "OwErIGDXAeY1H11Nt9UmuNZTMubue4sT", InneractiveMediationDefs.GENDER_FEMALE, "eBkibdjxFKT4WmP6H51EPZ9055c0bCkp", "0Ce9TygyYiJS1KV85oyrWWiGz76nCu"};
    public long A00;
    public long A02;
    public C1037Gg A03;
    public final Uri A05;
    public final ES A07;
    public final InterfaceC1033Gc A08;
    public final HO A09;
    public volatile boolean A0A;
    public final /* synthetic */ BT A0B;
    public final C0925Bh A06 = new C0925Bh();
    public boolean A04 = true;
    public long A01 = -1;

    public C1423Vk(BT bt, Uri uri, InterfaceC1033Gc interfaceC1033Gc, ES es, HO ho) {
        this.A0B = bt;
        this.A05 = (Uri) HI.A01(uri);
        this.A08 = (InterfaceC1033Gc) HI.A01(interfaceC1033Gc);
        this.A07 = (ES) HI.A01(es);
        this.A09 = ho;
    }

    public final void A04(long j, long j2) {
        this.A06.A00 = j;
        this.A02 = j2;
        this.A04 = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1045Gq
    public final void A47() {
        this.A0A = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1045Gq
    public final void A9B() throws InterruptedException, IOException {
        char cCharAt;
        char cCharAt2;
        X4 x4;
        int iAE9 = 0;
        while (iAE9 == 0 && !this.A0A) {
            try {
                long jA7a = this.A06.A00;
                C1037Gg c1037Gg = new C1037Gg(this.A05, jA7a, -1L, this.A0B.A0b);
                this.A03 = c1037Gg;
                long jADb = this.A08.ADb(c1037Gg);
                this.A01 = jADb;
                if (jADb != -1) {
                    this.A01 = jADb + jA7a;
                }
                x4 = new X4(this.A08, jA7a, this.A01);
                InterfaceC0920Ba interfaceC0920BaA02 = this.A07.A02(x4, this.A08.A85());
                if (this.A04) {
                    interfaceC0920BaA02.AEw(jA7a, this.A02);
                    this.A04 = false;
                }
                while (iAE9 == 0 && !this.A0A) {
                    this.A09.A00();
                    iAE9 = interfaceC0920BaA02.AE9(x4, this.A06);
                    if (x4.A7a() > this.A0B.A0P + jA7a) {
                        jA7a = x4.A7a();
                        this.A09.A01();
                        this.A0B.A0R.post(this.A0B.A0a);
                    }
                }
            } finally {
                if (cCharAt != cCharAt2) {
                }
            }
            if (iAE9 == 1) {
                iAE9 = 0;
            } else {
                C0925Bh c0925Bh = this.A06;
                if (A0C[7].length() == 32) {
                    throw new RuntimeException();
                }
                A0C[7] = "RP5F3MQdpmYGlMxTR22UmyqYUd";
                c0925Bh.A00 = x4.A7a();
                this.A00 = this.A06.A00 - this.A03.A01;
            }
            C1078Hx.A0W(this.A08);
        }
    }
}
