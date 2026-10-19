package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1425Vm implements InterfaceC0998Et {
    public static String[] A03 = {"2iJQWlRsUDoPLtxxhE0wL9Cx9C7nOBrU", "oJgjoNY6hjjHJmelHDlI5xZuIY2b67h", "lPiJTezOZt4yDoox6bX3l7R6F2XzCVNN", "wrWzKGBonHGMzL1uPVOM3eUURFaMzKwB", "aBcbXNoo2m3wtFqQFSiOk3RFoevM7GVG", "GcCP7ZOQcwM7LeXwSBQclRy3S6aYmmD", "JUPsbTU3PQNYOt9vjPoPUzbQPtEFF22Q", "21kt6KXNgOdDUktVBInrV9GyhB6eLfYq"};
    public boolean A00;
    public final InterfaceC0998Et A01;
    public final /* synthetic */ BW A02;

    public C1425Vm(BW bw, InterfaceC0998Et interfaceC0998Et) {
        this.A02 = bw;
        this.A01 = interfaceC0998Et;
    }

    public final void A00() {
        this.A00 = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0998Et
    public final boolean A90() {
        return !this.A02.A03() && this.A01.A90();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0998Et
    public final void AA2() throws IOException {
        this.A01.AA2();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0998Et
    public final int AEC(C9X c9x, XE xe, boolean z) {
        if (this.A02.A03()) {
            return -3;
        }
        if (this.A00) {
            xe.A02(4);
            return -4;
        }
        int iAEC = this.A01.AEC(c9x, xe, z);
        if (iAEC == -5) {
            Format format = c9x.A00;
            if (format.A06 != 0 || format.A07 != 0) {
                c9x.A00 = format.A0G(this.A02.A01 != 0 ? 0 : format.A06, this.A02.A00 == Long.MIN_VALUE ? format.A07 : 0);
            }
            return -5;
        }
        if (this.A02.A00 == Long.MIN_VALUE || ((iAEC != -4 || xe.A00 < this.A02.A00) && !(iAEC == -3 && this.A02.A68() == Long.MIN_VALUE))) {
            return iAEC;
        }
        xe.A07();
        xe.A02(4);
        this.A00 = true;
        return -4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0998Et
    public final int AFd(long j) {
        if (!this.A02.A03()) {
            return this.A01.AFd(j);
        }
        if (A03[7].charAt(6) == 'T') {
            throw new RuntimeException();
        }
        A03[0] = "I7Vle9theSHJs2vfg5SYnPGKFT8j8RVM";
        return -3;
    }
}
