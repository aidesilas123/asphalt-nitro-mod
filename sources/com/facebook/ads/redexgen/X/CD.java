package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class CD {
    public static String[] A0A = {"VV6EzFzDFGyxh7278LhkWh1nAnO", "a", "RIeoUtwh2k0Lp", "KiUc8yTTjWF6Y9v", "6tIA8m5WM2YSgVpCAFtgKZOFEkm", "A00z45", "ej2X1eDppCFfwh6aI5B812e88v7VHLnd", "obdd9bh"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public C7 A04;
    public CM A05;
    public final InterfaceC0930Bm A06;
    public final CO A07 = new CO();
    public final C1062Hh A09 = new C1062Hh(1);
    public final C1062Hh A08 = new C1062Hh();

    public CD(InterfaceC0930Bm interfaceC0930Bm) {
        this.A06 = interfaceC0930Bm;
    }

    private CN A00() {
        int i = this.A07.A07.A02;
        if (this.A07.A08 == null) {
            return this.A05.A00(i);
        }
        CO co = this.A07;
        if (A0A[2].length() == 16) {
            throw new RuntimeException();
        }
        A0A[2] = "yH";
        return co.A08;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01() {
        if (this.A07.A0A) {
            C1062Hh c1062Hh = this.A07.A09;
            CN cnA00 = A00();
            if (cnA00.A00 != 0) {
                c1062Hh.A0Z(cnA00.A00);
            }
            if (this.A07.A0H[this.A01]) {
                c1062Hh.A0Z(c1062Hh.A0I() * 6);
            }
        }
    }

    public final int A03() {
        C1062Hh c1062Hh;
        int length;
        if (!this.A07.A0A) {
            return 0;
        }
        CN cnA00 = A00();
        if (A0A[5].length() != 6) {
            throw new RuntimeException();
        }
        A0A[1] = "c";
        if (cnA00.A00 != 0) {
            c1062Hh = this.A07.A09;
            length = cnA00.A00;
        } else {
            byte[] bArr = cnA00.A04;
            this.A08.A0b(bArr, bArr.length);
            c1062Hh = this.A08;
            length = bArr.length;
        }
        boolean z = this.A07.A0H[this.A01];
        this.A09.A00[0] = (byte) ((z ? 128 : 0) | length);
        this.A09.A0Y(0);
        this.A06.AEr(this.A09, 1);
        this.A06.AEr(c1062Hh, length);
        if (!z) {
            return length + 1;
        }
        C1062Hh c1062Hh2 = this.A07.A09;
        int iA0I = c1062Hh2.A0I();
        c1062Hh2.A0Z(-2);
        int i = (iA0I * 6) + 2;
        this.A06.AEr(c1062Hh2, i);
        return length + 1 + i;
    }

    public final void A04() {
        this.A07.A01();
        this.A01 = 0;
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
    }

    public final void A05(long j) {
        long jA01 = C9E.A01(j);
        for (int i = this.A01; i < this.A07.A00 && this.A07.A00(i) < jA01; i++) {
            if (this.A07.A0I[i]) {
                this.A03 = i;
            }
        }
    }

    public final void A06(DrmInitData drmInitData) {
        CN cnA00 = this.A05.A00(this.A07.A07.A02);
        this.A06.A5j(this.A05.A07.A0I(drmInitData.A02(cnA00 != null ? cnA00.A02 : null)));
    }

    public final void A07(CM cm, C7 c7) {
        this.A05 = (CM) HI.A01(cm);
        this.A04 = (C7) HI.A01(c7);
        this.A06.A5j(cm.A07);
        A04();
    }

    public final boolean A08() {
        this.A01++;
        int i = this.A00 + 1;
        this.A00 = i;
        int[] iArr = this.A07.A0E;
        int i2 = this.A02;
        if (i != iArr[i2]) {
            return true;
        }
        this.A02 = i2 + 1;
        this.A00 = 0;
        return false;
    }
}
