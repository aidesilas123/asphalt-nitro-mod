package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroup;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class VN extends GR {
    public static String[] A01 = {"JXADnguvwbjBsYgslHoSHgr2xxMnawNn", "", "jNEAQ3UZ70aM1hHDYV2CS20ieNSkmYbb", "bnkACY5tQbsoiCdyBJgaOjSRI0w0kmrQ", "gVGuKveDeddXJzh5PaouiQlIwgfOoZnh", "qzMEUGGJ0FpDLYRljtzJ24rj8XT6rBKz", "LijUR", "ZVB7ZDT4TSe2rtQPBLBW6RwhtV59NTLq"};
    public GM A00;

    public static int A0Q(InterfaceC08879s[] interfaceC08879sArr, TrackGroup trackGroup) throws C9K {
        int length = interfaceC08879sArr.length;
        int i = 0;
        for (int i2 = 0; i2 < interfaceC08879sArr.length; i2++) {
            InterfaceC08879s interfaceC08879s = interfaceC08879sArr[i2];
            for (int i3 = 0; i3 < trackGroup.A01; i3++) {
                int iAFt = interfaceC08879s.AFt(trackGroup.A01(i3)) & 7;
                if (iAFt > i) {
                    length = i2;
                    i = iAFt;
                    if (i == 4) {
                        return length;
                    }
                }
            }
        }
        return length;
    }

    public static int[] A0R(InterfaceC08879s interfaceC08879s, TrackGroup trackGroup) throws C9K {
        int[] iArr = new int[trackGroup.A01];
        for (int i = 0; i < trackGroup.A01; i++) {
            iArr[i] = interfaceC08879s.AFt(trackGroup.A01(i));
        }
        return iArr;
    }

    public static int[] A0S(InterfaceC08879s[] interfaceC08879sArr) throws C9K {
        int[] iArr = new int[interfaceC08879sArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = interfaceC08879sArr[i].AFv();
        }
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    @Override // com.facebook.ads.redexgen.X.GR
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.GS A0T(com.facebook.ads.redexgen.X.InterfaceC08879s[] r13, com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray r14) throws com.facebook.ads.redexgen.X.C9K {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VN.A0T(com.facebook.ads.redexgen.X.9s[], com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray):com.facebook.ads.redexgen.X.GS");
    }

    @Override // com.facebook.ads.redexgen.X.GR
    public final void A0U(Object obj) {
        this.A00 = (GM) obj;
    }

    public abstract Pair<C08889t[], GO[]> A0V(GM gm, int[][][] iArr, int[] iArr2) throws C9K;
}
