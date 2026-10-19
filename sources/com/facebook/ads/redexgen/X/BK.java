package com.facebook.ads.redexgen.X;

import android.os.Looper;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import com.facebook.ads.redexgen.X.BL;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public interface BK<T extends BL> {
    BJ<T> A2X(Looper looper, DrmInitData drmInitData);

    boolean A46(DrmInitData drmInitData);

    void AEU(BJ<T> bj);
}
