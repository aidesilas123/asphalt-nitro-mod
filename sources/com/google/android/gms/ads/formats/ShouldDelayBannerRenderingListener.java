package com.google.android.gms.ads.formats;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepName;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface ShouldDelayBannerRenderingListener {
    @KeepName
    @Deprecated
    boolean shouldDelayBannerRendering(@NonNull Runnable runnable);
}
