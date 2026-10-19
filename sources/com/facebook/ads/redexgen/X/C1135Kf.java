package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1135Kf {
    public static AdError A00(JG jg) {
        return jg.A03().isPublicError() ? new AdError(jg.A03().getErrorCode(), jg.A04()) : new AdError(AdErrorType.UNKNOWN_ERROR.getErrorCode(), AdErrorType.UNKNOWN_ERROR.getDefaultErrorMessage());
    }
}
