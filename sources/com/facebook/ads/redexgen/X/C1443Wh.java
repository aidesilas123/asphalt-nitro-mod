package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1443Wh implements C3 {
    public static String[] A05 = {"YO3Mv", "DxVAQWWu8j9i6k1h5ZfxybzoYJdsy2xl", "vXk7alCMSJGdJNe2n8WQkC5NRefPTIq", "ZV", "S8Uid7BWM3mGwyARzsRqwPOCPslD34Eg", "BP", "k4eI01zMPbHAOvERg49f6jW6RoPQTjCj", "LVriLWZDKqqvbv6paz1EHGa9qDGzRuUD"};
    public int A00;
    public int A01;
    public final int A02;
    public final int A03;
    public final C1062Hh A04;

    public C1443Wh(C1445Wj c1445Wj) {
        C1062Hh c1062Hh = c1445Wj.A00;
        this.A04 = c1062Hh;
        c1062Hh.A0Y(12);
        this.A02 = c1062Hh.A0H() & 255;
        this.A03 = c1062Hh.A0H();
    }

    @Override // com.facebook.ads.redexgen.X.C3
    public final int A7g() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.C3
    public final boolean A8s() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C3
    public final int AEF() {
        int i = this.A02;
        if (i == 8) {
            return this.A04.A0E();
        }
        if (i == 16) {
            C1062Hh c1062Hh = this.A04;
            if (A05[4].charAt(8) == 'Z') {
                throw new RuntimeException();
            }
            A05[2] = "dItPwdgOkLJrEcAMKiFMJfVFB7ycDui";
            return c1062Hh.A0I();
        }
        int i2 = this.A01;
        this.A01 = i2 + 1;
        if (i2 % 2 != 0) {
            return this.A00 & 15;
        }
        int iA0E = this.A04.A0E();
        this.A00 = iA0E;
        return (iA0E & PsExtractor.VIDEO_STREAM_MASK) >> 4;
    }
}
