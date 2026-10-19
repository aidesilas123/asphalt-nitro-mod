package com.facebook.ads.redexgen.X;

import androidx.core.view.InputDeviceCompat;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WA implements InterfaceC0953Cv {
    public static String[] A06 = {"f3ASEvE0MACuH7PXtcW6SQzpVLuDWBs6", "UAkl7YLcJ73MhJIfOQ7gtBxP58V39hXf", "sKTt9gGYn0qCOxzPnchEZBW", "TIj2tKxLfGdHgu1Q1GnzrxOOh9OPKkUY", "NlS114awdnJt6ePSWIiXVyR", "Ttbg6FQm3oQML", "hnRFaN1D1NI4WPLkXSYbmAvKq8H9o2zk", "6DjXFLFEMVHWeegs6rtlgiLmiwpKRWRw"};
    public int A00;
    public int A01;
    public boolean A02;
    public boolean A03;
    public final InterfaceC0947Co A04;
    public final C1062Hh A05 = new C1062Hh(32);

    public WA(InterfaceC0947Co interfaceC0947Co) {
        this.A04 = interfaceC0947Co;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0953Cv
    public final void A4P(C1062Hh c1062Hh, boolean z) {
        int i = -1;
        if (z) {
            int iA0E = c1062Hh.A0E();
            int iA06 = c1062Hh.A06();
            String[] strArr = A06;
            if (strArr[4].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A06[5] = "fX8Qw0M3arh1i";
            i = iA06 + iA0E;
        }
        if (this.A03) {
            if (!z) {
                return;
            }
            this.A03 = false;
            c1062Hh.A0Y(i);
            this.A00 = 0;
        }
        while (c1062Hh.A04() > 0) {
            int i2 = this.A00;
            if (i2 < 3) {
                if (i2 == 0) {
                    int iA0E2 = c1062Hh.A0E();
                    c1062Hh.A0Y(c1062Hh.A06() - 1);
                    if (iA0E2 == 255) {
                        this.A03 = true;
                        return;
                    }
                }
                int iMin = Math.min(c1062Hh.A04(), 3 - this.A00);
                c1062Hh.A0c(this.A05.A00, this.A00, iMin);
                int i3 = this.A00 + iMin;
                this.A00 = i3;
                if (i3 == 3) {
                    this.A05.A0W(3);
                    this.A05.A0Z(1);
                    int iA0E3 = this.A05.A0E();
                    int iA0E4 = this.A05.A0E();
                    this.A02 = (iA0E3 & 128) != 0;
                    this.A01 = (((iA0E3 & 15) << 8) | iA0E4) + 3;
                    if (this.A05.A05() < this.A01) {
                        byte[] bArr = this.A05.A00;
                        this.A05.A0W(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(this.A01, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.A05.A00, 0, 3);
                    }
                }
            } else {
                int iMin2 = Math.min(c1062Hh.A04(), this.A01 - this.A00);
                c1062Hh.A0c(this.A05.A00, this.A00, iMin2);
                int i4 = this.A00 + iMin2;
                this.A00 = i4;
                int i5 = this.A01;
                if (i4 != i5) {
                    continue;
                } else {
                    if (!this.A02) {
                        this.A05.A0W(i5);
                    } else {
                        if (C1078Hx.A09(this.A05.A00, 0, this.A01, -1) != 0) {
                            this.A03 = true;
                            return;
                        }
                        this.A05.A0W(this.A01 - 4);
                    }
                    this.A04.A4O(this.A05);
                    this.A00 = 0;
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0953Cv
    public final void A8g(C1074Ht c1074Ht, InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        this.A04.A8g(c1074Ht, interfaceC0922Bc, c0952Cu);
        this.A03 = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0953Cv
    public final void AEv() {
        this.A03 = true;
    }
}
