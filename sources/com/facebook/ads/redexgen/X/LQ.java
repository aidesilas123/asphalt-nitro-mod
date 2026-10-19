package com.facebook.ads.redexgen.X;

import com.facebook.ads.VideoStartReason;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public /* synthetic */ class LQ {
    public static final /* synthetic */ int[] A00;

    static {
        int[] iArr = new int[VideoStartReason.values().length];
        A00 = iArr;
        try {
            iArr[VideoStartReason.AUTO_STARTED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            A00[VideoStartReason.NOT_STARTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            A00[VideoStartReason.USER_STARTED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
