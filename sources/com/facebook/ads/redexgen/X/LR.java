package com.facebook.ads.redexgen.X;

import com.facebook.ads.VideoStartReason;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class LR {
    public static EnumC1267Pj A00(VideoStartReason videoStartReason) {
        switch (LQ.A00[videoStartReason.ordinal()]) {
            case 1:
                return EnumC1267Pj.A02;
            case 2:
                return EnumC1267Pj.A03;
            case 3:
                return EnumC1267Pj.A04;
            default:
                return EnumC1267Pj.A03;
        }
    }
}
