package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class V3 implements InterfaceC1033Gc {
    public static String[] A04 = {"X6WlBdbGeBIUy9RcgyD1kPyvMH5gl65h", "mWixtdhRvEEOtO49Z6LrUITCnd", "19dVuEeyHaOsnSLi", "Fh0FDziHvuuc46M8RjDn", "TMNOdV", "BntQd7XboiQ5Pp5LCDj1cbVKSXS32D1x", "NrlP0Z8V9f9J6rKzzcCufZh8yiDjfbRh", "BOidXQkRBMfwkg7VYmAkrOpgeHcKVKv0"};
    public long A00;
    public boolean A01;
    public final InterfaceC1031Ga A02;
    public final InterfaceC1033Gc A03;

    public V3(InterfaceC1033Gc interfaceC1033Gc, InterfaceC1031Ga interfaceC1031Ga) {
        this.A03 = (InterfaceC1033Gc) HI.A01(interfaceC1033Gc);
        this.A02 = (InterfaceC1031Ga) HI.A01(interfaceC1031Ga);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        return this.A03.A85();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws IOException {
        long jADb = this.A03.ADb(c1037Gg);
        this.A00 = jADb;
        if (jADb == 0) {
            return 0L;
        }
        if (c1037Gg.A02 == -1 && this.A00 != -1) {
            c1037Gg = new C1037Gg(c1037Gg.A04, c1037Gg.A01, c1037Gg.A03, this.A00, c1037Gg.A05, c1037Gg.A00);
        }
        this.A01 = true;
        this.A02.ADd(c1037Gg);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws IOException {
        try {
            this.A03.close();
            if (this.A01) {
                this.A01 = false;
                this.A02.close();
            }
        } catch (Throwable th) {
            boolean z = this.A01;
            if (A04[5].charAt(29) != 'a') {
                A04[1] = "CXpRjqYaQVmivrsYVOmY1oz";
                if (z) {
                    this.A01 = false;
                    InterfaceC1031Ga interfaceC1031Ga = this.A02;
                    if (A04[1].length() != 2) {
                        A04[5] = "FmRI3fMemMJaQGBcEYhbAky7hUfnuUR1";
                        interfaceC1031Ga.close();
                    }
                }
                throw th;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.A00 == 0) {
            return -1;
        }
        int i3 = this.A03.read(bArr, i, i2);
        if (i3 > 0) {
            this.A02.write(bArr, i, i3);
            long j = this.A00;
            if (j != -1) {
                this.A00 = j - ((long) i3);
            }
        }
        return i3;
    }
}
