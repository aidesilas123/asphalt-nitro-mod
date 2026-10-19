package com.facebook.ads.redexgen.X;

import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1071Hq implements Comparator<C1072Hr> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compare(C1072Hr c1072Hr, C1072Hr c1072Hr2) {
        if (c1072Hr.A00 < c1072Hr2.A00) {
            return -1;
        }
        return c1072Hr2.A00 < c1072Hr.A00 ? 1 : 0;
    }
}
