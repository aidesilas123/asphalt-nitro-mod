package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0t, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06690t {
    public static InterfaceC06640o A00;

    public final InterfaceC06640o A00(YA ya, AdPlacementType adPlacementType) {
        InterfaceC06640o interfaceC06640o = A00;
        if (interfaceC06640o != null) {
            return interfaceC06640o;
        }
        switch (C06680s.A00[adPlacementType.ordinal()]) {
            case 1:
                return new C1584ak();
            case 2:
                return new C1583aj();
            case 3:
                return new C1581ah(ya);
            case 4:
                return new FD(ya);
            case 5:
                return new FA();
            default:
                return null;
        }
    }
}
