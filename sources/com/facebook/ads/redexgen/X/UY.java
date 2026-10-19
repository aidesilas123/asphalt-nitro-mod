package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class UY implements NK {
    public static String[] A01 = {"PnhhxO44eyGR", "6RYeLXmAClA1SiGKn201px", "WqNcg2MFF", "kFMGwY5yNNV", "mQRpAL1oxGJgw", "Eqf6jMIzeI3tCjJb", "9imsVe3tjkVzhTosgYrmf1lKW7QE2MSM", "NRYl8cTHkwcGHXULnCD2cakkWnkUWd4e"};
    public final /* synthetic */ UV A00;

    public UY(UV uv) {
        this.A00 = uv;
    }

    @Override // com.facebook.ads.redexgen.X.NK
    public final void ABX(boolean z) {
        this.A00.A0D.set(z);
        if (!this.A00.A0E.get() || this.A00.A02 == null) {
            return;
        }
        UV uv = this.A00;
        String[] strArr = A01;
        if (strArr[5].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        A01[2] = "moHDWw2Q1";
        uv.A02.ACK(z);
    }
}
